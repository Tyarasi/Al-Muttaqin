<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="rekap_kas.aspx.vb" Inherits="Al_Muttaqin.rekap_kas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/gambar/icon_dollar.png" Width="54px" />
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Rekap Kas"></asp:Label>
        <br />
    </p>
    <center style="height: 457px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="248px" Width="852px" Font-Size="Large" AllowSorting="True" DataKeyNames="Id" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="uraian" HeaderText="uraian" SortExpression="uraian" />
                <asp:BoundField DataField="uang_masuk" HeaderText="uang_masuk" SortExpression="uang_masuk" />
                <asp:BoundField DataField="uang_keluar" HeaderText="uang_keluar" SortExpression="uang_keluar" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [kas]" DeleteCommand="DELETE FROM [kas] WHERE [Id] = @Id" InsertCommand="INSERT INTO [kas] ([Id], [uraian], [uang_masuk], [uang_keluar], [total_kas]) VALUES (@Id, @uraian, @uang_masuk, @uang_keluar, @total_kas)" UpdateCommand="UPDATE [kas] SET [uraian] = @uraian, [uang_masuk] = @uang_masuk, [uang_keluar] = @uang_keluar, [total_kas] = @total_kas WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="uraian" Type="String" />
                <asp:Parameter Name="uang_masuk" Type="Int32" />
                <asp:Parameter Name="uang_keluar" Type="Int32" />
                <asp:Parameter Name="total_kas" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uraian" Type="String" />
                <asp:Parameter Name="uang_masuk" Type="Int32" />
                <asp:Parameter Name="uang_keluar" Type="Int32" />
                <asp:Parameter Name="total_kas" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </asp:Content>
