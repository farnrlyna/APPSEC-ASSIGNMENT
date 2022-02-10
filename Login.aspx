<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="APPSEC_ASSIGNMENT.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <fieldset>
            <legend>Login</legend>
            <p>Username : 
            <asp:TextBox ID="tb_userid" runat="server"></asp:TextBox>
            </p>
            <p>
            Password : <asp:TextBox ID="tb_pwd" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <br />
            <p>
            <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="LoginMe" />
            <br />
            <br />
            <asp:Label ID="lblMessgae" runat="server" EnableViewState="false" >Error message here (lblMessage)</asp:Label>
            </p>
            </fieldset>
        </div>
    </form>
</body>
</html>
