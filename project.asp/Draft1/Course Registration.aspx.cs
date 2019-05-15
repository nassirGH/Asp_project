using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Draft1
{


    public partial class Course_Registration : System.Web.UI.Page
    {
        static double  a=0,  b=30,c=0;
        string user;
        string total ;
        string three = "30";
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        private string str;
        SqlCommand com;
        private SqlDataReader dr;
        private string buttondrop;
        private DataSet dataSet;
        DataTable table;
        private object MessageBox;

        protected void Page_Load(object sender, EventArgs e)
        {
            labelit();
           // credits();
            buttondrop = @"return confirm('are you sure to add this grade?');";
            if (!IsPostBack)
            {
                labelit();
                credits();
                gvbind();
            }
           
          


            user = Session["username"].ToString();
            Label4.Text = user;

            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select Major from Contact where ID_Number='" + Session["username"].ToString() + "'";
            com = new SqlCommand(str, con);

            dr = com.ExecuteReader();

            while (dr.Read())
            {
                Label5.Text = dr["Major"].ToString();
            }
            con.Close();



            con.Open();
            str = "select Number_Of_Credits from Courses where Code='" + DropDownList2.Text + "'";

            com = new SqlCommand(str, con);

            dr = com.ExecuteReader();
            while (dr.Read())
            {
                Label8.Text = dr["Number_Of_Credits"].ToString();
            }
            con.Close();


            con.Open();
            str = "select First_Name,Last_Name from Contact where ID_Number='" + Session["username"].ToString() + "'";
            com = new SqlCommand(str, con);

            dr = com.ExecuteReader();

            while (dr.Read())
            {
                Label6.Text = "Welcome " + dr["First_Name"].ToString();
            }
            con.Close();


           
        }

        protected void labelit()
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select Name from Courses where Code='" + DropDownList2.Text + "'";
            com = new SqlCommand(str, con);

            dr = com.ExecuteReader();

            while (dr.Read())
            {
                Label9.Text = dr["Name"].ToString();
            }
            con.Close();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
          credits();


            //  a = 35;
            //  b = 30;
            c = b - a;
            //Response.Write("<script>alert('"+a+"')</script>");
            if (c > 3)
            {
              
                    try{
                        //enter the number of credits from registration
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    String sql = "insert into Registered_Courses(ID,Code,C_Number,Major) values(@id,@code,@number,@name)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("id", user);
                    cmd.Parameters.AddWithValue("name", Label5.Text);
                    cmd.Parameters.AddWithValue("code", DropDownList2.Text);
                    cmd.Parameters.AddWithValue("number", Label8.Text);
                    con.Open();



                    int k = cmd.ExecuteNonQuery();
                    if (k != 0)
                    {
                        Response.Write("<script>alert('Course registered Successfully')</script>");
                      //  Label9.ForeColor = System.Drawing.Color.CornflowerBlue;
                    }
                    con.Close();
                }
                catch (SqlException exc)
                {

                    Console.WriteLine("SQL ERROR" + exc.Message.ToString());
               //     Label10.Text = "This Course is aleardy registered ";
                    Response.Write("<script>alert('This Course is aleardy registered ')</script>");
                }
            }
            else
            {
                
                    Response.Write("<script>alert('You cannot register courses of total credits more than 30')</script>");
                }
            
            gvbind();
            }
        
        protected double credits()
        {
            double income = 0;
            DataTable dt = new DataTable();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            str = "select SUM(C_Number) from Registered_Courses as income where ID='" + Session["username"].ToString() + "'";
            com = new SqlCommand(str, con);

            dr = com.ExecuteReader();

            while (dr.Read())
            {

                income = Convert.ToDouble(dr[0]);
                //  
            }
           
            con.Close();
            Label12.Text = income.ToString();
            a = income;
            if (a > b)
            {
                Button2.Enabled = false;
                Label10.Text = "Button disabled, you have been completed your registration with 30 credits ";
                Response.Write("<script>alert('you have been completed your total credits 30')</script>");
            }
            else
            {
                Button2.Enabled = true;

            }
            return a;
        }




        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            /*       if (i%2==0)
                   {

                       GridView2.Visible = true;

                   }
                   else
                   {

                       GridView2.Visible = false;

                   }
                   i++;*/
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show Grades.aspx");
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            credits();

            conn.Open();
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");

            SqlCommand cmd = new SqlCommand("delete FROM Registered_Courses where Code='" + Convert.ToString(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            gvbind();
        }
        private void gvbind()
        {
            credits();

            conn.Open();
            SqlCommand cmd = new SqlCommand("Select Code,C_Number from Registered_Courses where ID='" + Session["username"].ToString() + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            conn.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";

                table = dataSet.Tables["Registered_Courses"];

                // Declare an object variable.
                object sumObject;
                sumObject = table.Compute("Sum(C_Number)", "");
                Label12.Text = sumObject.ToString();

            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            labelit();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("formlog.aspx");
        }
    }

       }
