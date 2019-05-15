using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft1
{
    public partial class User_s_Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_btn(object sender, EventArgs e)
        {
            try {

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "insert into Contact(First_Name,Last_Name,ID_Number,Major) values(@fname,@lname,@ID,@Major)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("fname", TextBox5.Text);
                cmd.Parameters.AddWithValue("lname", TextBox6.Text);
                cmd.Parameters.AddWithValue("ID", TextBox7.Text);
                cmd.Parameters.AddWithValue("Major", DropDownList4.Text);
                con.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    //ALERT
                    Label3.Text = "Student registered Successfully";
                    Label3.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();
            }catch( SqlException ex)
            {
                //Alert
            }
            }

        protected void Submit(object sender, EventArgs e)
        {
            try {
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "insert into Teachers(Fname,Lname,Email,Password,Major,C_Code) values(@fname,@lname,@ID,@password,@Major,@Course)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("fname", TextBox8.Text);
                cmd.Parameters.AddWithValue("lname", TextBox9.Text);
                cmd.Parameters.AddWithValue("ID", TextBox10.Text);
                cmd.Parameters.AddWithValue("password", TextBox11.Text);
                cmd.Parameters.AddWithValue("Course", DropDownList5.Text);
                cmd.Parameters.AddWithValue("Major", DropDownList6.Text);
                con.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Label4.Text = "Teacher registered Successfully";
                    Label4.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();
            }catch(SqlException ex)
            {
                //ALERT
                Response.Write("<script>alert('Teacher is already registered')</script>");
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            try {
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "delete from Contact where ID_Number=@name";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("name", TextBox12.Text);

                con.Open();
                int k = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                if (k != 0)
                {
                    //ALERT
                    Label5.Text = "User deleted Successfully";
                    //  Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();

            }catch(SqlException ex)
            {
                Response.Write("<script>alert('user not found')</script>");
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            try {

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "delete from Teachers where Email=@name";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("name", TextBox13.Text);

                con.Open();
                int k = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                if (k != 0)
                {
                    //ALERT
                    Label5.Text = "User deleted Successfully";
                    //  Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();
            }catch(SqlException ex)
            {
                Response.Write("<script>alert('user not found')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminstration.aspx");
        }
    }
}