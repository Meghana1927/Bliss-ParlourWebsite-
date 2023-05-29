<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="AddService.aspx.cs" Inherits="ParlourWebsite.AddService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
          <center class="mt-70"> <div class="row"  style="background-color: #d1cdcd1c;
    padding: 30px;
    width: 500px;box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);">
        <div class="from-horizontal">
            <h2> <center>Add Services</center></h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Text="Service Name"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtServicetName" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>
            <br /><br />
            <br />   
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-4 control-label" Text="Types Of Services"></asp:Label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlServices" CssClass="form-control" runat="server"></asp:DropDownList>
                    
                </div>
            </div>
            <br />
            <br />
             <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-4 control-label" Text="Price"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                 </div>
            <br />
            <br />
             <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-4 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-8">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                </div>
            </div>
            <br /><br />
           <div class ="form-group">
                    <div class ="col-md-3 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="BtnAdd" CssClass ="btn btn-success " runat="server" Text="Add Services&raquo;" OnClick="BtnAdd_Click" />
                       </div>
                </div>
                

        </div>
        </div>
            </div></center>

    </div>
   
</asp:Content>
