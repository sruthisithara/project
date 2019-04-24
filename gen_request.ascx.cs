using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class gen_request : System.Web.UI.UserControl
{
    int a = 0, x = 0;
    string s = "",ut="",h1="";
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = Session["uid"].ToString();
        string pr = Request.QueryString["id"];
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select adm_req from param ";
        SqlDataReader dr = db.reader(cmd);
        if (dr.Read())
        {
            a = dr.GetInt32(0);
            x = a + 1;
            s = "Request" + x.ToString();
            TextBox1.Text = s;
        }
        TextBox2.Text = uid.ToString();
        TextBox3.Text = pr;
         SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "select unit_price from product where product_code=@a";
        cmd1.Parameters.AddWithValue("@a",pr);
        SqlDataReader dr1 = db.reader(cmd1);
        if (dr1.Read())
        {
             ut = dr1.GetString(0);
             TextBox4.Text = ut;
        }
        string h1 = DateTime.Today.ToString("MM/dd/yyyy");
        TextBox7.Text = h1;

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        int n1 = Convert.ToInt32(TextBox4.Text);
       int n2 = Convert.ToInt32(TextBox5.Text);
        int n3 = n1 * n2;
        dbcon db = new dbcon();
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into adm_req values(@a,@b,@c,@d,@e,@f,@g,@h)";
        cmd2.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@b", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@c", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@d", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@e", TextBox5.Text);

        cmd2.Parameters.AddWithValue("@f", n3.ToString());
        cmd2.Parameters.AddWithValue("@g", TextBox7.Text);
        cmd2.Parameters.AddWithValue("@h", "pending");


        db.execute(cmd2);
        SqlCommand cmd3 = new SqlCommand();

        cmd3.CommandText = "update param set adm_req=@a";
        cmd3.Parameters.AddWithValue("@a", x);
        db.execute(cmd3);
        
        Response.Redirect("view_medicine.aspx");
       
    }
}