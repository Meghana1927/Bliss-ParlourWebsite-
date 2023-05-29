using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParlourWebsite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["Username"] != null)
            {

                //lblSuccess.Text = "Login Success, Welcome " + Session["Username"].ToString();
                btnSignUp.Visible = false;
                btnSignIn.Visible = false;
                btnlogout.Visible = true;
            }
            else
            {

                btnSignUp.Visible = true;
                btnSignIn.Visible = true;
                btnlogout.Visible = false;
                //Response.Redirect("~/WebForm1.aspx");
            }
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

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("~/WebForm1.aspx");
        }
    }
}