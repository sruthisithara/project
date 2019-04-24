using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_chem_request1 : System.Web.UI.UserControl
{
    string a = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select *from chem_req where req_no=@a ";
        cmd.Parameters.AddWithValue("@a", a);
        SqlDataReader dr = db.reader(cmd);
        if (dr.Read())
        {
            TextBox1.Text = dr.GetString(0);
            TextBox2.Text = dr.GetString(2);
            TextBox3.Text = dr.GetString(3);
            TextBox4.Text = dr.GetString(4);
            TextBox5.Text = dr.GetString(5);
            TextBox6.Text = dr.GetString(6);
            TextBox8.Text = dr.GetString(1);
            TextBox7.Text = dr.GetDateTime(7).ToString();



        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["r11"] = TextBox1.Text;
        Session["r21"] = TextBox2.Text;
        Session["r31"] = TextBox3.Text;
        Session["r41"] = TextBox4.Text;
        Session["r51"] = TextBox5.Text;
        Session["r61"] = TextBox6.Text;
        Session["r71"] = TextBox7.Text;
        Session["r81"] = TextBox8.Text;

        Response.Redirect("chem_req_accept.aspx");
    }
}