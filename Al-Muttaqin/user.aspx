<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="user.aspx.vb" Inherits="Al_Muttaqin.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><p>
        <br />
        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/gambar/icon_pengurus.png" Width="54px" />
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Data Pengguna"></asp:Label>
        <br />
    </p>
    <center style="height: 457px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="248px" Width="852px" Font-Size="Large" AllowSorting="True" DataKeyNames="Id" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="no_handphone" HeaderText="no_handphone" SortExpression="no_handphone" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </center>
        
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [Id] = @Id" InsertCommand="INSERT INTO [User] ([Id], [username], [password], [email], [no_handphone]) VALUES (@Id, @username, @password, @email, @no_handphone)" UpdateCommand="UPDATE [User] SET [username] = @username, [password] = @password, [email] = @email, [no_handphone] = @no_handphone WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="no_handphone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="no_handphone" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
