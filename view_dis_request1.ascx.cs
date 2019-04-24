using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_dis_request1 : System.Web.UI.UserControl
{
    string a = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select *from adm_req where req_no=@a ";
        cmd.Parameters.AddWithValue("@a", a);
        SqlDataReader dr = db.reader(cmd);
        if (dr.Read())
        {
            TextBox1.Text = dr.GetString(0);
            TextBox2.Text = dr.GetString(1);
            TextBox3.Text = dr.GetString(2);
            TextBox4.Text = dr.GetString(3);
            TextBox5.Text = dr.GetString(4);
            TextBox6.Text = dr.GetString(5);

            TextBox7.Text = dr.GetDateTime(6).ToString();
            


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["r1"] = TextBox1.Text;
        Session["r2"] = TextBox2.Text;
        Session["r3"] = TextBox3.Text;
        Session["r4"] = TextBox4.Text;
        Session["r5"] = TextBox5.Text;
        Session["r6"] = TextBox6.Text;
        Session["r7"] = TextBox7.Text;

        Response.Redirect("dis_req_accept.aspx");
    }
}