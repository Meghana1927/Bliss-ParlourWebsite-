using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParlourWebsite
{
    public partial class UserHome : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["Username"] != null)
            {
                btnlogout.Visible = true;
                btnlogin.Visible = false;
                lblSuccess.Text = "Login Success, Welcome " + Session["Username"].ToString();
            }
            else
            {
                btnlogout.Visible= false;
                btnlogin.Visible = true;
                //Response.Redirect("~/SignIn.aspx");
            }
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["Username"] = null;
            Response.Redirect("~/WebForm1.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }
        public void BindCartNumber()
        {
            if (Request.Cookies["CartSID"] != null)
            {
                string CookiesSID = Request.Cookies["CartSID"].Value.Split('=')[1];
                string[] ProductArray = CookiesSID.Split(',');
                int ProductCount = ProductArray.Length;
                sCount.InnerText = ProductCount.ToString();
            }
            else
            {
                sCount.InnerText = 0.ToString();

            }
        }
    }
}