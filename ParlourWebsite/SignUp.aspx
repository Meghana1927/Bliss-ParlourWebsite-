<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ParlourWebsite.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SIGNUP FORM</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale="1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" />
    <link href="Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="style.css"/>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
    <style>
        input {
            margin-bottom:7px;
        }
    </style>
</head>
<body style="background-image: url(IMAGES/reg-bg.jpg);
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
                            <span><img alt="PARLOUR" class="logo" src="IMAGES/LOGO.png" /></span>
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

           
                          <li class="active"><a href="SignUp.aspx">SignUp</a></li>
                            <li ><a href="SignIn.aspx">SignIn</a></li>
                                </ul>
                            
                    </div>
                    </div>

        </div>
            </div>
         <!----SIGNUP FORM---> 
        <div class="container"> 
        <div class="row" style="background-color: #0707075c; 
    padding: 30px;
    width: 400px;">
            <label class="col-xs-11">USER NAME: </label>
            <div  class="col-xs-11"> 
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter User Name"></asp:TextBox>
             
                </div>
            

         <label class="col-xs-11">PASSWORD: </label>
            <div  class="col-xs-11"> 
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Password"></asp:TextBox>
                </div>
                

         <label class="col-xs-11">CONFIRM PASSWORD: </label>
            <div  class="col-xs-11"> 
            <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" placeholder="Confirm Password"></asp:TextBox>
                </div>
            
         <label class="col-xs-11">ENTER FULL NAME: </label>
            <div  class="col-xs-11"> 
            <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="ENTER VALID ENTRY" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$"></asp:RegularExpressionValidator>

                </div>
            
         <label class="col-xs-11">EMAIL: </label>
            <div  class="col-xs-11"> 
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email">
            </asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>

             <label class="col-xs-11">ADDRESS: </label>
            <div  class="col-xs-11"> 
            <asp:TextBox ID="txtAddress" runat="server" Class="form-control" placeholder="Enter Your Address"></asp:TextBox>
                </div>

             <label class="col-xs-11">AGE: </label>
            <div  class="col-xs-11"> 
            <asp:TextBox ID="txtAge" runat="server" Class="form-control" placeholder="Enter Your Age"></asp:TextBox>
                 <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Age must less than 60" ControlToValidate="txtAge" ForeColor="Red" MaximumValue="60"></asp:RangeValidator> 
                </div>

             <label class="col-xs-11"></label>
            <label class="col-xs-11"></label>

        <div  class="col-xs-11"> 
            <asp:Button ID="txtsignup" runat="server" Class="btn btn-success" Text="SignUp" OnClick="txtsignup_Click" />
                &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
            </div>
        </div>
       </div>
         <!----SIGNUP FORM END--->

         <!----FOOTER CONTENT  STARTS--->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <hr />
         
        <footer class="footer-pos mt-70 " >
            <div class="container">
                <p class="pull-right "><a href="WebForm1.aspx"> BACK TO TOP </a></p>
                <p> 2022&copy;Studio27.in &middot; <a href ="Webform1.aspx">HOME</a>&middot;<a href ="AboutUs.aspx">ABOUT US</a>&middot;<a href ="ContactUs.aspx">CONTACT US</a></p>
            </div>
        </footer>
        <!----FOOTER CONTENT END--->
    </form>
</body>
</html>
