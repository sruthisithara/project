using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dbcon
/// </summary>
public class dbcon
{
    
    //public SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\sam\alpha1\App_Data\alpha2.mdf;Integrated Security=True;User Instance=True");
    public SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\alpha1\App_Data\alpha2.mdf;Integrated Security=True;User Instance=True");
    public void execute(SqlCommand cmd)
    {
        if (cn.State == ConnectionState.Open)
        {
            cn.Close();
        }
        cmd.Connection = cn;
        cn.Open();
        cmd.ExecuteNonQuery();

    }
    public SqlDataReader reader(SqlCommand cmd)
    {
        if (cn.State == ConnectionState.Open)
        {
            cn.Close();
        }
        cmd.Connection = cn;
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        return dr;
    }
}