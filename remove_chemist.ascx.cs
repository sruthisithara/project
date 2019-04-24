using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class remove_chemist : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();
        string r3 = Session["uid"].ToString();
        
        cmd.CommandText = "select * from chemist where area_code=@a";
        cmd.Parameters.AddWithValue("@a", r3);
        SqlDataReader dr = db.reader(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}