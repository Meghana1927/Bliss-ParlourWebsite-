using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace ParlourWebsite
{
    public partial class AddService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTYPServices();
            }

        }
        private void BindTYPServices()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblTYPServices", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlServices.DataSource = dt;
                    ddlServices.DataTextField = "Name";
                    ddlServices.DataValueField = "ServiceID";
                    ddlServices.DataBind();
                    ddlServices.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }



        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_InsertService", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SName", txtServicetName.Text);
                cmd.Parameters.AddWithValue("@TYPServiceID", ddlServices.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@SPrice", txtPrice.Text);
                cmd.ExecuteNonQuery();

                if (conn.State == ConnectionState.Closed) { conn.Open();
                }

            Int64 SID = Convert.ToInt64(cmd.ExecuteScalar());
                //INSERT AND UPLOAD IMAGRS
                if (fuImg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/IMAGES/ServicesImages/") + SID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                    fuImg01.SaveAs(SavePath + "\\" + txtServicetName.Text.ToString().Trim() + "01" + Extention);

                    // SqlCommand cmd1 = new SqlCommand("insert into tblServiceImages(SID,NAME) values('" + SID + "','" + SName.T.ToString().Trim() + "01" + "','" + Extention + "')", conn);
                    SqlCommand cmd1 = new SqlCommand("insert into tblServiceImages(SID,Name,Extention) values(@SID,@Name,@Extention)", conn);
                    cmd1.Parameters.AddWithValue("@SID", Convert.ToInt32(SID));
                    cmd1.Parameters.AddWithValue("@Name",txtServicetName.Text.ToString().Trim()+"01");
                    cmd1.Parameters.AddWithValue("@Extention", Extention);
                    cmd1.ExecuteNonQuery();
                }
                Response.Write("<script> alert('Services  Added Succesfully'); </script>");
                conn.Close();

            }
        }
    }
}

