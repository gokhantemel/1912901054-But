<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UyeGiris.ascx.cs" Inherits="Gokhantemel_1912901054.UserControl.UyeGiris" %>
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
    <asp:View ID="View1" runat="server">
     <%--   Giriş--%>
        Kullanıcı Adı:<asp:TextBox ID="TxtKullaniciAdi" runat="server" OnTextChanged="Kullanıcı_TextChanged"></asp:TextBox>
        Parola:<asp:TextBox ID="txtparola" runat="server" OnTextChanged="Parola_TextChanged" style="height: 22px"></asp:TextBox> 
        <asp:LinkButton ID="BtnGiris" runat="server" OnClick="BtnGiris_Click"> Giriş</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="BtnUnuttum" runat="server" OnClick="BtnUnuttum_Click">Şifremi Unuttum</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="BtnKayıt" runat="server" OnClick="BtnKayıt_Click">Kayıt ol</asp:LinkButton>
    </asp:View>
    <asp:View ID="View2" runat="server">
      <%--  Giriş yapıldı.--%>
  Hoşgeldiniz.      <asp:Label ID="lbladsoyad" runat="server" Text=""></asp:Label>
        <asp:LinkButton ID="btnCikis" runat="server" OnClick="LinkButton1_Click">Oturumu Kapat</asp:LinkButton>
        <asp:LinkButton ID="btnuyebg" runat="server" OnClick="btnuyebg_Click">Üyelik Bilgilerim</asp:LinkButton>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <%--Parolamı unuttum.--%>
        Kullanıcı adınızı giriniz.
        <asp:TextBox ID="txtparolaiste" runat="server" OnTextChanged="txtkullaniciadiunuttum_TextChanged"></asp:TextBox>
        <asp:LinkButton ID="btnparolagonder" runat="server" OnClick="btnparolagonder_Click">Parolamı Gönder</asp:LinkButton>

    </asp:View>
</asp:MultiView>