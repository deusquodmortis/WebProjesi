<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="WebProjesi.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<ul class="list-group">
  <li class="list-group-item">Bu<span class="badge bg-primary rounded-pill">1</span></li>
  <li class="list-group-item">Kısım<span class="badge bg-primary rounded-pill">2</span></li>
  <li class="list-group-item">Hakkında<span class="badge bg-primary rounded-pill">3</span></li>
  <li class="list-group-item">Kısmı<span class="badge bg-primary rounded-pill">4</span></li>
  <li class="list-group-item">Olacak. Veritabanından çekilen veriler Bilgi sayfasında.<span class="badge bg-primary rounded-pill">5</span></li>
</ul>--%>
   <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Resources1\img\forest.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Resources1\img\forest.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Resources1\img\forest.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</asp:Content>
