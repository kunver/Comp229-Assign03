using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
   
        }

        protected void AddStudent_Click(object sender, EventArgs e)
        {
           
            SqlConnection conn = new SqlConnection(@"Data Source=Robert-PC\SQLEXPRESS;Initial Catalog=Comp229Assign03;Integrated Security=True");
            SqlCommand addstudent = new SqlCommand("INSERT INTO dbo.Students (LastName,FirstMidName,EnrollmentDate) VALUES (@lastname,@firstname, GETDATE() )", conn);
           
            try
            {
                string first = Fname.Text;
                string last = Lname.Text;
                addstudent.Parameters.AddWithValue("@firstname", first);
                addstudent.Parameters.AddWithValue("@lastname", last);
                
                conn.Open();
                addstudent.ExecuteNonQuery();
                
               
            }
       
            finally
            {
                
                conn.Close();
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}