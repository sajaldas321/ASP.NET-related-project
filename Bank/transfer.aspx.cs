using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class transfer : System.Web.UI.Page
{
    int cou;
    glob g = new glob();
    protected void Page_Load(object sender, EventArgs e)
    {
        g.connect();
        if (IsPostBack==true)
        {

        }
        else
        {
            string a = "select accountno from account ";
            g.cd = new OleDbCommand(a, g.con);
            g.dr = g.cd.ExecuteReader();
            while (g.dr.Read())
            {
                DropDownList1.Items.Add((g.dr.GetValue(0)).ToString());

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid==true)
        { 
        g.getdate();
        g.getbalance(DropDownList1.Text);
        
        if (g.m<int.Parse(TextBox4.Text))
        {
            MultiView1.SetActiveView(View2);
            Label1.Text = "Amount exceed the actual amount available in ur account";
        }
        else if (g.m > int.Parse(TextBox4.Text))
        {
            string c = "insert into transfer(accountno,targetaccount,amount,reason,date1) values('" + DropDownList1.Text + "','" + DropDownList2.Text + "'," + TextBox4.Text + ",'" + TextBox5.Text + "','" + g.mm + "')";
            g.cd = new OleDbCommand(c, g.con);
            g.cd.ExecuteNonQuery();

            string d = "update balsheet set balance=" + (g.m - int.Parse(TextBox4.Text)) + " where accountno='" + DropDownList1.Text + "'";
            g.cd = new OleDbCommand(d, g.con);
            g.cd.ExecuteNonQuery();

            g.getbalance(DropDownList2.Text);

            string f = "update balsheet set balance=" + (g.m + int.Parse(TextBox4.Text)) + " where accountno='" + DropDownList2.Text + "'";
            g.cd = new OleDbCommand(f, g.con);
            g.cd.ExecuteNonQuery();
            MultiView1.SetActiveView(View2);
            Label1.Text = "Transfer completed,amount transfered:" + int.Parse(TextBox4.Text);

        }

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        string x1 = "select COUNT(*) from complain where accountno='" + DropDownList1.Text + "'";
        g.cd = new OleDbCommand(x1, g.con);
        g.dr = g.cd.ExecuteReader();
        while (g.dr.Read())
        {
            cou = int.Parse(g.dr.GetValue(0).ToString());
        }

        if (cou > 0)
        {
            Label2.Visible = true;
            Label2.Text = "This user is lodged with a complain,blocking hi/her transaction";
           
            TextBox4.Visible = TextBox5.Visible = Button1.Visible = DropDownList2.Visible = Literal2.Visible = Literal3.Visible = Literal4.Visible = false;
        }

        else
        {
            TextBox4.Visible = TextBox5.Visible = Button1.Visible = DropDownList2.Visible = Literal2.Visible = Literal3.Visible = Literal4.Visible = true;
       
            DropDownList2.Items.Clear();
            Label2.Text = null;
            DropDownList2.Visible = true;
            string a = "select accountno from account where accountno not in(select accountno from complain) and accountno!='"+DropDownList1.Text+"'";
            g.cd = new OleDbCommand(a, g.con);
            g.dr = g.cd.ExecuteReader();
            while (g.dr.Read())
            {
                DropDownList2.Items.Add((g.dr.GetValue(0)).ToString());

            }

            string x = "select username,balance from account,balsheet where account.accountno='" + DropDownList1.Text + "' and balsheet.accountno='" + DropDownList1.Text + "'";
            g.cd = new OleDbCommand(x, g.con);
            g.dr = g.cd.ExecuteReader();

            while (g.dr.Read())
            {
                Label2.Visible = true;
                Label2.Text = "User:" + ((g.dr.GetValue(0)).ToString()) + " Available balance:" + ((g.dr.GetValue(1)).ToString());
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}