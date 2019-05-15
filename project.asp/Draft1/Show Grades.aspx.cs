using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft1
{
    public partial class Show_Grades : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        string str;

        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView gv = new GridView();

            string user = Session["username"].ToString();

            Label2.Text = user;
            SqlConnection con = new SqlConnection(strConnString);

            con.Open();

            str = "select * from Grades where StudentID='" + Session["username"].ToString()+ "'";

            com = new SqlCommand(str,con);
            com.ExecuteNonQuery();

            con.Close();
            Label1.Text = user;
           
        }
    

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Reg_Courses(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Course Registration.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("formlog.aspx");
        }
    }
}