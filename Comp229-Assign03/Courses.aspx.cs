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
        SqlConnection conn = new SqlConnection(@"Data Source=Robert-PC\SQLEXPRESS;Initial Catalog=Comp229Assign03;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
          /*  int studentid = Convert.ToInt32(studentidbx.Text);
            int courseid = null;
            SqlCommand addclass = new SqlCommand("INSERT INTO Enrollments (CourseID,StudentID,Grade) VALUES ('@course' ,'@student', '0' )", conn);
            addclass.Parameters.AddWithValue("@course", studentid);
            addclass.Parameters.AddWithValue("@student", courseid);
            try
            {
                conn.Open();
                if () { 

                addclass.ExecuteNonQuery();
                }
                else
                {
                    
                }

            }
            catch (NullReferenceException e)
            {

            }
            finally
            {

                conn.Close();
                Response.Redirect(Request.RawUrl);
            }
            */
        }

        protected void rmvbtn_Click(object sender, EventArgs e)
        {
            SqlCommand removeclass = new SqlCommand("INSERT INTO Students (FirstName,FirstMidName,EnrollmentDate) VALUES ('@lastname' ,'@firstname', 'GETDATE()' )", conn);
            try
            {
                conn.Open();
                removeclass.ExecuteNonQuery();


            }
           /* catch (NullReferenceException e)
            {

            }*/
            finally
            {

                conn.Close();
                Response.Redirect(Request.RawUrl);
            }

        }
    }
}