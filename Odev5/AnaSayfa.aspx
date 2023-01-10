<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Odev5.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%--slayt--%>
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="resimler/1.jpeg" class="d-block w-100"/>
    </div>
    <div class="carousel-item">
        <img src="resimler/2.jpeg" class="d-block w-100"/>
    </div>
    <div class="carousel-item">
        <img src="resimler/3.jpeg" class="d-block w-100"/>
    </div>
     <div class="carousel-item">
        <img src="resimler/4.jpeg" class="d-block w-100"/>
    </div>
  </div>
    </div>
    <%--slayt--%>
    <br />
    <div class="me-auto text-center">
        <h1>ÖĞRENCİ OTOMASYON SİSTEMİ</h1>
        <p>Öğrenci Otomasyon Sistemi paragraf</p>
    </div>
</asp:Content>
