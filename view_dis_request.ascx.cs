using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_dis_request : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from adm_req where status=@a";
        cmd.Parameters.AddWithValue("@a", "pending");
        SqlDataReader dr = db.reader(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}