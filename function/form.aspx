<%@ Page Title="" Language="C#" MasterPageFile="~/function/system.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="function_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .lbl{
            font-weight:bold;
            font-size:16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3-container w3-dark-grey w3-text-light-grey w3-padding-32" id="about">
        <div class="w3-container" id="store">
            <div style="width: 100%;">
                <asp:Button OnClick="btnBack_Click" CausesValidation="false" ID="Button1" runat="server" CssClass="w3-button w3-hover-yellow w3-center w3-black w3-large" Text="Back" />
            </div>
        </div>
    <div class="w3-container w3-center  w3-padding-32" id="store">
            <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Form</h3>
        </div>

          <!-- Contact section -->
            <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" style="width:700px;margin:0px auto;"  id="contact">               
                <div class="w3-content" style="max-width: 600px">
                    <h4 class="w3-center"><b>Maintenance Request Service Form</b></h4>   
                              <div class="w3-section">
                                  <asp:ValidationSummary ID="vs1" runat="server" ForeColor="Red" />
                              </div>       
                   
                        <div class="w3-section">
                            <label class="lbl"> <label style="color:red">*</label>Requester's Name</label>
                            <asp:TextBox ID="txtName" runat="server" class="w3-input w3-border"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTxtName" runat="server" ErrorMessage="Field Require." 
                        ForeColor="Red" ControlToValidate="txtName">
                </asp:RequiredFieldValidator>
                        </div>
                        <div class="w3-section">
                            <label class="lbl"> <label style="color:red">*</label>Requester's Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" class="w3-input w3-border"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Require." 
                        ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic">
                </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email format invalid."
                            CssClass="valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="valid1" ForeColor="Red" ></asp:RegularExpressionValidator>
                        </div>
                        <div class="w3-section">
                            <label class="lbl"> <label style="color:red">*</label>Requester's Phone Number</label>
                            <asp:TextBox ID="txtPhone" TextMode="Phone" runat="server" class="w3-input w3-border"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field Require." 
                        ForeColor="Red" ControlToValidate="txtPhone">
                </asp:RequiredFieldValidator>
                        </div>
                    <div class="w3-section">
                            <label class="lbl"> <label style="color:red">*</label>Requester's Details</label>
                            <asp:DropDownList ID="ddlRole" runat="server" class="w3-input w3-border"><asp:ListItem>Staff</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field Require." 
                        ForeColor="Red" ControlToValidate="ddlRole">
                </asp:RequiredFieldValidator>
                        </div>
                    <div class="w3-section">
                            <label class="lbl"> <label style="color:red">*</label>Location</label>
                            <asp:DropDownList ID="ddlLocation" runat="server" class="w3-input w3-border" DataSourceID="sqlLocation" DataTextField="name" DataValueField="name"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field Require." 
                        ForeColor="Red" ControlToValidate="ddlLocation">
                </asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="sqlLocation" runat="server" DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:connStr%>" SelectCommand="SELECT name FROM Location"></asp:SqlDataSource>
                        </div>
                    <div class="w3-section">
                            <label class="lbl"> <label style="color:red">*</label>Problem/Request</label>
                            <asp:TextBox ID="txtProblem" TextMode="MultiLine" runat="server" class="w3-input w3-border" placeholder="Please inform us the clear problem and detail (location). E.g. A3-10 classroom projector is broken."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field Require. Please inform us the clear problem and detail (location). E.g. A3-10 classroom projector is broken." 
                        ForeColor="Red" ControlToValidate="txtProblem">
                </asp:RequiredFieldValidator>
                        </div>
                    <div class="w3-section">
                            <label class="lbl">Images</label>
                            <fieldset style="width: 300px;">
                    <legend>Show image preview before upload</legend>
                    <div style="text-align: center;">
                        <asp:Image ID="Image6" Height="150px" Width="240px" runat="server" /><br />
                        <asp:FileUpload ID="FileUpload6" runat="server" onchange="ShowImagePreview6(this);" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Please upload the proper image file type."
                            ForeColor="Red" ControlToValidate="FileUpload6" Display="Dynamic" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpg|.JPG|.gif|.GIF|.png|.PNG|.bmp|.BMP)$">
                        </asp:RegularExpressionValidator>
                    </div>
                </fieldset>
                        </div>
                    <asp:Button runat="server" id="btnSubmit" class="w3-button w3-block w3-black w3-margin-bottom" Text="Submit" OnClick="btnSubmit_Click"/>
                        
                   <asp:Label ID="lblError" runat="server"></asp:Label>
                </div>
            </div>
                </div>
   
    <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            function ShowImagePreview6(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#<%=Image6.ClientID%>').prop('src', e.target.result)
                        .width(240)
                        .height(150);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
</asp:Content>

