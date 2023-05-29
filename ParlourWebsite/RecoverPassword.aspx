<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="ParlourWebsite.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RECOVER PASSWORD</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale="1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" />
    <link href="Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="style.css"/>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                            <li><a href="Appointment.aspx">APPOINTMENT</a></li>
                            
                       
                          <li class="dropdown">
                              <a href="Services.aspx" class="dropdown-toggle" data-toggle="dropdown"> MY SERVICES </a>
                              <ul class ="dropdown-menu">
                              <li class="dropdown-header">FACE CARE</li>
                              <li> <a href="Facecare.aspx">FACIAL</a></li>
                              <li> <a href="Facecare.aspx">BLEACHING</a></li>
                              <li> <a href="Facecare.aspx">CLEAN-UP</a></li>
                             <li> <a href="Facecare.aspx">DE-TANNING</a></li>
                            <li> <a href="Facecare.aspx">THREADING</a></li>

                                 
                                 <li class="dropdown-header">BODY CARE</li>
                              <li> <a href="Bodycare.aspx">WAXING</a></li>
                               <li> <a href="Bodycare.aspx">MANICURE-PEDICURE</a></li>
                              <li> <a href="Bodycare.aspx">INSTA LIGHT PACK</a></li>
                              <li> <a href="Bodycare.aspx">BODY POLISHING</a></li>

                                  <li class="dropdown-header">HAIR CARE</li>
                              <li> <a href="Haircare.aspx">HAIR CUT</a></li>
                              <li> <a href="Haircare.aspx">SPA</a></li>
                              <li> <a href="Haircare.aspx">HAIR TREATMENT</a></li>
                                  </ul>
                              </li>

                            <li class="dropdown">
                              <a href="Packages.aspx" class="dropdown-toggle" data-toggle="dropdown">PACKAGES</a>
                              <ul class ="dropdown-menu">
                              <li class="dropdown-header">BRIDAL PACKAGE</li>
                              <li> <a href="Packages.aspx">ENGAGEMENT MAKEUP LOOK</a></li>
                              <li> <a href="Packages.aspx">WEDDING MAKEUP LOOK</a></li>
                              <li> <a href="Packages.aspx">RECEPTION MAKEUP LOOK</a></li>

                                  <li class="dropdown-header">MAKEUP PACKAGE</li>
                              <li> <a href="Packages.aspx">PARTY MAKEUP LOOk</a></li>
                  </ul>
                                </li>
                            <li>
                             <a href="SignIn.aspx">SIGNIN</a></li>
                            </ul>
                    </div>
                    </div>
                    </div>

        </div>
        </div>
        <div class="container"> 
            <br /><br /><br /><br />
         <div class="form-horizontal">

             <h1>RESET PASSWORD</h1>
            
             <br />

           <div class="form-group">
             <asp:Label ID="lblNewPassword" CssClass="col-md-2 control-label" runat="server" Text="New Password"></asp:Label>
          
            <div class="col-md-3">
                <asp:TextBox ID="txtNewPass" CssClass =" form-control" TextMode ="Password"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>

         </div>
             <div class="form-group">
                  <asp:Label ID="lblConfirmPass" CssClass ="col-md-2 control-label" runat="server" Text="Confirm New Password"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtConfirmPass" CssClass =" form-control" TextMode ="Password"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Confirm New Password" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPass" CssClass ="Text-danger" runat="server" ErrorMessage="confirm password not match...try again" ControlToCompare="txtConfirmPass" ForeColor="Red" ControlToValidate="txtNewPass"></asp:CompareValidator>
                    </div>
             </div>
   <div class ="form-group">
                    <div class ="col-md-2">   </div>

                    <div class ="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass ="btn btn-default" runat="server" Text="Reset" />
                   
                         </div>
                </div>

            </div>
        </div>


      
    </form>
         <!----FOOTER CONTENT  STARTS--->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="WebForm1.aspx"> BACK TO TOP </a></p>
                <p> 2022&copy;Studio27.in &middot; <a href="Webform1.aspx">HOME</a>&middot;<a href ="AboutUs.aspx">ABOUT US</a>&middot;<a href ="ContactUs.aspx">CONTACT US</a></p>
            </div>
        </footer >
        <!----FOOTER CONTENT END--->
</body>
</html>
