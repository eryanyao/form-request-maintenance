<%@ Page Title="" Language="C#" MasterPageFile="~/function/system.master" AutoEventWireup="true" CodeFile="request.aspx.cs" Inherits="function_request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .lbl{
            font-weight:bold;
            font-size:16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="w3-container w3-dark-grey  w3-text-light-grey w3-padding-32" id="about">
        <div class="w3-container" id="store">
            <div style="width: 100%;">
                <asp:Button OnClick="btnBack_Click" CausesValidation="false"     ID="Button1" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" />
            </div>
        </div>
        <div class="w3-container w3-padding-32 w3-center" id="store">
            <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Requested</h3>
        </div>
        <asp:Repeater ID="Rcategory" runat="server" DataSourceID="sqlCate">
            <ItemTemplate>
                <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" style="width: 800px; margin: 0px auto;" id="contact">
                    <div class="w3-content" style="max-width: 700px">
                        <div class="w3-section">
                            <h4 class="w3-left"><b>Maintenance Request Form #&nbsp;<asp:Label ID="no" runat="server" Text='<%# Eval("Id")%>'></asp:Label></b></h4>
                            <br><br />
                        </div>
                        <div class="w3-section">
                            <label class="lbl">Date Time:</label>
                            &nbsp;
                            <asp:Label ID="datetime" runat="server" Text='<%# Eval("date")%>'></asp:Label><br />
                        </div>

                        <div class="w3-section">
                            <label class="lbl">Location:</label>
                            &nbsp;
                        <asp:Label ID="location" runat="server" Text='<%# Eval("location")%>'></asp:Label>
                        </div>
                        <div class="w3-section">
                            <label class="lbl">Problem/Request:</label>
                            &nbsp;
                        <asp:Label ID="problem" runat="server" Text='<%# Eval("problem")%>'></asp:Label><br />
                        </div>
                        <div class="w3-section">
                            <label class="lbl">Status:</label>
                            &nbsp;
                        <asp:Label ID="status" runat="server" Text='<%# Eval("status")%>'></asp:Label>
                        </div>
                        <asp:Button ID="btnDetail" runat="server" Text="View" CommandArgument='<%# Eval("Id")%>' OnCommand="btnDetail_Command" CommandName="btnClick" />
                    </div>
                </div>
                <br /><br />
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <asp:SqlDataSource ID="sqlCate" runat="server" DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:connStr%>" SelectCommand="SELECT Id,location,problem,status,date FROM form WHERE refID=@Id">
        <SelectParameters>
            <asp:SessionParameter Name="Id" SessionField="Id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

