<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="ParlourWebsite.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br />
    <br />
    <h3>Welcome to View Services</h3>

    <div class="row" Style="padding-top:50px">

     
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="col-sm-col-3 col-md-3">
                <a href="ServicesView.aspx?SID=<%# Eval("SID")  %>" style="text-decoration:none;">
               <div class="thumbnail"  >
                   <img style="height:250px"  src="IMAGES/ServicesImages/<%# Eval("SID")  %>/<%# Eval("Name")  %><%# Eval("Extention")  %>" alt="<%# Eval("ImageName")  %>" />
                <div class="caption">
                        <div class="serviceName"><%# Eval("ServiceName")  %></div>
                        <div class="SPrice"><%# Eval("SPrice")  %></span></div>
             </div>
              </div>
               </div>
                

       

        </ItemTemplate>
            </asp:Repeater>
    </div>
</asp:Content>
