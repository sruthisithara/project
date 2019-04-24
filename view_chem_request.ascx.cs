using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_chem_request : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from chem_req where status=@a and area_code=@b";
        cmd.Parameters.AddWithValue("@a", "pending");
        string r3 = Session["uid"].ToString();
        
        cmd.Parameters.AddWithValue("@b", r3);
        SqlDataReader dr = db.reader(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}