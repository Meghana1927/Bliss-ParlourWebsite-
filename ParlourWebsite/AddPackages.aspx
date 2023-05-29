<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="AddPackages.aspx.cs" Inherits="ParlourWebsite.AddPackages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="from-horizontal">
            <h2> <center>Add Services</center></h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Package Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPackageName" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>
            <br />
            <br />   
             <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                 </div>
            <br />
            <br />
             <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                </div>
            </div>

           <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="BtnAddPackage" CssClass ="btn btn-success " runat="server" Text="Add Services&raquo;" OnClick="BtnAddPackage_Click1" />
                       </div>
                </div>
                

        </div>

    </div>
</asp:Content>
