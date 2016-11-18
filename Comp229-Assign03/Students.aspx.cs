using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String studentid = Request.QueryString["id"];
            String Fname = null;
            String Lname = null;
            String Date = null;

            SqlConnection conn = new SqlConnection(@"Data Source=Robert-PC\SQLEXPRESS;Initial Catalog=Comp229Assign03;Integrated Security=True");
            SqlCommand getstudent = new SqlCommand("SELECT * FROM dbo.Students WHERE StudentID = @studentid", conn);
            SqlDataReader Reader = null;
            try
            {
               
                getstudent.Parameters.AddWithValue("@studentid", studentid);
                conn.Open();
  
                using (Reader = getstudent.ExecuteReader())
                {
                    while (Reader.Read())
                    {
                        Lname = Reader["LastName"].ToString();
                        Fname = Reader["FirstMidName"].ToString();
                        Date = Reader["EnrollmentDate"].ToString();
                    }
                }            
            }

            finally
            {
                Reader.Close();
                conn.Close();          
            }
            LabelID.Text = studentid;
            LabelLname.Text = Lname;
            labeldate.Text = Date;
            labelfname.Text = Fname;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String studentid = Request.QueryString["id"];
            Response.Redirect("Update.aspx?id=" + studentid);
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            String studentid = Request.QueryString["id"];
            SqlConnection conn = new SqlConnection(@"Data Source=Robert-PC\SQLEXPRESS;Initial Catalog=Comp229Assign03;Integrated Security=True");
            SqlCommand deletestudent = new SqlCommand("DELETE FROM dbo.Students WHERE StudentID = @studentid", conn);
            SqlCommand deleteFK = new SqlCommand("DELETE FROM dbo.Enrollments WHERE StudentID = @studentid", conn);

            try
            {               
                deletestudent.Parameters.AddWithValue("@studentid", studentid);
                deleteFK.Parameters.AddWithValue("@studentid", studentid);
                conn.Open();
                deleteFK.ExecuteNonQuery();
                deletestudent.ExecuteNonQuery();
            }

            finally
            {
                conn.Close();
                Response.Redirect("Default.aspx");
            }
        }
    }
    }
