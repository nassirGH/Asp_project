using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Draft1
{
    public partial class Adminstration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            Button3.OnClientClick = @"return confirm('are you sure to delete this major ?');";
            Button1.OnClientClick = @"return confirm('are you sure to delete this course ?');";
            //   GridView1.Visible = false;
            DropDownList1.AutoPostBack = true;
            DropDownList2.AutoPostBack = true;
            DropDownList3.AutoPostBack = true;
            DropDownList4.AutoPostBack = true;
            if (!IsPostBack)
            {
               GridView1.DataBind();
                gvbind();
               
            }
        }
        private void gvbind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from Courses", conn);
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
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            try
            { SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "insert into Major(Major) values(@name)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("name", TextBox1.Text);

                con.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Response.Write("<script>alert('Major added Successfully ')</script>");
                    // Label1.Text = "Major added Successfully";
                    //  Label1.ForeColor = System.Drawing.Color.CornflowerBlue;

                }
                con.Close();
            }catch(SqlException ex)
            {
                Response.Write("<script>alert('unhandled error')</script>");
            }
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            try {
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "delete from Major where Major=@name";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("name", DropDownList1.Text);

                con.Open();
                int k = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                if (k != 0)
                {
                    //     Label1.Text = "Major deleted Successfully";
                    //  Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Response.Write("<script>alert('Major Deleted Successfully ')</script>");
                }
                con.Close();
            }catch(SqlException ex)
            {

            }
          
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try {

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sql = "insert into Courses(Code,Name,Number_Of_Credits,Major) values(@code,@name,@credits,@Major)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("code", TextBox3.Text);
                cmd.Parameters.AddWithValue("name", TextBox2.Text);
                cmd.Parameters.AddWithValue("credits", TextBox4.Text);
                cmd.Parameters.AddWithValue("Major", DropDownList2.Text);
                con.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Label2.Text = "Course added Successfully";
                    //  Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();
            }catch(SqlException ex)
            {
                //ALERT
            }
        }

        protected void delete_course(object sender, EventArgs e)
        {
         

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String sql = "delete from Major where Major=@name";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("name", DropDownList1.Text);

            con.Open();
            int k = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            if (k != 0)
            {
                Label2.Text = "Course has been deleted Successfully";
                //  Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            con.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                Label lbldeleteid = (Label)row.FindControl("lblID");
                conn.Open();
                SqlCommand cmd = new SqlCommand("delete FROM Courses where Code='" + Convert.ToString(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                gvbind();
            }catch(SqlException ex)
            {
                Response.Write("<script>alert('you cannot delete this course because it is related to database, you have to delete all related data first')</script>");
            }
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            if (i % 2 == 0)
            {
                GridView1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
            }
            i++;
        }

        protected void Register_btn(object sender, EventArgs e)
        {
/*
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
                Label3.Text = "Student registered Successfully";
                Label3.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            con.Close();
            */
        }

   

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage Reg_Courses.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("User's Info.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("formlog.aspx");
        }
    }
    }
