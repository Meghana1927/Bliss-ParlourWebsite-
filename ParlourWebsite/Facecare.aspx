<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facecare.aspx.cs" Inherits="ParlourWebsite.Facecare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>FACECARE</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale="1">
    <meta http-equiv="X-UA-Compatible" content="Google Chrome">
    <link href="Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="style.css"/>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .about-section {
            padding: 100px;
            text-align: center;
            background-color: #e8686a;
            color: white;
            background-image: url(IMAGES/section-bg.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>

</head>
<body>
    
    <ul id="social_side_links">
    <li><a target="_blank" href="https://api.whatsapp.com/send?phone=917021411890&amp;text=We%20are%20interested%20in%20Your%20services.%20Please%20Contact%20Me"><img src="IMAGES/whats.png" style="height:50px; width: 50px; " border="0" alt="" class="img-responsive"></a> 

    </li>
    <li><a target="_blank" href="mailto:studio@gmail.com"><img src="IMAGES/i2.png" style="height:50px; width: 50px;margin: -13px 0px; " border="0" alt="" class="img-responsive"></a> 

    </li>
    <li><a target="_blank" href="https://www.instagram.com/studio27ladies_beauty_salon/"> <img src="IMAGES/insta.png" style=" width: 48px; border="0" alt="" class="img-responsive"></a> 

    </li> 
</ul>

     <div class="container">
         <div class="row">
             <div class="col-lg-3">
                 <p><i class="fa fa-telephone"></i><a href="tel:000">+91 7021411890 </a></p>
             </div>

         </div>
         </div>
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
                        
                            <span><img alt="PARLOUR" class="logo" src="IMAGES/FINALLOGO.png"/></span>
                            </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                          <li class="active"><a href="Webform1.aspx">HOME</a></li>
                            <li><a href="Blog.aspx">BLOG</a></li>
                           
                             <li><a href="Blog.aspx">APPOINTMENT</a></li>

                          <li class="dropdown">
                              <a href="ServicesView.aspx" class="dropdown-toggle" data-toggle="dropdown"> MY SERVICES </a>
                              <ul class ="dropdown-menu">
                          <li> <a href="ServicesView.aspx">ALL SERVICES</a></li>
                             <li role="separator" class="divider"></li>
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
                              <li> <a href="Pack1.aspx">ENGAGEMENT MAKEUP LOOK</a></li>
                              <li> <a href="Pack1.aspx">PRE-WEDDING MAKEUP LOOK</a></li>
                              <li> <a href="Pack1.aspx">WEDDING MAKEUP LOOK</a></li>

                                  <li class="dropdown-header">MAKEUP PACKAGE</li>
                              <li> <a href="Pack1.aspx">PARTY MAKEUP LOOk</a></li>
                                  <li> <a href="Pack1.aspx">NUDE MAKEUP LOOk</a></li>
                  </ul>
                                </li>
                            

                            <li id="btnSignUp" runat="server" ><a href="SignUp.aspx">REGISTERATION</a></li>
                            <li id="btnSignIn" runat="server"><a href="SignIn.aspx">LOGIN</a></li>
                            <li><asp:Button ID="btnlogout" runat="server" CssClass="btn btn-navbar-default navbar-btn" Text="Signout" /></li>    
                        </ul>
                    </div>
                    </div>
                    </div>

            <!---imageslider-->

 
   <div class="about-section" >
        <h1><h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal;">FACE CARE SERVICES </h2>
                  </h1>
    </div>
         
            <!---FACECARE--->
        <div class="container center mt-70">
            <div class="row">
                <div class="col-lg-4"> 
                    <div class="box">
                    <img class="img-circle" src="IMAGES/Facial.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FACIAL</h2>
                    <p><a class="btn btn-default" href="SignUp.aspx" role="button" style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: normal; color: #800000">BOOK YOUR APPOINTMENT</a></p>
                </div></div>

                <div class="col-lg-4">
                    <div class="box">
                    <img class="img-circle" src="IMAGES/bleaching.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BLEACHING</h2>
                    <p><a class="btn btn-default" href="SignUp.aspx" role="button" style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: normal; color: #800000">BOOK YOUR APPOINTMENT</a></p>
                </div></div>

              
                 <div class="col-lg-4">
                    
                    <div class="box">
                    <img class="img-circle" src="IMAGES/cleanup.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CLEAN-UP</h2>
                    <p><a class="btn btn-default" href="SignUp.aspx" role="button" style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: normal; color: #800000">BOOK YOUR APPOINTMENT</a></p>
                </div></div>

                 <div class="col-lg-4">
                    <div class="box">
                    <img class="img-circle" src="IMAGES/De-tan.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DE-TANNING</h2>
                    <p><a class="btn btn-default" href="SignUp.aspx" role="button" style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: normal; color: #800000">BOOK YOUR APPOINTMENT</a></p>
                </div></div>

                 <div class="col-lg-4">
                    <div class="box">
                    <img class="img-circle" src="IMAGES/threading.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;THREADING</h2>
                    <p><a class="btn btn-default" href="SignUp.aspx" role="button" style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: normal; color: #800000">BOOK YOUR APPOINTMENT</a></p>
                </div></div>

                 <div class="col-lg-4">
                    <div class="box">
                    <img class="img-circle" src="IMAGES/FACEMASK.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FACE MASK</h2>
                    <p><a class="btn btn-default" href="SignUp.aspx" role="button" style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: normal; color: #800000">BOOK YOUR APPOINTMENT</a></p>
                </div></div>
         </div>
        </div>
         <!---BRIDAL PACKAGES--->
            <img src="IMAGES/se-bg.jpg" alt="" style="width:100%;margin-top:70px;" />  
        </div>
           <!----FOOTER CONTENT  STARTS--->
                 <footer style="background-color: black; color: white; font-size: 19px;padding:30px 0px;">
                    <div class="container">
                        <div class="row footer-p">
                            <div class="col-lg-4">
                                <h3>About Us</h3>
                                <p>Studio 27 is India’s Prominent Salon at Home, launched in 2022 and currently functioning in mumbai. Our commitment is to deliver quality salon and wellness services at home with top-level professionals & excellent leading products. </p>
                            </div>

                            <div class="col-lg-4">
                                <h3>Quick Links</h3>
                                <p><a href="Webform1.aspx" class="a">Home</a></p>
                                <p><a href="about.aspx" class="a">About Us</a></p>
                                <p><a href="Services.aspx" class="a">Our Services</a></p>
                                <p><a href="contact.html" class="a">Contact Us</a></p>
                            </div>

                            <div class="col-lg-4">
                                <h3>Contact Us</h3>
                                <p> Address : Shop No 18, JP  North Garden City, Vinay Nagar, Mira Road(E), Thane - 401 107</p>
                                <p>Phone No : <a class="a" href="tel:7021411890" style="text-decoration:none">+91 702 141 1890</a></p>
                                <p>Email Id : <a class="a" href="mailto:studio@gmail.com"> studio@gmail.com</a></p>
                            </div>


                        </div>
                    </div>
                    <hr />
                  
                 
            <div class="container">
                <p class="pull-right"><a href="WebForm1.aspx"> BACK TO TOP </a></p>
                <p> 2022&copy;Studio27.in &middot; All Rights Reserved  </p>
            </div>
        </footer >
    </form>
</body>
</html>