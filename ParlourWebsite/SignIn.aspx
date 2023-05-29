<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="ParlourWebsite.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale="1"/>
    <meta http-equiv="X-UA-Compatible" content="Google Chrome"/>
    <link href="Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="style.css"/>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
   <style>
       .white {
           color:white
       }
   </style>
</head>
<body  style="background-image: url(IMAGES/login.jpg);
    background-size: cover;
    background-repeat: no-repeat;background-attachment: fixed; ">
        <div class="center-page" >
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
                            <span><img alt="PARLOUR" class="logo" src="IMAGES/FINALLOGO.png" /></span>
                            </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                          <li><a href="Webform1.aspx">HOME</a></li>
                            <li><a href="Blog.aspx">BLOG</a></li>
                           
                       
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

                            <li ><a href="SignUp.aspx">SignUp</a></li>
                            <li  class="active">
                             <a href="SignIn.aspx">SignIn</a></li>
                            </ul>
                    </div>
                    </div>
                    </div>

             </div>
        <br />
        <br />
        <br />
        <!-----SIGNIN FORM START---->

        <div class="container" style="background-color: #ffffff1f;width:300px">
            <div class="form-horizontal ">
                <h2 class="white">Login Form</h2>
                
            <div class="form-group white">
                <asp:Label ID="Label1" CssClass="col-md-3 control-label" runat="server" Text="Username: "   ></asp:Label>
            <div class="col-md-8" >
                <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="Enter User Name" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>    
            </div>

            <div class="form-horizontal">
            <div class="form-group white"">
                <asp:Label ID="Label2"  CssClass="col-md-3 control-label" runat="server" Text="Password: "  ></asp:Label>
            <div class="col-md-8" >
                <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass ="text-danger " ErrorMessage="Enter Password" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                
                </div>
            </div>    
                </div>
         
         <div class="form-horizontal">
        <div class="form-group white"> 
            <div class="col-md-6" >

                <asp:CheckBox ID="CheckBox1" runat="server"/>
                <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Remember Me"  ></asp:Label>
                </div>
            </div>   

              <div class="form-group"> 
            <div class="col-md-12" >

                <asp:Button ID="btnlogin" CssClass="btn btn-success" runat="server" Text="Login&raquo;" OnClick="btnlogin_Click" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx"  class="white">Sign Up</asp:HyperLink>
            </div>
            </div>   

             <!---forget password--->

           


               <div class="form-group">
            <div class="col-md-2"></div>
            <div class="col-md-6" > 
                <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>

            </div>
            </div>   

            </div>
               </div>
            


        <!------SIGN IN FORM END------>


         <!----FOOTER CONTENT  STARTS--->
        <footer class="footer-top">
            <div class="container">
                <p class="pull-right"><a href="WebForm1.aspx"> BACK TO TOP </a></p>
                <p>2022&copy;Studio27.in &middot; <a href="Webform1.aspx">HOME</a>&middot;<a href ="AboutUs.aspx">ABOUT US</a>&middot;<a href ="ContactUs.aspx">CONTACT US</a></p>
            </div>
        </footer>
        <!----FOOTER CONTENT END--->
    </form>
</body>
</html>
