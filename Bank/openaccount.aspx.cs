using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class _Default : System.Web.UI.Page
{
    int gcount;
    int m;
    glob g = new glob();
    protected void Page_Load(object sender, EventArgs e)
    {
        g.connect();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            Boolean FileOk = false;
            string path = Server.MapPath("~/upload/");
            
            if (FileUpload1.HasFile)
            {
                string FileEx = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                string[] alex = { ".pdf", ".jpeg", ".png", ".jpg" };
                for (int i = 0; i < alex.Length; i++)
                {
                    if (FileEx == alex[i])
                    {
                        
                            FileOk = true;

                        
                    }

                }

            }
            if (FileOk == true)
            {
                string cc = "select count(*)+1 from account";
                g.cd = new OleDbCommand(cc, g.con);
                g.dr = g.cd.ExecuteReader();
                while (g.dr.Read())
                {
                    gcount = int.Parse(g.dr.GetValue(0).ToString());
                }
                    Random v = new Random();
                    string passs = g.randomstring(4) + v.Next(1000, 9999).ToString()+gcount.ToString();
                    string extpath = System.IO.Path.GetExtension(FileUpload1.FileName);
                    FileUpload1.PostedFile.SaveAs(path+passs+extpath);
                    Literal1.Text = "<a href=upload/" + passs+extpath +"><img src=upload/" +passs+extpath+ " style=width:250px;height:250px></a>";
                    string a = "insert into account values('" + passs + "'," + "'" + TextBox6.Text + "','" + TextBox7.Text + "'," + TextBox8.Text + "," + TextBox9.Text + ",'" + DropDownList2.Text + "','upload/"+passs+extpath+"')";
                    g.cd = new OleDbCommand(a, g.con);
                    g.cd.ExecuteNonQuery();
                    string b = "insert into balsheet(accountno,balance) values('" + passs + "'," + TextBox9.Text + ")";
                    g.cd = new OleDbCommand(b, g.con);
                    g.cd.ExecuteNonQuery();
                    Label1.Text = "<font color=red>User " + TextBox6.Text + " has been successfully registered with account no:" + passs+"</font>";
    
            }
            else
            {
                Literal1.Text = "cant accept this kind of file or File is less than 500 kb" + FileOk.ToString();

            }
        }

    }
}