using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String studentid = null;
            String fname = null;
            String lname = null;
            SqlCommand updatestudent = null;
            SqlConnection conn = new SqlConnection(@"Data Source=Robert-PC\SQLEXPRESS;Initial Catalog=Comp229Assign03;Integrated Security=True");



            if (string.IsNullOrEmpty(textbox1.Text) || string.IsNullOrEmpty(textbox1.Text))
            {
                try
                {
                    studentid = Request.QueryString["id"];
                    if (string.IsNullOrEmpty(Firstname.Text) != null && string.IsNullOrEmpty(textbox1.Text)Lastname.Text == null)
                    {
                        fname = Firstname.Text.ToString();
                        updatestudent = new SqlCommand("UPDATE dbo.Students SET FirstMidName = @firstname WHERE StudentID = @studentid", conn);
                        updatestudent.Parameters.AddWithValue("@firstname", fname);
                        updatestudent.Parameters.AddWithValue("@studentid", studentid);

                    }
                    else if (Lastname.Text != null && Firstname.Text == null)
                    {
                        lname = Lastname.Text.ToString();
                        updatestudent = new SqlCommand("UPDATE dbo.Students SET LastName = WHERE StudentID = @studentid", conn);
                        updatestudent.Parameters.AddWithValue("@lastname", lname);
                        updatestudent.Parameters.AddWithValue("@studentid", studentid);
                    }
                    else if (Lastname.Text != null && Firstname.Text != null)
                    {
                        fname = Firstname.Text.ToString();
                        lname = Lastname.Text.ToString();
                        updatestudent = new SqlCommand("UPDATE dbo.Students SET FirstMidName = @firstname, LastName = @lastname WHERE StudentID = @studentid", conn);
                        updatestudent.Parameters.AddWithValue("@firstname", fname);
                        updatestudent.Parameters.AddWithValue("@lastname", lname);
                        updatestudent.Parameters.AddWithValue("@studentid", studentid);
                    }


                    conn.Open();
                    updatestudent.ExecuteNonQuery();


                }

                finally
                {

                    conn.Close();
                    Response.Redirect("Update.aspx?id=" + studentid);
                }
            }
        }


    }
    }
