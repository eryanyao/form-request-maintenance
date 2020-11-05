<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="requested.aspx.cs" Inherits="admin_function_requested" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Header -->
    <header class="w3-container" style="padding-top: 22px">
        <h5><b><i class="fa fa-envelope "></i>&nbsp;Request Form</b></h5>
    </header>
    <div class="w3-container">
        <h5>All Maintenance Request Form</h5>

        <asp:SqlDataSource ID="locationsql" runat="server" SelectCommand="SELECT Id,name,email,phone,role,location,problem,image,refID,status,date FROM form" UpdateCommand="UPDATE Location SET name = @name WHERE Id = @id" ConnectionString="<%$ ConnectionStrings:connStr %>" DeleteCommand="DELETE FROM form WHERE Id=@Id;">
            <DeleteParameters>
                <asp:Parameter  Name="Id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" />
                <asp:Parameter Type="String" Name="Id" />
            </UpdateParameters>
        </asp:SqlDataSource>

        
            <asp:GridView ID="GridView1" runat="server"
                DataSourceID="locationsql" DataKeyNames="Id"
                AllowPaging="True"
                BorderWidth="1px" BackColor="White"
                CellPadding="3" BorderStyle="Solid" BorderColor="#999999" AutoGenerateColumns="False" ForeColor="Black" GridLines="Vertical">
                <FooterStyle
                    BackColor="#CCCCCC"></FooterStyle>
                <PagerStyle ForeColor="Black" HorizontalAlign="Center"
                    BackColor="#999999"></PagerStyle>
                <HeaderStyle ForeColor="White" Font-Bold="True"
                    BackColor="Black"></HeaderStyle>
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField HeaderText="Update" ShowEditButton="True" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:CommandField>
                    <asp:BoundField ReadOnly="True" HeaderText="ID"
                        InsertVisible="False" DataField="Id"
                        SortExpression="Id">                   
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Name"
                        DataField="name"
                        SortExpression="name" ItemStyle-Width="100px">                       
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Email"
                        DataField="email"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Phone"
                        DataField="phone"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Role"
                        DataField="role"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Location"
                        DataField="location"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Problem"
                        DataField="problem"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Image"
                        DataField="image"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Reference"
                        DataField="refID"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Status"
                        DataField="status"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Date"
                        DataField="date"
                        SortExpression="name" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ItemStyle-Width="100px">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:CommandField>
                </Columns>
                <SelectedRowStyle ForeColor="White" Font-Bold="True"
                    BackColor="#000099"></SelectedRowStyle>
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
            <br />
        </div>
</asp:Content>

