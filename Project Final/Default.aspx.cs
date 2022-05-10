using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write(Calendar1.SelectedDate.ToShortDateString());
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            Calendar1.SelectedDate = Convert.ToDateTime(TextBox1.Text);
            Calendar1.VisibleDate = Convert.ToDateTime(TextBox1.Text);
        }
    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
         if (e.PostBackValue == "PBV")
            Label1.Text = "post back value";
    }
}