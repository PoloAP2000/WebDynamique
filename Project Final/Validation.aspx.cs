using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Validation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void checkEvenNumber(object source, ServerValidateEventArgs args)
    {
        if (Convert.ToInt16(args.Value) % 2 == 0)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
}