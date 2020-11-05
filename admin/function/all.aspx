  <%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="all.aspx.cs" Inherits="admin_function_request_all" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Header -->
    <header class="w3-container" style="padding-top: 22px">
        <h5><b><i class="fa fa-location-arrow "></i>&nbsp;Maintenance Request Form</b></h5>
    </header>
    <asp:multiview id="mv1" runat="server" activeviewindex="0">
        <asp:View ID="view1" runat="server">
            <div class="w3-container">
                <h5>
                    <asp:Label ID="lbltlt" runat="server"></asp:Label></h5>
                <asp:Button ID="btnPen" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Received" OnClick="btnPen_Click" />
                <asp:Button ID="btnPro" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="In Process" OnClick="btnPro_Click"  />
                <asp:Button ID="btnSuc" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Successfully" OnClick="btnSuc_Click" />
            </div>
        </asp:View>
        <asp:View ID="receive" runat="server">

            <div class="w3-container">
                <asp:Button ID="Button3" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" CommandArgument="view1" CommandName="SwitchViewByID" />
                <h5>Received Request</h5>
                <asp:Repeater ID="Rcategory" runat="server" DataSourceID="sqlCate">
                    <ItemTemplate>
                        <div class="w3-container w3-white w3-padding-small" style="width: 700px;" id="contact">
                            <div class="w3-content" style="max-width: 600px">
                                <div class="w3-section">
                                    <h4 class="w3-left"><b>Maintenance Request Form #&nbsp;<asp:Label ID="no" runat="server" Text='<%# Eval("Id")%>'></asp:Label></b></h4>
                                    <br>
                                    <br />
                                </div>
                                <div class=" w3-right w3-right-align">
                                    <asp:Image ID="img" runat="server" ImageUrl='<%# Eval("image")%>' Height="150px" />
                                </div>
                                <div class="w3-section">
                            <asp:Label class="lbl" ID="datetime" runat="server" Text='<%# Eval("date")%>'></asp:Label>
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
                                <asp:Button ID="Button3" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="View Detail"  CommandArgument='<%# Eval("Id")%>' OnCommand="viewDetail_Command" CommandName="btnClick" />
                                 <asp:Button ID="btnReceive" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Received" CommandArgument='<%# Eval("Id")%>' OnCommand="btnReceive_Command" CommandName="receive" />
                                <br /><br />

                            </div>
                            
                        </div>
                        <br />
                        
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
            </div>


        </asp:View>
        <asp:View ID="process" runat="server">
             <div class="w3-container">
                <asp:Button ID="Button5" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" CommandArgument="view1" CommandName="SwitchViewByID" />
            <h5>In Process Request</h5>
                  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sqlCate">
                    <ItemTemplate>
                        <div class="w3-container w3-white w3-padding-small" style="width: 700px;" id="contact">
                            <div class="w3-content" style="max-width: 600px">
                                <div class="w3-section">
                                    <h4 class="w3-left"><b>Maintenance Request Form #&nbsp;<asp:Label ID="no" runat="server" Text='<%# Eval("Id")%>'></asp:Label></b></h4>
                                    <br>
                                    <br />
                                </div>
                                <div class=" w3-right w3-right-align">
                                    <asp:Image ID="img" runat="server" ImageUrl='<%# Eval("image")%>' Height="150px" />
                                </div>
                                <div class="w3-section">
                            <asp:Label class="lbl" ID="datetime" runat="server" Text='<%# Eval("date")%>'></asp:Label>
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
                                <asp:Button ID="Button3" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="View Detail"  CommandArgument='<%# Eval("Id")%>' OnCommand="viewDetail_Command" CommandName="btnClick" />
                                 <asp:Button ID="btnCompleted" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Completed" CommandArgument='<%# Eval("Id")%>' CommandName="completed" OnCommand="btnCompleted_Command" />
                                <br /><br />

                            </div>                            
                        </div>
                        <br />
                        
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
                 </div>

        </asp:View>
        <asp:View ID="success" runat="server">
             <div class="w3-container">
                <asp:Button ID="Button6" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" CommandArgument="view1" CommandName="SwitchViewByID"   />
            <h5>Successful Request</h5>
                  <asp:Repeater ID="Repeater2" runat="server" DataSourceID="sqlCate">
                    <ItemTemplate>
                        <div class="w3-container w3-white w3-padding-small" style="width: 700px;" id="contact">
                            <div class="w3-content" style="max-width: 600px">
                                <div class="w3-section">
                                    <h4 class="w3-left"><b>Maintenance Request Form #&nbsp;<asp:Label ID="no" runat="server" Text='<%# Eval("Id")%>'></asp:Label></b></h4>
                                    <br>
                                    <br />
                                </div>
                                <div class=" w3-right w3-right-align">
                                    <asp:Image ID="img" runat="server" ImageUrl='<%# Eval("image")%>' Height="150px" />
                                </div>
                                <div class="w3-section">
                            <asp:Label class="lbl" ID="datetime" runat="server" Text='<%# Eval("date")%>'></asp:Label>
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
                                <asp:Button ID="viewDetail" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="View Detail" CommandArgument='<%# Eval("Id")%>' OnCommand="viewDetail_Command" CommandName="btnClick" />          
                                <br /><br />

                            </div>
                            
                        </div>
                        <br />
                        
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
                 </div>
        </asp:View>
        <asp:View ID="viewDetail" runat="server">
            <div class="w3-container w3-dark-grey w3-text-light-grey w3-padding-32" id="about">
        <div class="w3-container w3-center" id="store">
            <div style="margin: 0px auto; width: 100%;">
                <asp:Button CommandName="PrevView" ID="Button1" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" />
            </div>
        </div>
        <div class="w3-container  w3-padding-32" id="store">
            <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Form #&nbsp; <%=Session["item"].ToString()%></h3>
        </div>

        <!-- Contact section -->
        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="sqlCmd">
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
            <div style=" width: 100%;">
                <asp:Button ID="btnBack" CommandName="PrevView"      runat="server" CssClass="w3-button w3-hover-yellow w3-black w3-large" Text="Back" />
            </div>
            <br />
        </div>

        <asp:SqlDataSource ID="sqlCmd" runat="server" DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:connStr%>" SelectCommand="SELECT date,name,email,phone,role,location,problem,image FROM form WHERE Id=@item">
            <SelectParameters>
                <asp:SessionParameter Name="item" SessionField="item" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </asp:View>

    </asp:multiview>
    <br />
    <br />
                <asp:SqlDataSource ID="sqlCate" runat="server" DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:connStr%>" SelectCommand="SELECT Id,location,problem,image,status,date FROM form WHERE status=@pending">
                <SelectParameters>
                    <asp:SessionParameter Name="pending" SessionField="pending" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
</asp:Content>

