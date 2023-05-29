<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ParlourWebsite.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserHome</title>
     <script
  src="https://code.jquery.com/jquery-3.6.1.js"
  integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
  crossorigin="anonymous"></script>
   <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale="1"/>
    <meta http-equiv="X-UA-Compatible" content="Google Chrome"/>
    <link href="Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="style.css"/>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
   
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/cart.aspx";

            });
        });

    </script>

</head>

<body>
<form id="form1" runat="server">
      
     <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
           <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                            </button>
                        <a class="navbar-brand" href="WebForm1.aspx"></a>
                            <span><img alt="PARLOUR" class="logo" src="IMAGES/LOGO.png" /></span>
                            </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                          <li><a href="Webform1.aspx">HOME</a></li>
                            <li><a href="Blog.aspx">BLOG</a></li>
                            <li><a href="Appointments.aspx">APPOINTMENT</a></li>

                            <li><a href="Services.aspx">ALL SERVICES</a></li>
                            
                           
                            <li>
                                <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-navbar-default navbar-btn" Text="SIGNIN"  />
                                <asp:Button ID="btnlogout" runat="server" CssClass="btn btn-navbar-default navbar-btn" Text="SIGNOUT" /></li>

                            
                            <li > </li>
                            </ul>
                    </div>
                    </div>
                    </div>

             </div>
    
    <br />
    <br /><br /><br /><br />

  <center> <div style="    color: #3c763d;
    /* border: 1px solid black; */
    text-align: center;
    box-shadow: 0px 4px 8px 3px rgb(0 0 0 / 20%);
    padding: 50px 15px;width:40%; font-size:20px"> <asp:Label ID="lblSuccess" runat="server" Cssclass="text-success"></asp:Label></div></center>

     <!----FOOTER CONTENT  STARTS--->
   
        <footer class="mt-70">
            <div class="container">
                <p class="pull-right"><a href="WebForm1.aspx"> BACK TO TOP </a></p>
                <p>2022&copy;Studio27.in &middot; <a href="Webform1.aspx">HOME</a>&middot;<a href ="AboutUs.aspx">ABOUT US</a>&middot;<a href ="ContactUs.aspx">CONTACT US</a></p>
            </div>
        </footer>
        <!----FOOTER CONTENT END--->
    </form> 
</body>
</html>
