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
    public partial class AddTYPServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTYPServiceRepeater();
            }
        }

        private void BindTYPServiceRepeater()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblTYPServices", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rservices.DataSource = dt;
                        rservices.DataBind();
                    }
                }
            }
        }

        protected void btnAddServices_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblTYPServices(Name) Values('" + txtService.Text + "')", conn);

                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Service Added!'); </script>");
                txtService.Text = string.Empty;
                conn.Close();
                txtService.Focus();
            }
        }
    }
}