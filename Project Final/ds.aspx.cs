using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class ds : System.Web.UI.Page
{
    DataTable dt;
    SqlDataAdapter sqlAdp;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        DataSet ds = new DataSet();

        // List of departments
        string query = "select * from dept order by deptno";
        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
        sqlAdp = new SqlDataAdapter(sqlCmd);
        sqlAdp.Fill(ds,"dtDept");

        

        if (Page.IsPostBack == false)
        {
            dt = new DataTable();
            dt = ds.Tables["dtDept"];
            ViewState["dt"] = dt;
        }
            
        else
            dt = (DataTable)ViewState["dt"];

        GridView1.DataSource = dt;
        GridView1.AutoGenerateColumns = true;
        GridView1.AutoGenerateSelectButton = true;
        GridView1.DataBind();

        /*DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "dname";
        DropDownList1.DataValueField = "deptno";
        DropDownList1.DataBind();

        RadioButtonList1.DataSource = dt;
        RadioButtonList1.DataTextField = "dname";
        RadioButtonList1.DataValueField = "deptno";
        RadioButtonList1.DataBind();

        DataView dv = new DataView(dt);
        dv.RowFilter = "dname like '%e%'";
        dv.Sort = "deptno asc";
        GridView2.DataSource = dv;
        GridView2.DataBind();

        Response.Write("<b>List of departments</b><br>");
        for (int i = 0; i < dt.Rows.Count; i++)
            Response.Write("- " + dt.Rows[i]["dname"] + "<br>");
        Response.Write("<hr>");*/
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (btnAdd.Text == "Edit")
        {
            dt.Rows[GridView1.SelectedIndex]["dname"] = txtDname.Text;
            dt.Rows[GridView1.SelectedIndex]["loc"] = txtLoc.Text;
        }
        else
        {
            DataRow row = dt.NewRow();
            row["dname"] = txtDname.Text;
            row["loc"] = txtLoc.Text;
            dt.Rows.Add(row);
        }

        GridView1.DataBind();
        clearForm();
    }

    protected void clearForm()
    {
        txtDname.Text = "";
        txtLoc.Text = "";
        btnAdd.Text = "Add";
    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlCommandBuilder cmdBld = new SqlCommandBuilder(sqlAdp);
        sqlAdp.Update(dt);


        Response.Redirect("ds.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtDname.Text = dt.Rows[GridView1.SelectedIndex]["dname"].ToString();
        txtLoc.Text = dt.Rows[GridView1.SelectedIndex]["loc"].ToString();
        btnAdd.Text = "Edit";
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        dt.Rows[GridView1.SelectedIndex].Delete();
        GridView1.DataBind();
        clearForm();
    }
}