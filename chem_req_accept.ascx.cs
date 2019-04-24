using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class chem_req_accept : System.Web.UI.UserControl
{
    int a = 0, x = 0;
    string s = "", h1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string r3 = Session["r31"].ToString();

        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select al_no from param ";
        SqlDataReader dr = db.reader(cmd);
        if (dr.Read())
        {
            a = dr.GetInt32(0);
            x = a + 1;
            s = "Allot" + x.ToString();
            TextBox1.Text = s;
        }
        string h1 = DateTime.Today.ToString("MM/dd/yyyy");
        TextBox3.Text = h1;
        string r222 = Session["r21"].ToString();
        string r333 = Session["r31"].ToString();
        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "select * from adm_allot1 where area_code=@a and product_code=@b";
        cmd1.Parameters.AddWithValue("@a",r222 );
        cmd1.Parameters.AddWithValue("@b", r333);
        SqlDataReader dr1 = db.reader(cmd1);
        String fff = "";
        if (dr1.Read())
        {

            fff = dr1.GetString(2);
        }
        SqlCommand cmd7 = new SqlCommand();

        cmd7.CommandText = "select * from product_batch where batch_no=@a";
        cmd7.Parameters.AddWithValue("@a", fff);
        
        SqlDataReader dr7 = db.reader(cmd7);
       
        if (dr7.Read())
        {

            TextBox2.Text= dr7.GetDateTime(3).ToString();
        }
      
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "insert into chem_allot values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)";
        string r1 = Session["r11"].ToString();
        string r2 = Session["r21"].ToString();
        string r31 = Session["r31"].ToString();
        string r4 = Session["r41"].ToString();
        string r5 = Session["r51"].ToString();
        string r6 = Session["r61"].ToString();
        string r7 = Session["r81"].ToString();
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", r1);
        cmd.Parameters.AddWithValue("@c", r2);
        cmd.Parameters.AddWithValue("@d", r7);
        cmd.Parameters.AddWithValue("@e", r31);
        cmd.Parameters.AddWithValue("@f", r4);
        cmd.Parameters.AddWithValue("@g", r5);
        cmd.Parameters.AddWithValue("@h", r6);
        cmd.Parameters.AddWithValue("@i", TextBox3.Text);
        cmd.Parameters.AddWithValue("@j", TextBox2.Text);


        db.execute(cmd);


        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "update param set al_no=@a";
        cmd1.Parameters.AddWithValue("@a", x);
        db.execute(cmd1);
        SqlCommand cmd5 = new SqlCommand();

        cmd5.CommandText = "update chem_req set status=@a where req_no=@b";
        cmd5.Parameters.AddWithValue("@a", "accept");
        cmd5.Parameters.AddWithValue("@b", r1);
        db.execute(cmd5);
        Response.Redirect("view_chem_request.aspx");


    }
   
      
}