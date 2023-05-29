<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="ParlourWebsite.Appointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <title>APPOINTMENT FORM</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale="1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" />
    <link href="Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="style.css"/>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

</head>
<body style="background-image: url(IMAGES/reg-bg.jpg);
    background-size: cover;
    background-repeat: no-repeat;background-attachment: fixed; ">
        <div class="center-page">
    <form id="form1" runat="server">
        <div>
         <div class="container" style="background-color: #a3a0a029; 
    padding: 30px;
    width: 600px;">
        <div class="from-horizontal">
            <h2> <center>APPOINTMENT FORM</center></h2>
            <hr />
            <div class="form-group">
                
                 <div class="row">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-3 control-label" Text="FULL NAME"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtName"></asp:RequiredFieldValidator> 

                </div> 
            </div> </div>    
            
             <div class="form-group">
                 <div class="row">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-3 control-label" Text="AGE"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtAge" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Age" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Age must less than 60" ControlToValidate="txtAge" ForeColor="Red" MaximumValue="60"></asp:RangeValidator> 

                </div>
                 <div class="col-md-3"></div>
            </div> 
            </div>
             <div class="form-group">
                 <div class="row">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-3 control-label" Text="CONTACT"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtContact" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtContact" ErrorMessage="Enter Valid Contact Number"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Contact" ControlToValidate="txtContact"></asp:RequiredFieldValidator>

                </div>

            </div></div>   
             <div class="row">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-3 control-label" Text="SELECT DATE & TIME :"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtDate" CssClass="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </div> 
            </div> </div>    
          <br />
             <div class="form-group">
                 <div class="row">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-3 control-label" Text="SELECT YOUR SERVICE:"></asp:Label>
                <div class="col-md-8">
                    <asp:CheckBoxList ID="cbl1" runat="server" RepeatColumns="2" Height="165px" Width="335px">
                        <asp:ListItem>FACIAL</asp:ListItem>
                        <asp:ListItem>BLEACHING</asp:ListItem>
                        <asp:ListItem>CLEAN_UP</asp:ListItem>
                        <asp:ListItem>DE-TANNING</asp:ListItem>
                        <asp:ListItem>THREADING</asp:ListItem>
                        <asp:ListItem>WAXING</asp:ListItem>
                        <asp:ListItem>MANICURE-PEDICURE</asp:ListItem>
                        <asp:ListItem>INSTA LIGHT PACK</asp:ListItem>
                        <asp:ListItem>BODY-POLISHING</asp:ListItem>
                        <asp:ListItem>HAIR CUT</asp:ListItem>
                        <asp:ListItem>SPA</asp:ListItem>
                        <asp:ListItem>HAIR TREATMENT</asp:ListItem>
                        <asp:ListItem>BRIDAL MAKEUP </asp:ListItem>
                        <asp:ListItem>ENGAGEMENT MAKEUP</asp:ListItem>
                        <asp:ListItem>PRE-WEDDING MAKEUP </asp:ListItem>
                        <asp:ListItem>NUDE MAKEUP </asp:ListItem>
                        <asp:ListItem>PARTY MAKEUP</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:CustomValidator runat="server" ID="servlist" ClientValidationFunction="Validate" ErrorMessage="Please check Atleast one" ></asp:CustomValidator>

                </div>
            </div></div>
            <br />
           
        <div  class="col-xs-11"> 
            <asp:Button ID="txtsignup" runat="server" Class="btn btn-success" Text="BOOK MY APPOINTMENT" OnClick="txtsignup_Click"/>
                
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
            </div>
                

        </div>

    
        </div>
    </form>
</body>
</html>
