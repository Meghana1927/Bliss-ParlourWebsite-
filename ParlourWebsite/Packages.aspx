<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="ParlourWebsite.Packages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h3>Welcome to View Packages</h3>

    <div class="row" Style="padding-top:50px">

     
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="col-sm-col-3 col-md-3">
                <a href="PackageView.aspx?PID=<%# Eval("PID")  %>" style="text-decoration:none;">
               <div class="thumbnail">
                   <img src="IMAGES/ServicesImages/<%# Eval("PID")  %>/<%# Eval("Name")  %><%# Eval("Extention")  %>" alt="<%# Eval("ImageName")  %>" />
                <div class="caption">
                        <div class="PackageName"><%# Eval("PName")  %></div>
                        <div class="PPrice"><%# Eval("PPrice")  %></span></div>
             </div>
              </div>
               </div>
                

       

        </ItemTemplate>
            </asp:Repeater>
    </div>

</asp:Content>
