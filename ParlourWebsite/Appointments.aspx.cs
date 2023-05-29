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
    public partial class Appointments : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("Insert into tblappointment(Username,Age,Contact,DateTime,Services) Values('" + txtName.Text + "','" + txtAge.Text + "','" + txtContact.Text + "','" + txtDate.Text + "','" + cbl1.Text + "')", conn); 
                    cmd.ExecuteNonQuery();
 Response.Write("<script> alert('Appointment Booked Successfully!'); </script>");
        
                    clr();
        conn.Close();
        lblMsg.Text = "Appointment Booked!";
        lblMsg.ForeColor = System.Drawing.Color.Green;

    }
    Response.Redirect("~/Payment.aspx");
}
else
{
    Response.Write("<script> alert('Failed'); </script>");
    lblMsg.Text = "All Fields are mandatory";
    lblMsg.ForeColor = System.Drawing.Color.Red;
}

        }

        private bool isformvalid()
{
    if (txtName.Text == "")
    {
        Response.Write("<script> alert('Name not Valid'); </script>");
        txtName.Focus();
        return false;
    }
    else if (txtAge.Text == "")
    {
        Response.Write("<script> alert('Age not Valid'); </script>");
                txtAge.Focus();
        return false;
    }
 
    else if (txtContact.Text == "")
    {
        Response.Write("<script> alert('Contact not Valid'); </script>");
        txtContact.Focus();
        return false;
    }
    return true;
}

private void clr()
{
    txtName.Text = String.Empty;
    txtAge.Text = String.Empty;
    txtContact.Text = String.Empty;
    cbl1.ClearSelection();
        }
    }
}