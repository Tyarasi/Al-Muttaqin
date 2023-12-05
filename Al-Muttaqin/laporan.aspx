<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Al_Muttaqin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/vendor/css.css">
    <style type="text/css">
        #form1 {
            height: 582px;
        }
        .auto-style12 {
            margin-left: 298px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            height: 673px;
        }
    </style>
</head>
<body style="height: 894px">
    <form id="form1" runat="server" class="auto-style14">
        <asp:Panel ID="Panel2" runat="server" Width="1386px">
            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="XX-Large" ForeColor="White" Text="Al - Muttaqin"></asp:Label>
            <asp:Panel ID="Panel1" runat="server" BackColor="#69A84F" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="54px" style="margin-left: 708px; margin-top: 0px" Width="534px">
                <center style="width: 556px; margin-right: 0px">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">Imsyak</asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">Shubuh</asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">Dzuhur</asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">Ashar</asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">Maghrib</asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">Isya</asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">04:32</asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">04:42</asp:TextBox>
                <asp:TextBox ID="TextBox9" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">12:08</asp:TextBox>
                <asp:TextBox ID="TextBox10" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">15:32</asp:TextBox>
                <asp:TextBox ID="TextBox11" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">18:12</asp:TextBox>
                <asp:TextBox ID="TextBox12" runat="server" BackColor="#69A84F" BorderStyle="None" ForeColor="White" Width="78px">19:26</asp:TextBox>
                </center>
            </asp:Panel>
            <asp:Panel ID="Navigasi" runat="server" BackColor="White" Height="38px" style="margin-left: 28px" Width="310px" BorderStyle="Solid" BorderWidth="1px">
                <center>
                    <asp:LinkButton ID="Beranda" runat="server" ForeColor="Black" PostBackUrl="~/index.aspx">Beranda</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="Tentang" runat="server" ForeColor="Black">Tentang</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="Laporan" runat="server" ForeColor="Black" PostBackUrl="~/laporan.aspx">Laporan</asp:LinkButton>
                </center>
            </asp:Panel>
        </asp:Panel>

        <br />
        <br />

        <br />
        
            <asp:Panel ID="informasi" runat="server" BackColor="#F7D86F" Height="28px" style="margin-top: 0px" Width="84px" Wrap="False" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style12">
                &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Laporan"></asp:Label>
        </asp:Panel>
            <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" CssClass="auto-style13" Width="596px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT [uraian], [uang_masuk], [uang_keluar] FROM [kas]"></asp:SqlDataSource>
        </center>
    </form>
</body>
</html>
