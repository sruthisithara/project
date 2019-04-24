using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String u = TextBox1.Text;
        String p = TextBox2.Text;
        dbcon db1 = new dbcon();
        Session["uid"] = u;
        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "select * from login where username=@a AND password=@b ";
        cmd1.Parameters.AddWithValue("@a", u);
        cmd1.Parameters.AddWithValue("@b", p);
        SqlDataReader dr1 = db1.reader(cmd1);
        String type="";
        while (dr1.Read())
        {
            type = dr1.GetString(2);
        }
        
            if (type.Equals("admin"))
            {
                Response.Redirect("admin.aspx");

            }
            else if (type.Equals("distributor"))
            {
                Response.Redirect("distributor.aspx");
            }
            else if (type.Equals("chemist"))
            {
                Response.Redirect("chemist.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        


    }
}