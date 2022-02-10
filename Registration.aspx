﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="APPSEC_ASSIGNMENT.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SITConnect Registration Form</title>

    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tb_password.ClientID %>').value;
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too short");
            }
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no number");
            }
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no uppercase");
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no lowercase");
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no special characters");
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            SITConnect<br />
            <br />
            <br />
            Registration
            <br />
            <br />
            <br />
            First Name :<asp:TextBox ID="tb_Fname" runat="server"></asp:TextBox>
            <br />
            <br />
            Last Name :<asp:TextBox ID="tb_Lname" runat="server"></asp:TextBox>
            <br />
            <br />
            Credit Card Info :<asp:TextBox ID="tb_card" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <br />
            <br />
            Email Address :<asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            <br />
            <br />
            Password :<asp:TextBox ID="tb_password" runat="server" onkeyup="javascript:validate()" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lbl_pwdchecker" runat="server" Text="pwdchecker"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbl_checkpwd" runat="server" Text="checkpwd"></asp:Label>
            <br />
            <asp:Button ID="chkpwd" runat="server" OnClick="chkpwd_Click" Text="Check Password" />
            <br />
            <br />
            Date of Birth :<asp:TextBox ID="tb_dob" runat="server"></asp:TextBox>
            <br />
            <br />
            Photo :<asp:FileUpload ID="Pic" runat="server" />
            <br />
            <br />
            <br />
            <asp:Button ID="btn_signup" runat="server" Text="Sign Up" OnClick="btn_signup_Click" />
        </div>
    </form>
</body>
</html>