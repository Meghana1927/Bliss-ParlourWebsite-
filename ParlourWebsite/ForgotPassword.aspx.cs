using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace ParlourWebsite
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
       

        public string Password { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ParlourStudio27"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", conn);
                cmd.Parameters.AddWithValue("@Email", TxtEmailID.Text);
                

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPassw(Id,Uid,RequestDateTime)values('" + myGUID + "','" + Uid + "',GETDATE())", conn);
                    cmd1.ExecuteNonQuery();

                    //send Resend link via email

                    String ToEmailAddress =dt.Rows[0][4].ToString();
                    String Username =dt.Rows[0][1].ToString();
                    String EmailBody ="HII ,"+ Username + ",<br/><br/>Click the link below to reset the password<br/> </br> https://localhost:44352/RecoverPassword.aspx?Uid="+myGUID ;

                    MailMessage PassRecMail = new MailMessage("meghsupugade@gmail.com",ToEmailAddress);
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true; 
                    PassRecMail.Subject = "Reset Password";

                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("meghsupugade@gmail.com", "krtcslrfepfwzwrg");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;

                        client.Send(PassRecMail);
                    }
                    


                    //----

                    lblResetPassMsg.Text = "Reset Link send! Check your email for reset password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    TxtEmailID.Text = String.Empty;
                }
                else
                {
                    lblResetPassMsg.Text = "OOPs this Email does not exists! Please try again";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.DarkGreen;
                    TxtEmailID.Text=String.Empty;
                    TxtEmailID.Focus();
                }

                }
            }
        }
    }
