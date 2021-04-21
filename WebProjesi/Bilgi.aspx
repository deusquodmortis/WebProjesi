<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Bilgi.aspx.cs" Inherits="WebProjesi.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="accordion col-sm p-4" id="accordionExample">
  <div class="accordion-item" >
    <h2 class="accordion-header" id="headingOne" >
      <button runat="server" class="accordion-button" id="b1" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
      </button>
    </h2>
    <div  id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div  class="accordion-body">
          <p runat="server" id="t1"></p>
      </div>
    </div>
  </div>
  <div  class="accordion-item">
    <h2  class="accordion-header" id="headingTwo">
      <button runat="server" class="accordion-button collapsed" id="b2" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
      </button>
    </h2>
    <div  id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div  class="accordion-body">
          <p runat="server" id="t2"></p>
      </div>
    </div>
  </div>
  <div  class="accordion-item">
    <h2  class="accordion-header" id="headingThree">
      <button runat="server" class="accordion-button collapsed" id="b3" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
      </button>
    </h2>
    <div  id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div  class="accordion-body">
          <p runat="server" id="t3"></p>
      </div>
    </div>
  </div>
</div>
</asp:Content>
