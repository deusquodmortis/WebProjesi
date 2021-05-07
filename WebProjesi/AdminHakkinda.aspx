<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkinda.aspx.cs" Inherits="WebProjesi.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="badge bg-primary">Ekle</span>
    <div class="row col-sm" runat="server">
        <input id="Del" runat="server" type="text" class="form-control m-4 w-50" placeholder="Adres bilginizi girin." aria-label="Değiştirmek istediğiniz bilginin adı" aria-describedby="button-addon2">
    </div>
    <input id="Btn_delete" value="Ekle" class="btn btn-outline-secondary m-4" runat="server" type="button" />
</asp:Content>
