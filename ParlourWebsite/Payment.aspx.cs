using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ParlourWebsite
{
    public partial class Payment1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source = LAPTOP-DF10QQ11\\SQLEXPRESS;Initial Catalog = ParlourStudio27; Integrated Security = SSPI";
            con.Open();

            SqlCommand cmd = new SqlCommand("Insert into tblPayment" + "(Name,CardNo,ExpiryDate,CvvNo) values(@Name,@CardNo,@ExpiryDate,@CvvNo)", con);
           
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@CardNo", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text);
            cmd.Parameters.AddWithValue("@CvvNo", TextBox5.Text);
       
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Payment Successful');</script>");
            Response.Redirect("DONE.aspx");
        }
    }
}
        