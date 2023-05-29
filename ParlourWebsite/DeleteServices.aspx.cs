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
    public partial class DeleteServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        
            {
                if (Session["UserName"] != null)
                {
                    if (!IsPostBack)
                    {
                        BindGridview();
                    }
                }
                else
                {
                    Response.Redirect("SignIn.aspx");
                }
            }

            protected void txtID_TextChanged(object sender, EventArgs e)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("select SName from tblService where SID=@ID", con);
                cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(txtID.Text));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(ds, "dt");
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtProductName.Text = ds.Tables[0].Rows[0]["SName"].ToString();

                }
                else
                {

                    txtProductName.Text = string.Empty;
                }
                con.Close();
            }
            protected void btnUpdateBrand_Click(object sender, EventArgs e)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("Delete from tblServiceImages where SID=@ID", con);
                cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(txtID.Text));
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("Delete from tblService where SID=@ID", con);
                cmd1.Parameters.AddWithValue("@ID", Convert.ToInt32(txtID.Text));
                cmd1.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Deleted successfully')</script>");
                BindGridview();
                txtID.Text = string.Empty;
                txtProductName.Text = string.Empty;
            }

            private void BindGridview()
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlDataAdapter da = new SqlDataAdapter("select SID,SName from tblService", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

                else
                {
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                }
            }
        }
    }
