<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="ServicesView.aspx.cs" Inherits="ParlourWebsite.ServicesView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
          <br />
    <br />

<div style="padding-top:50px">
    <div class="row">
    <div class="col-md-4 ">
        <div style="max-width:480px" class="thumbnail">
            
      <asp:Repeater ID="rptrImage" runat="server">
          <ItemTemplate>
      <div class="item active">
           <img width="100%" src ="IMAGES/ServicesImages/<%# Eval("SID")  %>/<%# Eval("Name")  %><%# Eval("Extention")  %>" alt="<%# Eval("Name")  %>" />
               </div>
              </ItemTemplate>
      </asp:Repeater>
            
  </div>
</div>
          
    <div class="col-md-4">
        <div style="max-width:480px"> 
        <asp:Repeater ID="rptrServices" runat="server">
            <ItemTemplate>
        <div class="divDet1">
        <h1 class="ServiceNameView"><%# Eval("SName")  %></h1>
        <span class="proOgPriceView"><%# Eval("Sprice")  %></span>
        
        </div>
                
    <div class="divDet1">
        <asp:button ID="btnAppoint" CssClass="mainButton" runat="server" text="BOOK MY APPOINTMENT" OnClick="btnAppoint_Click" />
  <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>
    </div>
              </ItemTemplate>
        </asp:Repeater>
       </div>
                 </div>
               </div>  
       
  
    <br />
    <br />
</asp:Content>