using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Text;

public class glob
{
    public string mm;
    public int passs,m,m1;
    
   public OleDbConnection con = new OleDbConnection();
   public OleDbDataReader dr;
   public OleDbCommand cd;
	public void connect()
	{
        con.ConnectionString = "Provider=MSDAORA;User Id=scott;Password=tiger;Data Source=orcl";
        con.Open();
	}
    public void getdate()
    {
        int i;
        string h = null;
        int z = DateTime.Now.Day;
        int y = DateTime.Now.Month - 1;
        int s = DateTime.Now.Year;
        string[] my = { "jan", "feb", "mar", "apl", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec" };
        for (i = 0; i < my.Length; i++)
        {
            if (y == i)
            {
                h = my[i];
            }


        }
         mm = z + "-" + h + "-" + s;
    
    }
    public void getbalance(string a)
    {
        
        string b = "select * from balsheet where accountno='"+a+"'";
        cd = new OleDbCommand(b, con);
        dr = cd.ExecuteReader();
        while (dr.Read())
        {
            m = int.Parse(dr.GetValue(1).ToString());
        }
    }
        public string randomstring(int size)
        {
            StringBuilder builder = new StringBuilder();
            Random random = new Random();
            char ch;
            for(int i=0;i<size;i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
                builder.Append(ch);
            }
            return builder.ToString();
            
           
        }
    
    
    
    
    
}