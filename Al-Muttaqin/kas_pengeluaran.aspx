<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="kas_pengeluaran.aspx.vb" Inherits="Al_Muttaqin.kas_pengeluaran" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/gambar/icon_dollar.png" Width="54px" />
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Kas Pengeluaran"></asp:Label>
        <br />
    </p>
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="188px" Width="600px" Font-Size="Large" AllowSorting="True" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="uraian" HeaderText="uraian" SortExpression="uraian" />
                <asp:BoundField DataField="penggunaan" HeaderText="penggunaan" SortExpression="penggunaan" />
                <asp:BoundField DataField="tanggal" HeaderText="tanggal" SortExpression="tanggal" />
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
        
            <div style="margin-left: 893px">
                <asp:Button ID="Button1" runat="server" Text="Tambah Data" Width="111px" />
</div>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [kas_pengeluaran]" DeleteCommand="DELETE FROM [kas_pengeluaran] WHERE [Id] = @Id" InsertCommand="INSERT INTO [kas_pengeluaran] ([Id], [uraian], [penggunaan], [tanggal]) VALUES (@Id, @uraian, @penggunaan, @tanggal)" UpdateCommand="UPDATE [kas_pengeluaran] SET [uraian] = @uraian, [penggunaan] = @penggunaan, [tanggal] = @tanggal WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="uraian" Type="Int32" />
                <asp:Parameter Name="penggunaan" Type="String" />
                <asp:Parameter Name="tanggal" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uraian" Type="Int32" />
                <asp:Parameter Name="penggunaan" Type="String" />
                <asp:Parameter Name="tanggal" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p style="height: 221px">
        &nbsp;</p>
</asp:Content>
