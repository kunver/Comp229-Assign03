using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class Contact : Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void rmvbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=Robert-PC\SQLEXPRESS;Initial Catalog=Comp229Assign03;Integrated Security=True");
            SqlCommand removecourse = new SqlCommand("DELETE FROM dbo.Enrollments WHERE CourseID= @course AND StudentID= @student", conn);
            string course = classlist.SelectedItem.Text;
            string student = studentidbx.Text;
            try
            {

                removecourse.Parameters.AddWithValue("@course", course);
                removecourse.Parameters.AddWithValue("@student", student);
                conn.Open();
                removecourse.ExecuteNonQuery();
            }

            finally
            {

                conn.Close();
                Response.Redirect("Courses.aspx");

            }
        }

        protected void addbutton_Click(object sender, EventArgs e)
        {
            //I see this as more of a student focused website, so i don't think adding grade is nessesary.
            SqlConnection conn = new SqlConnection(@"Data Source=Robert-PC\SQLEXPRESS;Initial Catalog=Comp229Assign03;Integrated Security=True");
            SqlCommand addcourse = new SqlCommand("INSERT INTO dbo.Enrollments (CourseID,StudentID,Grade) VALUES (@course, @student, @grade )", conn);
            string course = classlist.SelectedItem.Text;
            string student = studentidbx.Text;
            string grade = gradebx.Text;
            try
            {

                  addcourse.Parameters.AddWithValue("@course", course);
                   addcourse.Parameters.AddWithValue("@student", student);
                addcourse.Parameters.AddWithValue("@grade", grade);
                conn.Open();
                  addcourse.ExecuteNonQuery();
            }

            finally
            {

                 conn.Close();
                Response.Redirect("Courses.aspx");

            }
           
        }
    }
}