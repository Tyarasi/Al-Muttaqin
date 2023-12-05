<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="kas_pemasukan.aspx.vb" Inherits="Al_Muttaqin.kas_pemasukan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <br />
        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/gambar/icon_dollar.png" Width="54px" />
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Kas Pemasukan"></asp:Label>
        <br />
    </p>
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="188px" Width="600px" Font-Size="Large" AllowPaging="True" AllowSorting="True" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="Jumlah" HeaderText="Jumlah" SortExpression="Jumlah" />
                <asp:BoundField DataField="tanggal" HeaderText="tanggal" SortExpression="tanggal" />
                <asp:BoundField DataField="atas_nama" HeaderText="atas_nama" SortExpression="atas_nama" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [pemasukan]" DeleteCommand="DELETE FROM [pemasukan] WHERE [Id] = @Id" InsertCommand="INSERT INTO [pemasukan] ([Id], [Jumlah], [tanggal], [atas_nama]) VALUES (@Id, @Jumlah, @tanggal, @atas_nama)" UpdateCommand="UPDATE [pemasukan] SET [Jumlah] = @Jumlah, [tanggal] = @tanggal, [atas_nama] = @atas_nama WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Jumlah" Type="Int32" />
                <asp:Parameter Name="tanggal" Type="String" />
                <asp:Parameter Name="atas_nama" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Jumlah" Type="Int32" />
                <asp:Parameter Name="tanggal" Type="String" />
                <asp:Parameter Name="atas_nama" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p style="height: 221px">
        &nbsp;</p>

</asp:Content>
