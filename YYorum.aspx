<%@ Page Title="" Language="C#" MasterPageFile="~/Yonet.Master" AutoEventWireup="true" CodeBehind="YYorum.aspx.cs" Inherits="Gokhantemel_1912901054.YYorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
    <asp:View ID="View1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [yn], [konu], [yorum], [tarih] FROM [Yorum]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="yn" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="yn" HeaderText="yn" InsertVisible="False" ReadOnly="True" SortExpression="yn" />
                <asp:BoundField DataField="konu" HeaderText="konu" SortExpression="konu" />
                <asp:BoundField DataField="yorum" HeaderText="yorum" SortExpression="yorum" />
                <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
            </Columns>
        </asp:GridView>
        <asp:LinkButton ID="lnk_yorumduzenle" runat="server" OnClick="lnk_duzenle_Click">Yorumdüzenle</asp:LinkButton>
    </asp:View>
    <asp:View ID="View2" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />Konu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_yoneticikonu" runat="server"></asp:TextBox>
        <br />
        Yorum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_yorumyaz" runat="server" Height="119px" Width="284px"></asp:TextBox>
        <br />
        <asp:Label ID="Label_sayı" runat="server" Text="Label"></asp:Label>
        &nbsp;Sayıyı yazınız
        <asp:TextBox ID="Text_sayıyazın" runat="server"></asp:TextBox>
        <br />
        <asp:LinkButton ID="btn_kydt" runat="server" OnClick="btn_kydt_Click"> Kaydet.</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lnk_sil" runat="server" OnClick="lnk_yrmsil_Click"> sil.</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Lab_uyari" runat="server"></asp:Label>
    </asp:View>
</asp:MultiView>
</asp:Content>
