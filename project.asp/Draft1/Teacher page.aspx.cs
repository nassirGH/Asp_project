using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft1
{
    public partial class Teacher_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateGrades.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "insert into Courses(Code,Name,Number_Of_Credits,Major) values(@code,@name,@credits,@Major)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("code", TextBox3.Text);
                cmd.Parameters.AddWithValue("name", TextBox2.Text);
                cmd.Parameters.AddWithValue("credits", TextBox4.Text);
                cmd.Parameters.AddWithValue("Major", DropDownList1.Text);
                con.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Response.Write("<script>alert('Data inserted successfully')</script>");
                    //  Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                //ALERT
                Console.WriteLine("SQL ERROR" + ex.Message.ToString());
                Response.Write("<script>alert('This Course already exists, you can insert only new courses')</script>");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("formlog.aspx");
        }
    }
}