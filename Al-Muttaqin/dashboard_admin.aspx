<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="dashboard_admin.aspx.vb" Inherits="Al_Muttaqin.tesss" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">

    <div style="height: 505px">
        <br />
        <asp:Image ID="Image1" runat="server" Height="71px" ImageUrl="~/gambar/dashboard.png" Width="62px" />
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Dashboard"></asp:Label>
        

        <br />
        <br />
        <br />
        

        <br />
        <div>
            <table style="width: 72%;">
                <tr>
                    <td class="modal-sm" style="width: 274px">
                        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="49px" style="margin-left: 0px" Width="271px">
                            <EditItemTemplate>
                                Saldo Kas Masuk:
                                <asp:TextBox ID="Saldo_Kas_MasukTextBox" runat="server" Text='<%# Bind("[Saldo Kas Masuk]") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <InsertItemTemplate>
                                Saldo Kas Masuk:
                                <asp:TextBox ID="Saldo_Kas_MasukTextBox0" runat="server" Text='<%# Bind("[Saldo Kas Masuk]") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Saldo Kas Masuk:
                                <asp:Label ID="Saldo_Kas_MasukLabel" runat="server" Text='<%# Bind("[Saldo Kas Masuk]") %>' />
                                <br />
                            </ItemTemplate>
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:FormView>
                    </td>
                    <td class="modal-sm" style="width: 271px">
                        <asp:FormView ID="FormView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="49px" style="margin-left: 0px" Width="271px">
                            <EditItemTemplate>
                                Saldo Kas Keluar:
                                <asp:TextBox ID="Saldo_Kas_KeluarTextBox" runat="server" Text='<%# Bind("[Saldo Kas Keluar]") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <InsertItemTemplate>
                                Saldo Kas Keluar:
                                <asp:TextBox ID="Saldo_Kas_KeluarTextBox" runat="server" Text='<%# Bind("[Saldo Kas Keluar]") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Saldo Kas Keluar:
                                <asp:Label ID="Saldo_Kas_KeluarLabel" runat="server" Text='<%# Bind("[Saldo Kas Keluar]") %>' />
                                <br />
                            </ItemTemplate>
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:FormView>
                    </td>
                    <td>
                        <asp:FormView ID="FormView3" runat="server" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" Height="49px" style="margin-left: 0px" Width="271px">
                            <EditItemTemplate>
                                Total Kas:
                                <asp:TextBox ID="Total_KasTextBox" runat="server" Text='<%# Bind("[Total Kas]") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <InsertItemTemplate>
                                Total Kas:
                                <asp:TextBox ID="Total_KasTextBox" runat="server" Text='<%# Bind("[Total Kas]") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Total Kas:
                                <asp:Label ID="Total_KasLabel" runat="server" Text='<%# Bind("[Total Kas]") %>' />
                                <br />
                            </ItemTemplate>
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:FormView>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT sum(uang_masuk) AS &quot;Saldo Kas Masuk&quot; FROM kas;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT sum(uang_keluar) AS &quot;Saldo Kas Keluar&quot; FROM kas;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT sum(uang_masuk)-sum(uang_keluar) AS &quot;Total Kas&quot; FROM kas;"></asp:SqlDataSource>
        <br />
    </div>

</asp:Content>

