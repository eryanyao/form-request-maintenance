<%@ Page Title="" Language="C#" MasterPageFile="~/function/system.master" AutoEventWireup="true" CodeFile="monitor.aspx.cs" Inherits="function_monitor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3-container w3-dark-grey w3-center w3-text-light-grey w3-padding-32" id="about">
    <div class="w3-container w3-padding-32" id="store">
            <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Main Page</h3>
        </div>
    <div class="w3-row-padding">
            <div class="w3-col l3 m6 w3-margin-bottom">
                <div class="w3-display-container">
                    <div class="w3-display-topleft w3-black w3-padding">FORM</div>
                    <asp:ImageButton runat="server" ID="btnForm" OnClick="btnForm_Click" src="/w3images/form.png" style="width: 99%;" />                
                </div>
            </div>
            <div class="w3-col l3 m6 w3-margin-bottom">
                <div class="w3-display-container">
                    <div class="w3-display-topleft w3-black w3-padding">NORTIFICATION</div>
                    <asp:ImageButton runat="server" ID="btnNorti" OnClick="btnNorti_Click" src="/w3images/megaphone.png" alt="House" style="width: 99%"/>
                </div>
            </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
                <div class="w3-display-container">
                    <div class="w3-display-topleft w3-black w3-padding">REQUESTED</div>
                    <asp:ImageButton runat="server" ID="btmRq" OnClick="btmRq_Click" src="/w3images/settings.png" alt="House" style="width: 99%;" />                  
                </div>
            </div>
            <div class="w3-col l3 m6 w3-margin-bottom">
                <div class="w3-display-container">
                    <div class="w3-display-topleft w3-black w3-padding">LOGOUT</div>
                    <asp:ImageButton OnClick="Unnamed_Click" runat="server" src="/w3images/logout.png" alt="Logout" style="width: 99%"/>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        </div>
</asp:Content>

