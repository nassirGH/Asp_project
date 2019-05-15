using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft1
{
    public partial class Welcome_Animation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if ((String)Session["type"] == "Admin")
            {
                Response.Redirect("Adminstration.aspx");
            }

            if ((String)Session["type"] == "Teacher")
            {
                Response.Redirect("Teacher Page.aspx");
            }
                
           if((String)Session["type"] == "Student")
            Response.Redirect("Show Grades.aspx");
        }
    }
}