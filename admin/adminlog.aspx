<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlog.aspx.cs" Inherits="admin_adminlog" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <style>
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        /* Set a style for all buttons */
        .button {
            background-color: #ccc;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            font-weight: 100;
        }
            /* Add a hover effect for buttons */
            .button:hover {
                opacity: 0.8;
                background-color: darkgray;
                color: white;
                font-weight: 100;
            }
        /* Extra style for the cancel button (red) */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }
        /* Center the avatar image inside this container */
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        /* Avatar image */
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        /* Add padding to containers */
        .container {
            padding: 16px;
        }
        /* The "Forgot password" text */
        span.psw {
            float: right;
            padding-top: 16px;
        }

        .txtbox {
            font-size: large;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:0px auto;width:100%;text-align:center;">
            <img src="../img/logo.png" height="100px" />
            <h3>Unified Maintenance Request System</h3>
            
            <br />
        </div>

        <div class=" w3-container w3-light-green w3-padding-32 w3-padding-large" style="width: 500px; margin: 0px auto;" id="contact">

            <div style="width: 400px; margin: 0px auto;">
                <h1 style="text-align: center;">ADMIN LOGIN PAGE</h1>
                <label for="uname"><b>User Name</b></label>
                <asp:TextBox ID="txtUser" runat="server" CssClass="txtbox"></asp:TextBox><br />

                <label for="psw"><b>Password</b></label>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="txtbox"></asp:TextBox>
                <asp:Label ID="lblError" runat="server"></asp:Label>

                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" ValidationGroup="1" />
            </div>
        </div>

        <div class="w3-container w3-padding-32" id="about">
        <div class="w3-container w3-center" id="store">
            <div style="margin: 0px auto; width: 100%;">
                <asp:Button OnClick="btnBack_Click" ID="Button1" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" />
            </div>
        </div>
            </div>
    </form>
</body>
</html>
