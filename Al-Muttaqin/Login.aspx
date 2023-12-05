<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Al_Muttaqin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/vendor/css.css">
</head>
<body>
    <div class="login-page">
        <div class="form">
            <form id="form1" runat="server">
                <asp:TextBox ID="username" runat="server" placeholder="Username"></asp:TextBox>
                <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Password">password</asp:TextBox>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Login" BackColor="#33CC33" />
                <p class="message">Not registered? <a href="/registrasi.aspx">Create an account</a></p>
            </form>
  </div>
</div>
</body>
</html>
