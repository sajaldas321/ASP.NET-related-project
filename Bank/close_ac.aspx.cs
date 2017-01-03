using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class close_ac : System.Web.UI.Page
{
    int m;
    glob g = new glob();
    protected void Page_Load(object sender, EventArgs e)
    {
        g.connect();
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string c = "delete account where accountno='" + DropDownList1.Text+"'";
        g.cd = new OleDbCommand(c, g.con);
        g.cd.ExecuteNonQuery();
        string d = "delete balsheet where accountno='" + DropDownList1.Text + "'";
        g.cd = new OleDbCommand(d, g.con);
        g.cd.ExecuteNonQuery();

        Label1.Text = "Account removed successfully";
    }
}