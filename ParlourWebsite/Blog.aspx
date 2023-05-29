<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="ParlourWebsite.Blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!---Title--->
    <title>Blog Section</title>
    <!---StyleSheet--->
    
       <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="css/Blogcss.css" />

    <!---Favicon---->
    <link rel="shortcut icon" href="BlogImages/NOMAKEUP/B1image1.jpg" />

    <!---poppins--->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet" />
<!-- Latest compiled and minified CSS -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>

* {
  box-sizing: border-box;
}

/* Add a gray background color with some padding */
body {
  font-family: Arial;
  padding: 20px;
  background: #f1f1f1;
}
img {
            width:100%;
            border-radius: 30px;
        }
/* Header/Blog Title */
        p {
            margin-top: 24px;
    text-align: justify;
        }
        h3,h2 {
            font-size: 22px;
    font-weight: 600; 
    margin-bottom: 20px;
        }
.header {
  padding: 30px;
  font-size: 40px;
  text-align: center;
  background: #e8686a;
  color:white;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 30%;
  margin-left:10px;
}

/* Right column */
.rightcolumn {
  float: left;
  width: 30%;
  padding-left: 20px;
}

/* Add a card effect for articles */
.card {
   background-color: white;
   padding: 20px;
   margin-top: 20px;
   box-shadow: 0 3px 5px rgb(0 0 0 / 3%), 0 1px 1px rgb(0 0 0 / 5%);
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}
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
                              <ul class="dropdown-menu">
                              <li> <a href="AddService.aspx">ADD SERVICES</a></li>
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

                            <li Class="dropdown"><a href="AddStaff.aspx" class="dropdown-toggle" data-toggle="dropdown">MANAGE</a>
                                <ul class="dropdown-menu">
                              <li> <a href="AddStaff.aspx">ADD STAFF</a></li>
                             </ul>
                              
                              </li>
                            
                            <li> 
                            </li>
                            </ul>
                    </div>
                    </div>
                    </div>
                </div>
            <!---Navbar Ends--->
     <div class="about-section" >
        <h1><h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal;">My Recent Posts </h2>
                  </h1>
    </div>  
    <!---Blog Section--->
    <section id="blog" class="mt-70">
        <!---Heading--->
    
    

 
        
<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2>Five Steps To Achieve The ‘No-Makeup’ Makeup Look</h2>
      <h5> <i class="far fa-clock"></i> Aug 7, 2022</h5>
      <div class="fakeimg" > <img src="Images/makeupi.jpg" /></div>
        <button><a href="blog1.html">Read More</a></button>
    </div> 
  </div> 
  <div class="leftcolumn"> 
    <div class="card">
      <h2>Different Types of waxing and their benefits</h2>
      <h5>Sep 2, 2022</h5>
      <div class="fakeimg" > <img src="Images/wax-1.jpg" /></div>
         <button><a href="blog2.html">Read More</a></button>
       </div>
  </div>

  
  <div class="rightcolumn">
    
       <div class="card">
     <h2>HOW TO DO HAIR COLOUR HIGHLIGHTS AT HOME?</h2>
           <h5> <i class="far fa-clock"></i> Oct 7, 2022</h5>
      <div class="fakeimg" > <img src="IMAGES/HAIRCOLOUR.jpg" /></div>
         <button><a href="blog3.html">Read More</a></button>
       </div>
      
    
      
    <!--<div class="rightcolumn">
      <div class="card">
           <img src="IMAGES/cleanup.jpg" /> </div>
      <h3>How much does it cost?</h33
      <p>Insurance doesn’t cover LED light therapy. You will need to ask about the full costs up front so you can budget wisely. 
</p>
    </div>-->        
   
  </div>
</div>

  <footer style="background-color: black; color: white; font-size: 19px;padding:30px 0px;" class="mt-70">
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
        





        </section>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
