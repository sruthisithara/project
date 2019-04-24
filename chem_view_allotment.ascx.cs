using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class chem_view_allotment : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from chem_allot where chemist_id=@b";

        string u1 = Session["uid"].ToString();
        cmd.Parameters.AddWithValue("@b", u1);
        SqlDataReader dr = db.reader(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();

    }
}