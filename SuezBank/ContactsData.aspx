<%@    Page Title="" Language="C#" MasterPageFile="~/MainSiteWithoutSlider.Master" AutoEventWireup="true" CodeBehind="ContactsData.aspx.cs" Inherits="SuezBank.ContactsData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <style>

        th td {
        width:50px;
        margin:7px;
        }
    .GridPager a, .GridPager span
    {
        display: block;
        height: 15px;
        width: 15px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
    }
    .GridPager a
    {
        background-color: #f5f5f5;
        color: #969696;
        border: 1px solid #969696;
    }
    .GridPager span
    {
        background-color: #A1DCF2;
        color: #000;
        border: 1px solid #3AC0F2;
    }
    </style>
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Passion+One:400,700' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >
    <div >
       <form id="form" style="width:100%" runat="server" >
          
           <h2><span class="clr-1">C</span>ontact Data:</h2>
           <asp:GridView ID="GridContacts" CssClass="GridPager"  runat="server" ></asp:GridView>
           
           
          </form>
        </div>
</asp:Content>
  <asp:Content ID="Content3" ContentPlaceHolderID="InfoContaint" runat="server">
    </asp:Content>



