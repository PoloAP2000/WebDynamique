using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Write(GridView1.SelectedRow.Cells[1].Text);
        DetailsView1.PageIndex = GridView1.SelectedIndex + GridView1.PageSize * GridView1.PageIndex;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox txtRaise;

        foreach(GridViewRow row in GridView1.Rows)
        {
            txtRaise = (TextBox)row.FindControl("txtRaise");
            Response.Write("update emp set sal = sal + " + txtRaise.Text + " where empno = " + row.Cells[1].Text + ";<br>");
        }
    }
}