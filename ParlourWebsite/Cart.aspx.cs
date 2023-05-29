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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindServiceCart();


            }
        }

        private void BindServiceCart()
        {
            if (Request.Cookies["CartSID"] != null)
            {
                DataTable dt = new DataTable();
                string CookieData = Request.Cookies["CartSID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string SID = CookieDataArray[i].ToString().Split('-')[0];
                        string SizeID = CookieDataArray[i].ToString().Split('-')[1];
                        using (SqlConnection con = new SqlConnection("Data Source =LAPTOP-DF10QQ11\\SQLEXPRESS; Initial Catalog =ParlourStudio27; Integrated Security = True"))
                        {
                            using (SqlCommand cmd = new SqlCommand("Select A.*,from tblService where SID='" + SID + "'", con))
                            {
                                cmd.CommandType = CommandType.Text;
                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {
                                    
                                    sda.Fill(dt);

                                }
                            }
                        }
                    }
                }
                    rptrCartProducts.DataSource = dt;
                rptrCartProducts.DataBind();
            }
        }
    }
}