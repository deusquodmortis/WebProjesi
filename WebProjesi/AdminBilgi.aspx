<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBilgi.aspx.cs" Inherits="WebProjesi.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="badge bg-primary">Ekleme</span>
    <div class="row col-sm" runat="server">
    <input id="bilgi_ad" runat="server" type="text" class="form-control m-4 w-50" placeholder="Bilgi Verilecek Ürünün Adı" aria-label="Bilgi Verilecek Ürünün Adı" aria-describedby="button-addon2">
        <br />
    <textarea id="bilgi_icerik" runat="server" type="text" class="form-control m-4 w-50" placeholder="Bilgi içeriği" aria-label="Bilgi içeriği" aria-describedby="button-addon2"></textarea>
    </div><input id="Btn_Kayit" value="Kayıt et" class="btn btn-outline-secondary m-4" runat="server" type="button" onserverclick="Bilgi_Kayit" />
    <hr />
     <span class="badge bg-primary">Güncelleme</span>
    <div class="row col-sm" runat="server">
        <input id="update_old" runat="server" type="text" class="form-control m-4 w-50" placeholder="Değiştirmek istediğiniz bilginin adı" aria-label="Değiştirmek istediğiniz bilginin adı" aria-describedby="button-addon2">
        <input id="update_new" runat="server" type="text" class="form-control m-4 w-50" placeholder="Yeni adı" aria-label="Bilgi Verilecek Ürünün Adı" aria-describedby="button-addon2">
        <textarea id="update_detail" runat="server" type="text" class="form-control m-4 w-50" placeholder="Bilgi içeriği" aria-label="Bilgi içeriği" aria-describedby="button-addon2"></textarea>
    
    </div><input id="Btn_update" value="Güncelle" class="btn btn-outline-secondary m-4" runat="server" type="button" onserverclick="Bilgi_Update" />
    <hr />
    <span class="badge bg-primary">Silme</span>
    <div class="row col-sm" runat="server">
        <input id="Del" runat="server" type="text" class="form-control m-4 w-50" placeholder="Silmek istediğiniz bilginin adı" aria-label="Değiştirmek istediğiniz bilginin adı" aria-describedby="button-addon2">
    </div><input id="Btn_delete" value="Sil" class="btn btn-outline-secondary m-4" runat="server" type="button" onserverclick="Bilgi_Sil" />
</asp:Content>
