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
    public partial class Draft123 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void refreshdata()
        {


            SqlCommand cmd = new SqlCommand("select * from tbl_data", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;
                if (checkbox.Checked)
                {
                    var lblID = gvrow.FindControl("Label1") as Label;
                    var lblName = gvrow.FindControl("Label2") as Label;
                    var lblCity = gvrow.FindControl("Label3") as Label;


                    SqlCommand cmd = new SqlCommand("insert into tbl_save (Id,Name,City) values (@id,@name,@city)", con);
                    cmd.Parameters.AddWithValue("id", lblID.Text);
                    cmd.Parameters.AddWithValue("name", lblName.Text);
                    cmd.Parameters.AddWithValue("city", lblCity.Text);

                    con.Open();
                    int i = cmd.ExecuteNonQuery();
                    con.Close();
                    refreshdata();

                }

            }
        }
    }
}