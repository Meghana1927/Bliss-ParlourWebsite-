<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="AddTYPServices.aspx.cs" Inherits="ParlourWebsite.AddTYPServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div clss="container">
        <div class="form-horizontal"><br />
            <br />
            <h2>Add Types Of Services</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Service Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtService" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorServiceName" CssClass="text-danger" runat="server" ErrorMessage="Enter Service Name" ControlToValidate="txtService" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            </div>
            <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddServices" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAddServices_Click"   />
                
            </div>
        </div>
        <br />
        <br />
        <br />
    <h2>SERVICES </h2>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Services</div>

            <asp:repeater ID="rservices" runat="server">

                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Services</th>
                        <th>Edit</th>
                    </tr>
                </thead>

                <tbody>
                    </HeaderTemplate>

                <ItemTemplate>

                    <tr>
                        <th><%# Eval("ServiceID") %></th>
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
