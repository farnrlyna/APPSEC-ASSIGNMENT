<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="APPSEC_ASSIGNMENT.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SITConnect Registration Form</title>

    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tb_password.ClientID %>').value;            if (str.length < 12) {                document.getElementById("lbl_pwdchecker").innerHTML = "Password Length Must be at Least 12 Characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too short");
            }            else if (str.search(/[0-9]/) == -1) {                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 number";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no number");
            }            else if (str.search(/[A-Z]/) == -1) {                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 uppercase";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no uppercase");            }            else if (str.search(/[a-z]/) == -1) {                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 lowercase";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no lowercase");            }            else if (str.search(/[^a-zA-Z0-9]/) == -1) {                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 special characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no special characters");            }            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent!"            document.getElementById("lbl_pwdchecker").style.color = "Green";
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
