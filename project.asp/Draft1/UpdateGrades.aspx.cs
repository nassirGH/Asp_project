using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft1
{
    public partial class UpdateGrades : System.Web.UI.Page
    {
        private string user;
        private string str;
       // private string strConnString;
        private SqlCommand com;
        private SqlDataReader dr;
         
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.OnClientClick = @"return confirm('are you sure to add this grade?');";
            Button1.OnClientClick = @"return confirm('are you sure to update this grade?');";
            string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            if (!IsPostBack)
            {
                GridView1.DataBind();
            }
            try {
                user = Session["username"].ToString();
                //   Label1.Text = user;
            }catch(SqlException ex)
            {
                Response.Redirect("formlog.aspx");
            }
            
            con.Open();
            str = "select Major from Teachers where Email='" + Session["username"].ToString() + "'";
            com = new SqlCommand(str, con);

            dr = com.ExecuteReader();

            while (dr.Read())
            {
                Label3.Text = dr["Major"].ToString();
                Label6.Text = dr["Major"].ToString();
            }
            con.Close();
         
            con.Open();
            str = "select C_Code from Teachers where Email='" + Session["username"].ToString() + "'";
            com = new SqlCommand(str, con);

            dr = com.ExecuteReader();

            while (dr.Read())
            {
               
                Label4.Text = dr["C_Code"].ToString();
                Label7.Text = dr["C_Code"].ToString();
                Label5.Text = dr["C_Code"].ToString();
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {


                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "insert into Grades(StudentID,CourseID,Mark) values(@id,@code,@grade)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("id", DropDownList1.Text);
                cmd.Parameters.AddWithValue("code", Label4.Text);
                cmd.Parameters.AddWithValue("grade", TextBox1.Text);

                con.Open();

                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Label1.Text = "Grade registered Successfully";
                    Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();
                GridView1.DataBind();
            }
            catch(SqlException ex)
            {
                Console.WriteLine("SQL ERROR" + ex.Message.ToString());
                Response.Write("<script>alert('Student has already a grade for this course,you can edit/change his grade in Update Grade')</script>");
            }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "update Grades set Mark=@grade where StudentID=@id AND CourseID=@code";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("id", DropDownList2.Text);
                cmd.Parameters.AddWithValue("code", Label7.Text);
                cmd.Parameters.AddWithValue("grade", TextBox2.Text);

                con.Open();

                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Label2.Text = "Grade updated Successfully";
                    Label2.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();
                GridView1.DataBind();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL ERROR" + ex.Message.ToString());
                Response.Write("<script>alert('Student has already a grade for this course')</script>");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateGrades.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Teacher page.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("formlog.aspx");
        }
    }
    }
    
