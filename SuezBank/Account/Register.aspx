<%@ Page Title="Register" Language="C#" MasterPageFile="~/MainSiteWithoutSlider.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SuezBank.Account.Register" %>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">

<link rel="stylesheet" type="text/css" media="screen" href="../css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="../css/style.css">
<link href='http://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Passion+One:400,700' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<%--<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">--%>
      <div class="page5-col-2">
     <form id="form" runat="server" >
    <main aria-labelledby="title">
        <h2 id="title">Suez Canal Bank</h2>
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary ForeColor="red" runat="server" CssClass="text-danger" />
        <div class="row">
            <asp:Label runat="server" Font-Bold="true" AssociatedControlID="Email" CssClass="col-md-2 col-form-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server"  BackColor="White" Height="30px" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator ForeColor="red" runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="row">
            <asp:Label runat="server"  Font-Bold="true" AssociatedControlID="Password" CssClass="col-md-2 col-form-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" BackColor="White" Height="30px" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ForeColor="red" runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="row">
            <asp:Label runat="server"  Font-Bold="true" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 col-form-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" BackColor="White" Height="30px" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ForeColor="red" runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="row">
            <div class="offset-md-2 col-md-10">
                <asp:Button Height="40px"  Font-Bold="true" runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-outline-dark" />
            </div>
        </div>
    </main>

         </form>
         </div>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="InfoContaint" runat="server">
    </asp:Content>


