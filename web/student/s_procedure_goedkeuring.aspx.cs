using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_student_s_procedure_goedkeuring : System.Web.UI.Page
{
    protected void btnBack_goedkeuring_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}