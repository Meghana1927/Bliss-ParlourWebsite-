<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="ParlourWebsite.AddStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
  
    <div clss="container mt-70">
       <center class="mt-70"> <div class="row"  style="background-color: #d1cdcd1c;
    padding: 30px;
    width: 400px;box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);">
        <div class="form-horizontal"> 
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-4 control-label left" runat="server" Text="Staff Name"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtStaff" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorStaffName" CssClass="text-danger" runat="server" ErrorMessage="Enter Staff Name" ControlToValidate="txtStaff" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" CssClass="col-md-4 control-label left" runat="server" Text="Staff Address:"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtAdrress" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorStaffAddress" CssClass="text-danger" runat="server" ErrorMessage="Enter Staff Address" ControlToValidate="txtAdrress" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            
             <div class="form-group">
                <asp:Label ID="Label3" CssClass="col-md-4 control-label left" runat="server" Text="Staff Contact:"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtContact" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorStaffContact" CssClass="text-danger" runat="server" ErrorMessage="Enter Staff Contact" ControlToValidate="txtContact" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Contact" ControlToValidate="txtContact"></asp:RequiredFieldValidator>
                    
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label4" CssClass="col-md-4 control-label left" runat="server" Text="Specialization:"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="SSpec" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpecialization" CssClass="text-danger" runat="server" ErrorMessage="Specialization" ControlToValidate="SSpec" ForeColor="Red"></asp:RequiredFieldValidator>
               
                    </div>
            </div>
            </div>
        <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddStaff" CssClass="btn btn-success" runat="server" Text="Add Staff" OnClick="btnAddStaff_Click" />
                
            </div>
        </div>
            </div></center>
        <br />
        <br />
        <br />
         <h2>STAFF</h2>
        <hr />
        <div class="panel panel-default"  style=" box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);">
            <div class="panel-heading center">All STAFF</div>

            <asp:repeater ID="rstaff" runat="server">

                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Staff Name</th>
                        <th>Edit</th>
                    </tr>
                </thead>

                <tbody>
                    </HeaderTemplate>

                <ItemTemplate>

                    <tr>
                        <th><%# Eval("StaffID") %></th>
                        <td><%# Eval("Name") %></td>
                        <td>Edit</td>
                    </tr>

                </ItemTemplate>

                <FooterTemplate>      
                </tbody>
            </table>
                    </FooterTemplate>

            </asp:repeater>      
              
           </div>



        </div>


</asp:Content>
