<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SName.aspx.cs" Inherits="ParlourWebsite.SName" %>
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

            <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddServices" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAddServices_Click"   />
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        </div>
</asp:Content>
