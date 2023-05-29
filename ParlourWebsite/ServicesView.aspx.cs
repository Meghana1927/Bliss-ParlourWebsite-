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
    public partial class ServicesView : System.Web.UI.Page
    {
        private string SelectedSize;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindServiceImage();
                BindServiceDetails();


            }
        }

        private void BindServiceImage()
        {
            {
                Int64 SID = Convert.ToInt64(Request.QueryString["SID"]);
                using (SqlConnection con = new SqlConnection("Data Source =LAPTOP-DF10QQ11\\SQLEXPRESS; Initial Catalog =ParlourStudio27; Integrated Security = True"))
                {
                    using (SqlCommand cmd = new SqlCommand("Select * from tblServiceImages where SID='" + SID + "'", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rptrImage.DataSource = dt;
                            rptrImage.DataBind();
                        }
                    }
                }
            }
        }

        private void BindServiceDetails()
        {
            Int64 SID = Convert.ToInt64(Request.QueryString["SID"]);
            using (SqlConnection con = new SqlConnection("Data Source =LAPTOP-DF10QQ11\\SQLEXPRESS; Initial Catalog =ParlourStudio27; Integrated Security = True"))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblService where SID='" + SID + "'", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrServices.DataSource = dt;
                        rptrServices.DataBind();
                    }
                }
            }
        }

        protected void btnAppoint_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in rptrServices.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {

                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "";
                }


            }



            if (SelectedSize != "")
            {

                if (SelectedSize != "")
                {
                    Int64 SID = Convert.ToInt64(Request.QueryString["SID"]);
                    if (Request.Cookies["CartSID"] != null)
                    {
                        string CookieSID = Request.Cookies["CartSID"].Value.Split('=')[1];
                        CookieSID = CookieSID + "," + SID + "-" + SelectedSize;
                        HttpCookie CartServices = new HttpCookie("CartSID");
                        CartServices.Values["CartPID"] = CookieSID;
                        CartServices.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(CartServices);
                    }
                    else
                    {
                        HttpCookie CartServices = new HttpCookie("CartSID");
                        CartServices.Values["CartSID"] = SID.ToString() + "-" + SelectedSize;
                        CartServices.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(CartServices);
                    }

                    Response.Redirect("Appointments.aspx");


                }
                else
                {
                    foreach (RepeaterItem item in rptrServices.Items)
                    {
                        if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                        {
                            var lblError = item.FindControl("lblError") as Label;
                            lblError.Text = "Please select a size";
                        }
                    }

                }



            }
        }
    }
    }



    
