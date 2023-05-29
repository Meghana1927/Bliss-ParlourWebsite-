<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DONE.aspx.cs" Inherits="ParlourWebsite.DONE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <center>
            <h1>YOUR APPOINTMENT HAS BOOKED SUCCESFULLY!</h1>
            <h2>For any Query Contact Us At</h2>
             <ul id="social_side_links">
    <li><a target="_blank" href="https://api.whatsapp.com/send?phone=917021411890&amp;text=We%20are%20interested%20in%20Your%20services.%20Please%20Contact%20Me"><img src="IMAGES/whats.png" style="height:50px; width: 50px; " border="0" alt="" class="img-responsive"/></a> 

    </li>
                 </ul>
                <table>
                <tr>
                    <td colspan="2">
                        
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/WebForm1.aspx">Home Page</asp:HyperLink>
                    </td>
                </tr></table>
                </center>
        </div>
    </form>
</body>
</html>
