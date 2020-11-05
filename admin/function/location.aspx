<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="location.aspx.cs" Inherits="admin_function_location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Header -->
    <header class="w3-container" style="padding-top: 22px">
        <h5><b><i class="fa fa-location-arrow "></i>&nbsp;Building Location</b></h5>
    </header>
    
    <asp:SqlDataSource ID="locationsql" runat="server" SelectCommand="SELECT Id,name FROM Location" UpdateCommand="UPDATE Location SET name = @name WHERE Id = @id" ConnectionString="<%$ ConnectionStrings:connStr %>" InsertCommand="INSERT INTO Location (name) values (@name)" DeleteCommand="DELETE FROM Location WHERE Id=@Id;">
        <DeleteParameters>
            <asp:Parameter Name="Id" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" />
            <asp:Parameter Type="String" Name="Id" />
        </UpdateParameters>
    </asp:SqlDataSource> 

     <div class="w3-container">
         <h5>All Location</h5>
         <asp:GridView ID="GridView1" Runat="server" 
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
                 <asp:BoundField ReadOnly="True" ItemStyle-Width="100px" HeaderText="Id" 
                    InsertVisible="False" DataField="Id"
                    SortExpression="Id">
<ItemStyle Width="100px"></ItemStyle>
                 </asp:BoundField>
                <asp:BoundField HeaderText="name" 
                    DataField="name" 
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
         New Location: &nbsp; <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
         <asp:Button ID="btnSubmit" runat="server" Text="Add" OnClick="btnSubmit_Click" /><br />
         <asp:Label ID="lblError" runat="server"></asp:Label>
         </div>
    <br />
    <br />
    

</asp:Content>

