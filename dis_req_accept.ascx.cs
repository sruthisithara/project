using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class dis_req_accept : System.Web.UI.UserControl
{
    int a = 0, x = 0;
    string s = "",h1="";
    protected void Page_Load(object sender, EventArgs e)
    {
        string r3 = Session["r3"].ToString();

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
        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "select * from product_batch where pid=@a";
        cmd1.Parameters.AddWithValue("@a", r3);
        SqlDataReader dr1 = db.reader(cmd1);

        while (dr1.Read())
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add(dr1.GetString(0));
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "insert into adm_allot1 values(@a,@b,@c,@d,@e,@f,@g,@h,@i)";
        string r1 = Session["r1"].ToString();
        string r2 = Session["r2"].ToString();
        string r31 = Session["r3"].ToString();
        string r4 = Session["r4"].ToString();
        string r5 = Session["r5"].ToString();
        string r6 = Session["r6"].ToString();
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", r1);
        cmd.Parameters.AddWithValue("@c", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@d", r31);
        cmd.Parameters.AddWithValue("@e", r4);
        cmd.Parameters.AddWithValue("@f", r5);
        cmd.Parameters.AddWithValue("@g", r6);
        cmd.Parameters.AddWithValue("@h", TextBox3.Text);
        cmd.Parameters.AddWithValue("@i", r2);

       
        db.execute(cmd);


        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "update param set al_no=@a";
        cmd1.Parameters.AddWithValue("@a", x);
        db.execute(cmd1);
        SqlCommand cmd5 = new SqlCommand();

        cmd5.CommandText = "update adm_req set status=@a where req_no=@b";
        cmd5.Parameters.AddWithValue("@a", "accept");
        cmd5.Parameters.AddWithValue("@b", r1);
        db.execute(cmd5);
        Response.Redirect("view_dis_request.aspx");


    }
}