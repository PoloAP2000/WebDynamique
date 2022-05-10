using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class dr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            string query = "select * from dept order by dname";
            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

            SqlDataReader dr;
            sqlCon.Open();
            dr = sqlCmd.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataTextField = "dname";
            DropDownList1.DataValueField = "deptno";
            DropDownList1.DataBind();
            sqlCon.Close();

            sqlCon.Open();
            dr = sqlCmd.ExecuteReader();
            RadioButtonList1.DataSource = dr;
            RadioButtonList1.DataTextField = "dname";
            RadioButtonList1.DataValueField = "deptno";
            RadioButtonList1.DataBind();
            sqlCon.Close();

            sqlCon.Open();
            dr = sqlCmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            sqlCon.Close();

            sqlCon.Open();
            dr = sqlCmd.ExecuteReader();
            if(dr.HasRows)
            {
                Response.Write("<b>List of departments</b><br>");
                while (dr.Read())
                    Response.Write(dr["deptno"].ToString() + " - " + dr["dname"].ToString() + "<br>");
            }
            sqlCon.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}