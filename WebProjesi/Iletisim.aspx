<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="WebProjesi.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
	<div class="row-fluid">
        <div class="span8">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d97666.01518706046!2d29.42044655517707!3d40.096308858111236!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cbcbfd3372746d%3A0xc468ef8d269017b0!2s%C4%B0neg%C3%B6l%20Devlet%20Hastanesi!5e0!3m2!1str!2str!4v1622458107418!5m2!1str!2str" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>    	</div>
    	
      	<div class="span4">
    		<h2>İnegöl Devlet Hastanesi</h2>
    		<address>
    			Burhaniye, Mimar Sinan Cd.<br>
    			No:54, 16400<br>
    			İnegöl/Bursa<br>
    			<abbr title="Phone">Tel:</abbr> 01234 567 890
    		</address>
    	</div>
    </div>
</div>
    <div class="row justify-content-md-center" style="margin-top:75px">
        <div class="col col-sm-4"><img src="images/contactus.png" class="" alt="..."></div>
    <div class="col-sm-4">
    <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Email adresiniz.</label>
  <input type="email" class="form-control" id="mail1" runat="server" placeholder="name@example.com">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Mesajınızı buraya yazınız.</label>
  <textarea class="form-control" id="mail2" runat="server" rows="3"></textarea>
</div>
        <input id="Btn_send" value="Gönder" class="btn btn-outline-success align-self-center p-4 mb-2" runat="server" type="button" onserverclick="Mail" />
    </div>
        </div>
</asp:Content>
