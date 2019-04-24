using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_product : System.Web.UI.UserControl
{
    int a=0,x=0;
    string s="";
    protected void Page_Load(object sender, EventArgs e)
    {
            dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select pid from param ";
        SqlDataReader dr = db.reader(cmd);
        if (dr.Read())
        {
            a = dr.GetInt32(0);
            x = a + 1;
            s = "product" + x.ToString();
            TextBox1.Text = s;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "insert into product values(@a,@b,@c,@d,@e,@f)";
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", TextBox2.Text);
        cmd.Parameters.AddWithValue("@c", TextBox3.Text);
        cmd.Parameters.AddWithValue("@d", TextBox4.Text);
        cmd.Parameters.AddWithValue("@e", TextBox5.Text);
       
        cmd.Parameters.AddWithValue("@f", "~/images/" + FileUpload1.FileName);
        db.execute(cmd);
        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "update param set pid=@a";
        cmd1.Parameters.AddWithValue("@a", x);
        db.execute(cmd1);
        Response.Redirect("add_product.aspx");




    }
}