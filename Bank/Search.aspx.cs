using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class Search : System.Web.UI.Page
{
    glob g = new glob();
    
    string h, m;
        
    protected void Page_Load(object sender, EventArgs e)
    {
        g.connect();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(Calendar1.Visible==true)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Calendar2.Visible == true)
        {
            Calendar2.Visible = false;
        }
        else
        {
            Calendar2.Visible = true;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label3.Visible = true;
        Label4.Visible = true;
        int i,j;
        string[] my = new string[14];
         my[0] =  "jan";
         my[1] =  "feb";
         my[2] =  "mar";
         my[3] =  "apl";
         my[4] =  "may";
         my[5] =  "jun";
         my[6] =  "jul";
         my[7] =  "aug";
         my[8] =  "sep";
         my[9] =  "oct";
         my[10] =  "nov";
         my[11] =  "dec";
       
        for (i = 0; i < 12; i++)
        {
            if (Calendar1.SelectedDate.Month-1 == i)
            {
                h = my[i];
            }

        }
        for (j = 0; j < 12; j++)
        {
            if (Calendar2.SelectedDate.Month-1 == j)
            {
                m = my[j];
            }

        }
        if (DropDownList2.Text == "Deposited")
        {
            string a = "select account.username,account.accountno,deposit.deposited,deposit.date1 from account,deposit where account.accountno=deposit.accountno and date1 between '" + Calendar1.SelectedDate.Day + "-" + h + "-" + Calendar1.SelectedDate.Year + "' and '" + Calendar2.SelectedDate.Day + "-" + m + "-" + Calendar2.SelectedDate.Year + "' order by date1 desc";
            g.cd = new OleDbCommand(a, g.con);
            g.dr = g.cd.ExecuteReader();
            GridView1.DataSource = g.dr;
            GridView1.DataBind();

            string b = "select a.username,accountno,b.Totaldeposited from account a left join (select sum(deposited) as Totaldeposited,accountno from deposit group by accountno)b using (accountno) order by accountno";
            g.cd = new OleDbCommand(b, g.con);
            g.dr = g.cd.ExecuteReader();
            GridView2.DataSource = g.dr;
            GridView2.DataBind();
        
        }
        else if (DropDownList2.Text == "Withdrawn")
        {
            string a = "select account.username,account.accountno,withdrawsheet.withdrawn,withdrawsheet.date1 from account,withdrawsheet where account.accountno=withdrawsheet.accountno and date1 between '" + Calendar1.SelectedDate.Day + "-" + h + "-" + Calendar1.SelectedDate.Year + "' and '" + Calendar2.SelectedDate.Day + "-" + m + "-" + Calendar2.SelectedDate.Year + "' order by date1 desc";
            g.cd = new OleDbCommand(a, g.con);
            g.dr = g.cd.ExecuteReader();
            GridView1.DataSource = g.dr;
            GridView1.DataBind();

            string b = "select a.username,accountno,b.totalwithdraw from account a left join (select sum(withdrawn) as totalwithdraw,accountno from withdrawsheet group by accountno)b using (accountno) order by accountno";
            g.cd = new OleDbCommand(b, g.con);
            g.dr = g.cd.ExecuteReader();
            GridView2.DataSource = g.dr;
            GridView2.DataBind();
        
        
        }
        else if (DropDownList2.Text == "Transferred")
        {;
            string a = "select account.username as sender,account.accountno,transfer.targetaccount,transfer.reason,transfer.amount,transfer.date1  from account,transfer where account.accountno=transfer.accountno and date1 between '" + Calendar1.SelectedDate.Day + "-" + h + "-" + Calendar1.SelectedDate.Year + "' and '" + Calendar2.SelectedDate.Day + "-" + m + "-" + Calendar2.SelectedDate.Year + "' order by date1 desc";
            g.cd = new OleDbCommand(a, g.con);
            g.dr = g.cd.ExecuteReader();
            GridView1.DataSource = g.dr;
            GridView1.DataBind();

            string b = "select a.username,accountno,b.totaltransfer from account a left join (select sum(amount) as totaltransfer,accountno from transfer group by accountno)b using (accountno) order by accountno";
            g.cd = new OleDbCommand(b, g.con);
            g.dr = g.cd.ExecuteReader();
            GridView2.DataSource = g.dr;
            GridView2.DataBind();
        

        }
        
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label2.Visible = true;
        Label2.Text = (Calendar1.SelectedDate.Day + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Year).ToString();

        Calendar1.Visible = false;

   }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
      
        Label1.Visible = true;
        Label1.Text = (Calendar2.SelectedDate.Day + "-" + Calendar2.SelectedDate.Month + "-" + Calendar2.SelectedDate.Year).ToString();

        Calendar2.Visible = false;
    }
}