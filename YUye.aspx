<%@ Page Title="" Language="C#" MasterPageFile="~/Yonet.Master" AutoEventWireup="true" CodeBehind="YUye.aspx.cs" Inherits="Gokhantemel_1912901054.YUye" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <td class="anacerceve">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [uyeNo], [KullaniciAdi], [adi], [soyadi], [silindi] FROM [kullanici]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="uyeNo" DataSourceID="SqlDataSource1" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="uyeNo" HeaderText="uyeNo" InsertVisible="False" ReadOnly="True" SortExpression="uyeNo" />
                    <asp:BoundField DataField="KullaniciAdi" HeaderText="KullaniciAdi" SortExpression="KullaniciAdi" />
                    <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                    <asp:BoundField DataField="soyadi" HeaderText="soyadi" SortExpression="soyadi" />
                    <asp:CheckBoxField DataField="silindi" HeaderText="silindi" SortExpression="silindi" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </td>
    </tr>
</table>
<asp:LinkButton ID="btngoster" runat="server" OnClick="btngoster_Click1">Göster</asp:LinkButton>
</asp:Content>
