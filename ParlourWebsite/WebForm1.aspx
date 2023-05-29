<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ParlourWebsite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STUDIO 27 PARLOUR WEBSITE</title>
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

    <style>
        h3 {
            color: #de2b57;
        }
        .right1_top_crep {
            position: absolute; 
            right: 5px;
           margin-top: 0px;
           width: 33px;
        }
        .right2_top_crep {
    position: absolute;
    right: 30px; 
           margin-top: 0px;
           width: 33px;
}
        .left1_top_crep {
    position: absolute; 
    left: 5px;
           margin-top: 0px;
           width: 33px;
}
        .left2_top_crep {
    position: absolute;
    left: 30px;
           margin-top: 0px;
           width: 33px; 
}
    body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1500px;
  position: relative;
  margin: auto;
}
        .a {
            text-decoration:none;
            color:white;
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

            <!---imageslider-->

 
           <div class="slideshow-container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item">
        <img src="Slider/bg1.jpg"  alt="Parlour1" style="width:100%;"/>
          <div class="carousel-caption">
         <h3>SKIN CARE</h3>
        <p>Best Offers on Skin Care Services!</p>
              </div>

      </div>

      <div class="item active">
        <img src="Slider/bg2.jpg" alt="Parlour2" style="width:100%;"/>
          <div class="carousel-caption">
                <h3>BRIDAL MAKEUP</h3>
        <p>Get a Perfect Shaadi Look!</p>
              </div>

      </div>
    
      <div class="item">
          <img src="Slider/bg3.jpg" alt="Parlour3" style="width:100%;"/>
           <div class="carousel-caption">
               <h3>BEST SERVICES</h3>
          <p>Providing Best Services </p>
               </div>
      </div>

         <div class="item">
          <img src="Slider/bg4.jpg" alt="Parlour4" style="width:100%;"/>
              <div class="carousel-caption">
                  <h3>HAIR CARE</h3>
             <p>Providing with the Best Hair Care Offers!</p>
                  </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> 
        </div> 
        <div class="container center">
                   
             <img src="IMAGES/line1.png"   class="left1_top_crep">
              <img src="IMAGES/line2.png"  class="left2_top_crep">
                        
             <img src="IMAGES/line1.png"   class="right1_top_crep">
              <img src="IMAGES/line2.png"  class="right2_top_crep">
            <h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal;">Services We Provide Here!</h2>
               <center> <img src="IMAGES/line.png"  style="    position: absolute;  width: 70px;    height: 4px;"/></center>  
            
            
            <div class="row">
                <div class="col-lg-4">
                    <div class="box">
                    
                    <img class="img-circle" src="IMAGES/Facec1.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FACE CARE</h2>
                    <p><a class="btn btn-default" href="Facecare.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>
                    </div>
                <div class="col-lg-4">
                    <div class="box">
                    <img class="img-circle" src="IMAGES/waxing.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BODY CARE</h2>
                    <p></p>
                    <p><a class="btn btn-default" href="Bodycare.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>
                   </div>
                <div class="col-lg-4">
                <div class="box">
                    <img class="img-circle" src="IMAGES/Hairwash.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HAIR CARE</h2>
                    <p></p>
                    <p><a class="btn btn-default" href="haircare.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>
</div>
            </div>
        </div> 
        <!---PACKAGES---> 
                    <div class="container center mt-70 "> 
            <div class="row"> 
                    <h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal;">PACKAGES WE PROVIDE HERE</h2>
                   <center> <img src="IMAGES/line.png"  style="  position: absolute;  width: 70px;    height: 4px;"/></center>  
                <div class="col-lg-4">
                  <div class="box">
                    <img class="img-circle" src="IMAGES/bridalm.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BRIDAL PACKAGE</h2>
                    <p><a class="btn btn-default" href="Pack1.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>
</div>
                <div class="col-lg-4">
                   <div class="box">
                    <img class="img-circle" src="IMAGES/Makeupi.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MAKEUP PACKAGE</h2>
                    <p><a class="btn btn-default" href="Pack1.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>
                    </div>
         </div>
        </div>
        <img src="IMAGES/app-bg.jpg" width="100%" style="margin-top: 50px;
    margin-bottom: -69px;"/>
         <!---PACKAGES--->

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
                                <p><a href="Contact.html" class="a">Contact Us</a></p>
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
