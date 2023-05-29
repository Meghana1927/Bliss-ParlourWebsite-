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
    public partial class AddPackages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPackages();
            }
        }

        private void BindPackages()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblTYPServices", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                
            }
        }
        protected void BtnAddPackage_Click1(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_InsertPackage", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtPackageName.Text);
                cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
                cmd.ExecuteNonQuery();

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
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
                    fuImg01.SaveAs(SavePath + "\\" + txtPackageName.Text.ToString().Trim() + "01" + Extention);

                    // SqlCommand cmd1 = new SqlCommand("insert into tblPackagemages(PID,NAME) values('" + PID + "','" + PName.T.ToString().Trim() + "01" + "','" + Extention + "')", conn);
                    SqlCommand cmd1 = new SqlCommand("insert into tblPackagemages(PID,Name,Extention) values(@PID,@Name,@Extention)", conn);
                    cmd1.Parameters.AddWithValue("@PID", Convert.ToInt32(SID));
                    cmd1.Parameters.AddWithValue("@Name", txtPackageName.Text.ToString().Trim() + "01");
                    cmd1.Parameters.AddWithValue("@Extention", Extention);
                    cmd1.ExecuteNonQuery();
                }
                Response.Write("<script> alert('Package  Added Succesfully'); </script>");
                conn.Close();

            }
         }
    }
}
    