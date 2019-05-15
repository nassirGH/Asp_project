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
    public partial class formlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string uid = TextBox1.Text;
            string pass = TextBox2.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            if (TextBox1.Text == "5555" && TextBox2.Text == "0000")
            {
                Session["username"] = "5555";
                Session["type"] = "Admin";
                //  Response.Redirect("Adminstration.aspx");
                Response.Redirect("Welcome Animation.aspx");
            }
            else
            {
                try
                {
                    con.Open();
                    Session["type"] ="Teacher";
                    Session["username"] = TextBox1.Text;
                    string qry1 = "select * from Teachers where Email='" + uid + "' and Password ='" + pass + "'";

                    SqlCommand cmd1 = new SqlCommand(qry1, con);

                    SqlDataReader sdr1 = cmd1.ExecuteReader();

                    if (sdr1.Read())
                    {

                        // Response.Redirect("Teacher Page.aspx");
                        Response.Redirect("Welcome Animation.aspx");
                    }


                    con.Close();

                }
                catch (SqlException ex)
                {
                    Response.Write("<script>alert('wrong password or username')</script>");
                }
            }
          /////////////////////////////////////////////***********************************
            try
            {
                Session["username"] = TextBox1.Text;
                Session["type"] = "Student";
                con.Open();
                string qry = "select * from Contact where ID_Number='" + uid + "' and Password ='" + pass + "'";

                SqlCommand cmd = new SqlCommand(qry, con);

                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {

                    Response.Redirect("Welcome Animation.aspx");
                }

                con.Close();
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('wrong password or username')</script>");
            }
        }

            //Teacher login ******************************************************


          



        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}