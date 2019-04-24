using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class chem_gen_req : System.Web.UI.UserControl
{
    int a = 0, x = 0;
    string s = "", ut = "", h1 = "",ar="";
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = Session["uid"].ToString();
        string pr = Request.QueryString["id"];
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select chem_req from param ";
        SqlDataReader dr = db.reader(cmd);
        if (dr.Read())
        {
            a = dr.GetInt32(0);
            x = a + 1;
            s = "Request" + x.ToString();
            TextBox1.Text = s;
        }
        TextBox6.Text = uid.ToString();
        TextBox3.Text = pr;
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select area_code from chemist where chemist_id=@a";
        cmd2.Parameters.AddWithValue("@a", uid);
        SqlDataReader dr2 = db.reader(cmd2);
        if (dr2.Read())
        {
            ar = dr2.GetString(0);
            TextBox2.Text = ar;
        }
        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "select unit_price from product where product_code=@a";
        cmd1.Parameters.AddWithValue("@a", pr);
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

        cmd2.CommandText = "insert into chem_req values(@a,@b,@c,@d,@e,@f,@g,@h,@i)";
        cmd2.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@b", TextBox6.Text);
        cmd2.Parameters.AddWithValue("@c", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@d", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@e", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@f", TextBox5.Text);

        cmd2.Parameters.AddWithValue("@g", n3.ToString());
        cmd2.Parameters.AddWithValue("@h", TextBox7.Text);
        cmd2.Parameters.AddWithValue("@i", "pending");


        db.execute(cmd2);
        SqlCommand cmd3 = new SqlCommand();

        cmd3.CommandText = "update param set chem_req=@a";
        cmd3.Parameters.AddWithValue("@a", x);
        db.execute(cmd3);

        Response.Redirect("chem_view_medicine.aspx");

    }
}