<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="ParlourWebsite.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>studio 27</title>
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
            width: 100%;
            background-position-x: center;
            padding: 100px;
            text-align: center;
            background-color: #e8686a;
            color: white;
            background-image: url(IMAGES/section-bg.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }
        p {
            font-size:18px;
            text-align:justify;
        }
    </style>
</head>
<body   >
   <form id="form1" runat="server">
        <div>
            <!---NavBar Starts--->
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
                            <li><asp:Button ID="btnlogout" runat="server" CssClass="btn btn-navbar-default navbar-btn" Text="SIGNOUT" /></li>    
                        </ul>
                    </div>
                    </div>
                    </div>

                </div>
            <!---Navbar Ends--->
                  <div class="about-section" >
        <h1><h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal;"> About Us</h2>
                  </h1>
    </div>
 
            <div class="container"> 
                <div class="row">
                    <div class="col-lg-12 mt-70">
                        <p>In today’s fast-paced world, life has become very stressful and hectic for all. Therefore, Beauty Salons are the best getaways for the much-needed break and relaxation.  Studio 27 is a well-known luxury Beauty Salon in mumbai that offers top-of-the-line salon services to women. Whether you need a makeover with a stylish new haircut or want to unwind with a relaxing massage, there is best place  to destress and rejuvenate yourself.</p>
                    </div>
                    <div class="col-lg-6">
                        <img src="IMAGES/about-us.png" width="100%"/>
                    </div>

                    <div class="col-lg-6">
                        <p>Being a top  parlour in mumbai, our professionally-trained staff makes sure that you feel fully relaxed and pampered throughout your stay at our facility. We provide you all the comfort, convenience, and amenities to ensure a truly luxurious experience for all our guests. The luxe settings, pleasing atmosphere, tasteful décor, and soothing ambiance within our haven will relax you instantly as soon as you step into our salon. Our dedicated staff is committed to providing you the best parlour services possible using state-of-the-art facilities. We ensure complete safety, privacy, and comfort of all our lady guests while they indulge in our range of  services.</p>
                         
                </div>
                 <div class="col-lg-12">
                        <p>We provide beauty treatment like facial, pedicure, manicure, waxing, bridal makeup and reception makeup. So if you want to go to a party or a grand Indian wedding in mumbai, make prior appointment by calling any of the beauty parlours in mumbai and book your seat for beauty treatment.</p>                   </div>

                </div>
                </div>
            <img src="IMAGES/about-us.jpg" width="100%"/>

        </div>
    </form>
       <!----FOOTER CONTENT  STARTS--->
         <footer style="background-color: black; color: white; font-size: 19px;padding:30px 0px;margin-top:70px">
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
        <!----FOOTER CONTENT END--->

    
         
    </form>
 
    </body>
</html>