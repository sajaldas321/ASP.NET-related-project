using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Defaulterrr : System.Web.UI.Page
{
    int m;
    glob g = new glob();
    protected void Page_Load(object sender, EventArgs e)
    {
        g.connect();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = "select * from complain,account where complain.accountno=account.accountno ";
        g.cd = new OleDbCommand(a, g.con);
        g.dr = g.cd.ExecuteReader();
        GridView1.DataSource = g.dr;
        GridView1.DataBind();
         
    }
}