using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_chemistascx : System.Web.UI.UserControl
{

    int a = 0, x = 0;
    string s = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select cid from param ";
        SqlDataReader dr = db.reader(cmd);
        if (dr.Read())
        {
            a = dr.GetInt32(0);
            x = a + 1;
            s = "chemist" + x.ToString();
            TextBox1.Text = s;
        }
        string r1 = Session["uid"].ToString();
        TextBox2.Text = r1;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "insert into chemist values(@a,@b,@c,@d,@e,@f,@g,@h,@i)";
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", TextBox2.Text);
        cmd.Parameters.AddWithValue("@c", TextBox3.Text);
        cmd.Parameters.AddWithValue("@d", TextBox4.Text);
        cmd.Parameters.AddWithValue("@e", TextBox5.Text);

        cmd.Parameters.AddWithValue("@f", TextBox6.Text);
        cmd.Parameters.AddWithValue("@g", TextBox7.Text);
        cmd.Parameters.AddWithValue("@h", TextBox8.Text);
        cmd.Parameters.AddWithValue("@i", "ok");
        db.execute(cmd);
        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "update param set cid=@a";
        cmd1.Parameters.AddWithValue("@a", x);
        db.execute(cmd1);
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into login values(@a,@b,@c)";
        cmd2.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@b", TextBox5.Text);
        cmd2.Parameters.AddWithValue("@c", "chemist");
        db.execute(cmd2);
        Response.Redirect("add_chemist.aspx");

    }
}