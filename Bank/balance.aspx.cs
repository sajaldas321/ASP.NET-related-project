using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class balance : System.Web.UI.Page
{
    int m;
    glob g = new glob();
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
     
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Literal10.Text != " ")
        {
            Literal10.Text = null;
        }
        //string x = "select * from account,balsheet where account.accountno='" + DropDownList1.Text + "'and balsheet.accountno='" + DropDownList1.Text + "'";
        //g.cd = new OleDbCommand(x, g.con);
        //g.dr = g.cd.ExecuteReader();
        ////DataList1.DataSource = g.dr;
        ////DataList1.DataBind();
        
        string x1 = "select * from account,balsheet where account.accountno='" + DropDownList1.Text + "'and balsheet.accountno='" + DropDownList1.Text + "'";
        g.cd = new OleDbCommand(x1, g.con);
        g.dr = g.cd.ExecuteReader();
        
        while (g.dr.Read())
        {
            Literal2.Text = g.dr.GetValue(0).ToString();
            Literal3.Text = g.dr.GetValue(1).ToString();
            Literal4.Text = g.dr.GetValue(2).ToString();
            Literal5.Text = g.dr.GetValue(3).ToString();
            Literal6.Text = g.dr.GetValue(4).ToString();
            Literal7.Text = g.dr.GetValue(5).ToString();
            Literal9.Text = "<img src=" + g.dr.GetValue(6).ToString() + " style=width:400px;height:250px>";
              
            //g.dr.GetValue(1) + "</td><td>" + g.dr.GetValue(2) + "</td><td>" + g.dr.GetValue(3) + "</td><td>" + g.dr.GetValue(4) + "</td><td>" + g.dr.GetValue(5) + "</td><td align=center>" + "<img src=" + g.dr.GetValue(6).ToString() + " style=width:250px;height:250px></td><td>" + g.dr.GetValue(8).ToString() + "</td></table>";
        //<img src="upload/NNNN.PNG">
        }

        string aa1 = "select  sum(amount) from transfer where transfer.accountno='" + DropDownList1.Text + "'";
       g.cd = new OleDbCommand(aa1, g.con);
        g.dr=g.cd.ExecuteReader();
        while (g.dr.Read())
        {
            Literal14.Text = g.dr.GetValue(0).ToString();
        }

        string aa2 = "select  sum(withdrawn) from withdrawsheet where accountno='" + DropDownList1.Text + "'";
        g.cd = new OleDbCommand(aa2, g.con);
        g.dr = g.cd.ExecuteReader();
        while (g.dr.Read())
        {
            Literal12.Text = g.dr.GetValue(0).ToString();
        }

        string aa3 = "select  sum(deposited) from deposit where accountno='" + DropDownList1.Text + "'";
        g.cd = new OleDbCommand(aa3, g.con);
        g.dr = g.cd.ExecuteReader();
        while (g.dr.Read())
        {
            Literal13.Text = g.dr.GetValue(0).ToString();
        }


        }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            string b = "insert into complain values('" + Literal2.Text + "','" + TextBox1.Text + "')";
            g.cd = new OleDbCommand(b, g.con);
            g.cd.ExecuteNonQuery();
            Literal10.Text = "<center><h2><font color=red>Accountholder: " + Literal3.Text + " with account no:" + Literal2.Text + " is successfully been lodged with a complain</font></h2></center>";
    
        }
        else 
        { 
        
        }
    }
}


  
