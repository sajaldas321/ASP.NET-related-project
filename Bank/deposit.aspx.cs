using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Default2 : System.Web.UI.Page
{
    glob g = new glob();
    int cou;
    protected void Page_Load(object sender, EventArgs e)
    {
        g.connect();

        if (IsPostBack == true)
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
        if (Page.IsValid == true)
        {
            g.getdate();
            g.getbalance(DropDownList1.Text);
            string c = "insert into deposit(accountno,deposited,date1) values('" + DropDownList1.Text + "'," + TextBox4.Text + ",'" + g.mm + "')";
            g.cd = new OleDbCommand(c, g.con);
            g.cd.ExecuteNonQuery();
            string d = "update balsheet set balance=" + (g.m + int.Parse(TextBox4.Text)) + "where accountno='" + DropDownList1.Text + "'";
            g.cd = new OleDbCommand(d, g.con);
            g.cd.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "<table><tr><td>Amount deposited:</td><td>" + TextBox4.Text + "</td><td>Available balance</td><td>" + (g.m + int.Parse(TextBox4.Text)) + "</td></table>";
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
                Label2.Visible = false;
                TextBox4.Visible = true;
                Button1.Visible = true;
                Literal1.Visible = true;
                string x = "select username,balance from account,balsheet where account.accountno='" + DropDownList1.Text + "' and balsheet.accountno='" + DropDownList1.Text + "'";
                g.cd = new OleDbCommand(x, g.con);
                g.dr = g.cd.ExecuteReader();

                while (g.dr.Read())
                {
                    Label2.Visible = true;
                    Label2.Text = "User:" + ((g.dr.GetValue(0)).ToString()) + " Available balance:" + ((g.dr.GetValue(1)).ToString());
                }

            }
            else
            {
               Label2.Visible = true;
               TextBox4.Visible = false;
               Button1.Visible = false;
               Literal1.Visible = false;
               Label2.Text="This user is lodged with a complain,blocking hi/her transaction";
            }
    }
}
