using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppVaccine
{
    public partial class ForgotPwd : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = "";
            string newpassword = "";
            UpdatePasswordInDatabase(username, newpassword);
            Response.Redirect("UserLogin.aspx");

        }
        private void UpdatePasswordInDatabase(string username, string newpassword)
        {
            // Replace placeholders with your actual database connection details
            string connectionString = "Server=DESKTOP-ICOPGDO\\MSSQLSERVER01;Database=VaccineManagementDb;Trusted_Connection=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Replace "Users" with your actual table name, "Password" with the password column, and "UserId" with the user ID column
                string updateQuery = $"UPDATE VUser SET Password = @newpassword WHERE Username = @username";

                using (SqlCommand command = new SqlCommand(updateQuery, connection))
                {
                    // Parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@username", TxtFUser.Text);
                    command.Parameters.AddWithValue("@newpassword", TxtFPwd.Text);

                    command.ExecuteNonQuery();
                }
            }
        }

       
    }
}

              

    
    
