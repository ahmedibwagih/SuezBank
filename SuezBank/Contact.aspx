<%@ Page Title="Contact" Language="C#" MasterPageFile="~/MainSiteWithoutSlider.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SuezBank.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">

<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Passion+One:400,700' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->

</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
     <div class="page5-col-2">
     <form id="form" runat="server" >
         <h2><span class="clr-1">C</span>ontact form:</h2>
            <fieldset>
              <label><strong>Full name:</strong>
                <input id="TxtName" type="text" runat="server" value="">
                <strong class="clear"></strong></label>
              <label><strong>Email:</strong>
                <input id="TxtEmail" type="text" runat="server" value="">
                <strong class="clear"></strong></label>
                <label><strong>Phone:</strong>
                <input id="TxtPhone" type="text" runat="server" value="">
                <strong class="clear"></strong></label>

                 <label><strong>Age:</strong>
                <input id="TxtAge" type="text" runat="server" value="">
                <strong class="clear"></strong></label>

                 <label><strong>NAT Id:</strong>
                <input id="TxtNationalId" type="text" runat="server" value="">
                <strong class="clear"></strong></label>

              <label><strong>Message:</strong>
                <textarea id="TxtMessage" runat="server"></textarea>
                <strong class="clear"></strong></label>
              <strong class="clear"></strong>
              <div class="btns"  style="text-align:center;align-content:center;margin-left:63px">
                  <asp:Button CssClass="link-2" ID="Button1" runat="server" Text="Send" Width="50px" Height="30px" OnClick="Button1_Click" />
                  </div>
            </fieldset>
          </form>
  
  </div>
</asp:Content>

  <asp:Content ID="Content2" ContentPlaceHolderID="InfoContaint" runat="server">
    
          <div class="page5-col-1 border-right">
              
          <h2><span class="clr-1">C</span>ontact info</h2>
          <dl class="adr">
            <dt class="clr-1"><strong>Suez Canal Bank</strong></dt>
            <dd><strong>8901 Marmora Road, Glasgow, D04 89GR</strong></dd>
            <dd><span>Telephone:</span><strong>+1 959 603 6035</strong></dd>
            <dd><span>Fax:</span><strong>+1 504 889 9898</strong></dd>
            <dd><span>Email:</span><a href="#" class="link">mail@suezcanalbank.com</a></dd>
            <dd>&nbsp;</dd>
            <dd><strong>9863 Mill Road, Cambridge, MG09 99HT</strong></dd>
            <dd><span>Telephone:</span><strong>+1 959 603 6035</strong></dd>
            <dd><span>Fax:</span><strong>+1 504 889 9898</strong></dd>
            <dd><span>Email:</span><a href="#" class="link">mail@thomsander.com</a></dd>
          </dl>
        </div>
    </asp:Content>
