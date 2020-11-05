<%@ Page Title="" Language="C#" MasterPageFile="~/function/system.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="function_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .lbl {
            font-weight: bold;
            font-size: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="w3-container w3-dark-grey w3-text-light-grey w3-padding-32" id="about">
        <div class="w3-container w3-center" id="store">
            <div style="margin: 0px auto; width: 100%;">
                <asp:Button OnClick="btnBack_Click" ID="Button1" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" />
            </div>
        </div>
        <div class="w3-container w3-center  w3-padding-32" id="store">
            <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Form #&nbsp; <%=Session["item"].ToString()%></h3>
        </div>

        <!-- Contact section -->
        <asp:Repeater ID="Rcategory" runat="server" DataSourceID="sqlCmd">
            <ItemTemplate>
                <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" style="width: 700px; margin: 0px auto;" id="contact">
                    <div class="w3-content" style="max-width: 600px">
                        <h4 class="w3-center"><b>Maintenance Request Service Form</b></h4>
                        <br />
                        <asp:Label ID="lbldate" runat="server" Text='<%# Eval("date")%>'></asp:Label><br />
                        <div class="w3-section">
                            <label class="lbl">
                                Requester's Name</label>
                            &nbsp;
                         <asp:Label ID="lblName" runat="server" Text='<%# Eval("name")%>'></asp:Label>
                            <div class="w3-section">
                                <label class="lbl">
                                    Requester's Email</label>
                                &nbsp;
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("email")%>'></asp:Label>
                            </div>
                            <div class="w3-section">
                                <label class="lbl">
                                    Requester's Phone Number</label>
                                &nbsp;
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("phone")%>'></asp:Label>
                            </div>
                            <div class="w3-section">
                                <label class="lbl">
                                    Requester's Details</label>
                                &nbsp;
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("role")%>'></asp:Label>
                            </div>
                            <div class="w3-section">
                                <label class="lbl">
                                    Location</label>
                                &nbsp;
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("location")%>'></asp:Label>
                            </div>
                            <div class="w3-section">
                                <label class="lbl">
                                    Problem/Request</label>
                                &nbsp;
                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("problem")%>'></asp:Label>
                            </div>
                            <div class="w3-section">
                                <label class="lbl">Images</label>
                                <div>
                                    <asp:Image ID="Image6" Height="150px" Width="240px" runat="server" ImageUrl='<%# Eval("image")%>' /><br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

        <div class="w3-container w3-center  w3-padding-32" id="store">
            <br />
            <div style="margin: 0px auto; width: 100%;">
                <asp:Button ID="btnBack" OnClick="btnBack_Click" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" />
            </div>
            <br />
        </div>

        <asp:SqlDataSource ID="sqlCmd" runat="server" DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:connStr%>" SelectCommand="SELECT date,name,email,phone,role,location,problem,image FROM form WHERE Id=@item">
            <SelectParameters>
                <asp:SessionParameter Name="item" SessionField="item" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>

