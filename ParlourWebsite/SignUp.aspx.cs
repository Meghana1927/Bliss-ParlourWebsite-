using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ParlourWebsite
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsignup_Click(object sender, EventArgs e)
        {

            if (isformvalid())
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Name,Email,Address,Age,Usertype) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtName.Text + "','" + txtEmail.Text + "','" + txtAddress.Text + "','" + txtAge.Text + "','User')", conn);
                    
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration Successfully Done!'); </script>");
                    clr();
                    conn.Close();
                    lblMsg.Text = "Registration Done!";
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                    
                }
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                Response.Write("<script> alert('Registration Failed'); </script>");
                lblMsg.Text = "All Fields are mandatory";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }

        }

        private bool isformvalid()
        {
            if (txtUname.Text == "")
            {
                Response.Write("<script> alert('Username not Valid'); </script>");
                txtUname.Focus();
                return false;
            }
            else if (txtPass.Text == "")
            {
                Response.Write("<script> alert('Password not Valid'); </script>");
                txtPass.Focus();
                return false;
            }
            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script> alert('Confirm Password not Valid'); </script>");
                txtCPass.Focus();
                return false;
            }
            else if (txtName.Text == "")
            {
                Response.Write("<script> alert('Name not Valid'); </script>");
                txtName.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email not Valid'); </script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtAddress.Text == "")
            {
                Response.Write("<script> alert('Address not Valid'); </script>");
                txtAddress.Focus();
                return false;
            }
            else if (txtAge.Text == "")
            {
                Response.Write("<script> alert('Age not Valid'); </script>");
                txtAge.Focus();
                return false;
            }

            return true;
        }

        private void clr()
        {
            txtUname.Text = String.Empty;
            txtPass.Text = String.Empty;
            txtCPass.Text = String.Empty;
            txtName.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtAddress.Text = String.Empty;
            txtAge.Text = String.Empty;
        }
    }
}
