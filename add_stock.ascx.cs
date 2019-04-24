using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_stock : System.Web.UI.UserControl
{
    int a = 0;
    int x = 0;
    string s = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        dbcon db1 = new dbcon();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select bid from param ";
        SqlDataReader dr = db1.reader(cmd);
        if (dr.Read())
        {
            a = dr.GetInt32(0);
            x = a + 1;
            s = "batch" + x.ToString();
            TextBox1.Text = s;

        }

        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "select * from product ";
        SqlDataReader dr1 = db1.reader(cmd1);
       
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
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into product_batch values(@a,@b,@c,@d,@e)";
        cmd2.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@b", DropDownList1.SelectedItem.Text);
       
        cmd2.Parameters.AddWithValue("@c", Calendar1.SelectedDate);
        cmd2.Parameters.AddWithValue("@d", Calendar2.SelectedDate);
        cmd2.Parameters.AddWithValue("@e", "ok");

       
        db.execute(cmd2);
        SqlCommand cmd3 = new SqlCommand();

        cmd3.CommandText = "update param set bid=@a";
        cmd3.Parameters.AddWithValue("@a", x);
        db.execute(cmd3);
        Response.Redirect("add_stock.aspx");



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToString("d-M-yyyy");
        TextBox3.Visible = true;
        Calendar1.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox4.Text = Calendar2.SelectedDate.ToString("d-M-yyyy");
        TextBox4.Visible = true;
        Calendar2.Visible = false;
    }
}