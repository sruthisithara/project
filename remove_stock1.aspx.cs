﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class remove_stock1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        dbcon db = new dbcon();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from product_batch where batch_no=@a";
        cmd.Parameters.AddWithValue("@a",a);
        db.execute(cmd);
        Response.Redirect("remove_stock.aspx");
    }
}