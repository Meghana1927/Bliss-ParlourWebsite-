<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="ParlourWebsite.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top:50px;">
        <div class="col-md-9">

       <h4 class="proNameViewCart">MY CART</h4>
            <asp:Repeater ID="rptrCartProducts" runat="server">
                <ItemTemplate>
        <!---Show cart detail start--->
        <div class="media" style="border:1px solid black;">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" width="100px" src="IMAGES/ServicesImages/<%# Eval("SID")  %>/<%# Eval("Name")  %><%# Eval("Extention")  %>" alt="<%# Eval("Name")  %>" />
                    </a>
            </div>

            <div class="media-body">
                <h4 class="media-heading proNameViewCart"><%# Eval("SName")  %></h4>
                <p class="proOgPrice" ><%# Eval("Sprice")  %></p>
                <p>
                 <asp:button ID="btnRemoveCart" CssClass=".RemoveButton1 " runat="server" text="REMOVE SERVICE" />
                    </p>
            </div>
             </div>
                    </ItemTemplate>
                </asp:Repeater>
        </div>
        <!---Show cart detail End--->
        <div class="col-md-4">
            <!------->
<div>
    <label>CART TOTAL</label>
    <span class="pull-right-priceGray">1500</span>
</div>

             </div>
            <!--------->
       <div class="ServicePrice">
            <label>CART TOTAL</label>
    <span class="pull-right-n">1500</span>

       </div>
        <div>
 <asp:button ID="btnBuy" CssClass="buyNowbtn" runat="server" text="REMOVE SERVICE"/>

        </div>

    </div>


</asp:Content>
