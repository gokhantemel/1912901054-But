<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="UyeDetay.aspx.cs" Inherits="Gokhantemel_1912901054.UyeDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
               </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                   <p>
                       üyeno
                       <asp:Label ID="Labuyeno" runat="server" Text="lblüyeno"></asp:Label>
                   </p>
                   <p>
                       kullanıcı adı
                       <asp:TextBox ID="Texkullanıcıadı" runat="server"></asp:TextBox>
                   </p>
                   <p>
                       parola<asp:TextBox ID="Texparola" runat="server"></asp:TextBox>
                   </p>
                   <p>
                       parola tekrar<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   </p>
                   <p>
                       adı<asp:TextBox ID="TextAD" runat="server" CssClass="auto-style2" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                   </p>
                   <p aria-autocomplete="list">
                       soyad<asp:TextBox ID="TextSoyad" runat="server" CssClass="auto-style3"></asp:TextBox>
                   </p>
                   <p>
                       e-posta
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox>
                   </p>
                   <p>
                       yetki
                       <asp:DropDownList ID="drpyo" runat="server" OnSelectedIndexChanged="drpYetki_SelectedIndexChanged" Width="150px">
                           <asp:ListItem Value="1">Yönetici</asp:ListItem>
                           <asp:ListItem Value="2">Kullanıcı</asp:ListItem>
                       </asp:DropDownList>
                   </p>
                   <p>
                       <asp:Label ID="Labgüvenlik" runat="server" Text="güvenlik kodu"></asp:Label>
                       <asp:TextBox ID="Textguvenlik" runat="server"></asp:TextBox>
                   </p>
                   <p>
                       <asp:LinkButton ID="btnekle" runat="server" OnClick="btnUyeEkle_Click">Üye ekle</asp:LinkButton>
                       &nbsp;|
                       <asp:LinkButton ID="btnbilgileriguncel" runat="server" OnClick="btnGuncelle_Click">Bilgilerimi Güncelle</asp:LinkButton>
                       &nbsp;|
                       <asp:LinkButton ID="btnAnaSayfadon" runat="server" OnClick="btnAnaSayfaya_Click">Ana sayfaya  dön</asp:LinkButton>
                       &nbsp;|
                       <asp:LinkButton ID="btnUyeSil" runat="server" OnClick="btnUyeSil_Click" Visible="False">Üye Sil</asp:LinkButton>
                   </p>
</asp:Content>


