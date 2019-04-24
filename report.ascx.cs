using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class report : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();
        string h1 = DateTime.Today.ToString("MM/dd/yyyy HH:mm:ss tt");
        string r3 = Session["uid"].ToString();
        
        cmd.CommandText = "select * from chem_allot where chemist_id=@a and expire_date<@b";
        
        cmd.Parameters.AddWithValue("@a", r3);
        cmd.Parameters.AddWithValue("@b", h1);
        SqlDataReader dr = db.reader(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}