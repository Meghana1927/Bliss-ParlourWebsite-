<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="PackageView.aspx.cs" Inherits="ParlourWebsite.PackageView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
    <br />

<div style="padding-top:50px">
    <div class="col-md-5">
        <div style="max-width:480px" class="thumbnail">
            
      <asp:Repeater ID="rptrImage" runat="server">
          <ItemTemplate>
      <div class="item active">
           <img src ="IMAGES/ServicesImages/<%# Eval("SID")  %>/<%# Eval("Name")  %><%# Eval("Extention")  %>" alt="<%# Eval("Name")  %>" />
               </div>
              </ItemTemplate>
      </asp:Repeater>
            
  </div>
</div>
        </div>
   
    <div class="col-md-5">
        <div style="max-width:480px">
        <asp:Repeater ID="rptrServices" runat="server">
            <ItemTemplate>
        <div class="divDet1">
        <h1 class="ServiceNameView"><%# Eval("PName")  %></h1>
        <span class="proOgPriceView"><%# Eval("PPrice")  %></span>
        
        </div>
                
    <div class="divDet1">
        <asp:button ID="btnAddtoCart" CssClass="mainButton" runat="server" text="ADD TO CART" OnClick="btnAddtoCart_Click" />
  <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>
    </div>
              </ItemTemplate>
        </asp:Repeater>
       </div>
                 </div>
                 
       
  
    <br />
    <br />
</asp:Content>
