<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="ParlourWebsite.Payment1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-md-3 "></div>
    <div class="col-md-8 " ">
        
                    
            <table class="table-bordered align-center"  style="
    box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);width: 637px;margin-top: -88px;" >
                <tr>
                    <td> 
                        <h2>PAYMENT DETAILS</h2> 
                        <asp:Label runat="server" Text="Card Details" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID ="TextBox1" runat="server"   placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter the field of Name!" ForeColor="Red" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                      
                    </td>
                </tr>
                <br /><br />
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server"   ImageUrl="IMAGES/Payment.png" Width="579px" ></asp:Image>
                    </td>
                </tr>
                <br /><br />
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Card Number"   ></asp:Label>
                    </td>
                </tr>
                <br /><br />
                <tr>
                    <td>
                        <asp:TextBox ID ="TextBox3" runat="server"   placeholder="16 digits"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter the field of Card Number!" ForeColor="Red" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ErrorMessage="Card Number must be of 16 digits only!" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <br /><br />
                <tr>
                    <td colspan="2">
                        <asp:Label runat="server" Text="Expiry Date"  ></asp:Label>
                   
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                        <asp:Label runat="server" Text="CVV" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <br /><br />
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID ="TextBox4" runat="server"   placeholder="MM/YY(Eg:06/1996)"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter the field of Expiry Date!" ForeColor="Red" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                   
                        <asp:TextBox ID ="TextBox5" runat="server"  placeholder="3 digits"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter the field of CVV!" ForeColor="Red" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ErrorMessage="CVV must be of 3 digits only!" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="[0-9]{3}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="PAY" Class="btn btn-success" OnClick="Button1_Click" Height="49px" Width="163px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" HeaderText="Fix the following errors:"></asp:ValidationSummary>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Appointments.aspx" Font-Bold="True">Previous Page</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/WebForm1.aspx">Home Page</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
