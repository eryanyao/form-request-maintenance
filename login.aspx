<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        /* Bordered form */
        form {
            border: 3px solid #f1f1f1;
        }
        /* Full-width inputs */
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
            background-color: green;
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
                background-color: lightgreen;
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
        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            button:hover {
                opacity: 0.8;
            }

        /* Extra styles for the cancel button */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .dot {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        /* Modal Content/Box */
        .dot-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button (x) */
        .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

        /* Add Zoom Animation */
        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s;
        }

        @-webkit-keyframes animatezoom {
            from {
                -webkit-transform: scale(0);
            }

            to {
                -webkit-transform: scale(1);
            }
        }

        @keyframes animatezoom {
            from {
                transform: scale(0);
            }

            to {
                transform: scale(1);
            }
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
    <style>




</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <div class="w3-container w3-card w3-white" style="align-content: center; width: 430px; vertical-align: central; margin: 0 auto;">
        <div class="w3-container w3-padding-32" id="projects">
            <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16 w3-center">Login</h3>
        </div>
        <div style="align-content: center; width: 400px; vertical-align: central; margin: 0 auto;">

            <asp:Panel runat="server" ID="loginControlPanel" DefaultButton="btnLogin">
                <div class="container">
                    <label for="uname"><b>User Name</b></label>
                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>

                    <label for="psw"><b>Password</b></label>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>

                    <asp:Label ID="lblError" runat="server"></asp:Label>

                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" ValidationGroup="1" />

                    <br />

                </div>
            </asp:Panel>
            <span class="psw">Forget username or password, please click >>&nbsp;&nbsp;<br />
                <a href="#" class=" w3-text-blue w3-hover-light-blue">Forgot Your Password?</a></span>
            <span class="psw">If new student or staff, please click >>&nbsp;&nbsp;<br />
                <a onclick="document.getElementById('id01').style.display='block'" style="width: auto;" class=" w3-text-blue w3-hover-light-blue">New User</a></span>
            <br />
            <br />
        </div>
        <br />
        <br />
    </div>
    <br />
    <br />
    <div id="id01" class="dot w3-center" style="margin:0px auto;"  >
        <br /><br />
        <div style="background-color:white;width:700px;margin:0px auto;" class="w3-center"  >
        <form class="dot-content animate" style="width:600px;margin:0px auto;" action="/action_page.php" method="post">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <br>
                <br>
            </div>
            <div class="container ">
                <h3>Notice for new member</h3>
                <label>For the first time user, please login with your Staff ID or Student ID for both username and password. E.g.</label>
            </div>

            <div class="container" style="background-color:#ccc;width:500px;margin:0px auto; font-weight:bolder;">
                Username: i18016358</br>
                Password: i18016358</br>
            </div>
            <br />
            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Close</button><br /><br />
        </form>
            </div>
    </div>

    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</asp:Content>

