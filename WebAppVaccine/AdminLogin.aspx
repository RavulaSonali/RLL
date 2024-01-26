<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebAppVaccine.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- kit.fontawesome.com <script> -->
    <script
      src="https://kit.fontawesome.com/d5ec53e195.js"
      crossorigin="anonymous"
    ></script>

    <!-- kit.fontawesome.com link -->
    <link
      rel="stylesheet"
      href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
      integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
      crossorigin="anonymous"
    />
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    button{-webkit-appearance:button}button{text-transform:none}button{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}button{border-radius:0}*{box-sizing:border-box}
        .auto-style2 {
            margin-left: 40px;
            height: 33px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Admin Login Page</h2>
            <p class="auto-style1"> 
                <asp:Label ID="Label1" runat="server" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtUser" runat="server" Height="25px" Width="163px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUser" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p class="auto-style1"> 
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtPwd" runat="server" Height="25px" Width="162px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPwd" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p class="auto-style2"> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="LblCaptcha" runat="server" Text="Captcha" Font-Bold="False" Font-Italic="True" Font-Size="X-Large" ForeColor="#009933"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button onclick="window.location.reload();">
                    <i class="fa-solid fa-arrows-rotate"></i>
                </button>
            </p>
            <p class="auto-style1"> 
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Captcha"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtCaptcha" runat="server" Height="25px" Width="163px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Captcha" ForeColor="Red" ControlToValidate="TxtCaptcha"></asp:RequiredFieldValidator>
                </p>
            <p class="auto-style1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnLogin" runat="server" Height="27px" OnClick="Button1_Click" Text="Login" Width="78px" Font-Overline="False" Font-Size="Large" />
&nbsp; </p>
            <p class="auto-style1"> &nbsp;&nbsp;</p>
            <p class="auto-style1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
        </div>
    </form>
</body>
</html>
