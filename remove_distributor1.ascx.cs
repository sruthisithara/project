using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class remove_distributor1 : System.Web.UI.UserControl
{
    string a = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select *from adm where area_code=@a ";
        cmd.Parameters.AddWithValue("@a", a);
        SqlDataReader dr = db.reader(cmd);
        if (dr.Read())
        {
            TextBox1.Text = dr.GetString(2);
            TextBox6.Text = dr.GetString(1);
            TextBox2.Text = dr.GetString(3);
            TextBox3.Text = dr.GetString(4);
            TextBox4.Text = dr.GetString(5);
            TextBox5.Text = dr.GetString(6);
            TextBox7.Text = dr.GetString(0);


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from adm where area_code=@a";
        cmd.Parameters.AddWithValue("@a", TextBox7.Text);
        db.execute(cmd);
        Response.Redirect("remove_distributor.aspx");
    }
}