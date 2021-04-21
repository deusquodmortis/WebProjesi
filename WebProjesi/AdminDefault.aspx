<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="WebProjesi.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
    <div style="padding-top:50px;" class="input-group mb-3 col-3">
  <input runat="server" type="text" id="size1" name="size1" class="form-control" placeholder="Boyut girin." aria-label="Username" aria-describedby="basic-addon1">
    <span class="input-group-text" id="basic-addon1">mm</span>
        </div>
    </div><input id="Button2" value="Kayıt et" class="btn btn-outline-dark" runat="server" type="button" onserverclick="Save_Size" />
    </div>
</asp:Content>
