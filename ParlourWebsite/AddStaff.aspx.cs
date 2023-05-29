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
    public partial class AddStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStaffDetails();
            }
        }

        private void BindStaffDetails()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblAddStaff", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rstaff.DataSource = dt;
                        rstaff.DataBind();
                    }
                }
            }

        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblAddStaff(Name,Address,Contact,Specialization) Values('" + txtStaff.Text + "','" + txtAdrress.Text + "','" + txtContact.Text + "','" + SSpec.Text + "')", conn);

                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Staff Added!'); </script>");
                txtStaff.Text = string.Empty;
                txtAdrress.Text = string.Empty;
                txtContact.Text = string.Empty;
                SSpec.Text = string.Empty;
                conn.Close();
                txtStaff.Focus();
                txtAdrress.Focus();
                txtContact.Focus();
                SSpec.Focus();
            }
        }
    }
}