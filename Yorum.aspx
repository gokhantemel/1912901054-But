<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Yorum.aspx.cs" Inherits="Gokhantemel_1912901054.Yorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Konu &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_konu" runat="server" Width="247px"></asp:TextBox>
    <br />
    Yorum&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_yorum" runat="server" Height="185px" OnTextChanged="txt_yorum_TextChanged" Width="245px"></asp:TextBox>
    <br />
    <asp:Label ID="lbl_sayı" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sayıyı yazınız:&nbsp;&nbsp;<asp:TextBox ID="txtgvnlk" runat="server" OnTextChanged="txt_gvenlik_TextChanged"></asp:TextBox>
    <br />
    <asp:LinkButton ID="buton_gonder" runat="server" OnClick="buton_gonder_Click">Yorumu gönder</asp:LinkButton>
    <br />
    <asp:Label ID="Lbl_yorumuyari" runat="server"></asp:Label>

</asp:Content>
