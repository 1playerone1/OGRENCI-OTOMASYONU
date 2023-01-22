<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ogrencikayit.aspx.cs" Inherits="Odev5.ogrencikayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="text-center">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="resimler/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Öğrenci Kayıt</h4>
                           <span>Öğrenci Durumu - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Öğrenci Durumu"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>İsim ve Soyisim</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="İsim ve Soyisim"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Doğum Tarihi</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Doğum Tarihi" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Telefon Numarası</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Telefon Numarası" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email Adresi</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email Adresi" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Şehir</label>
                        <div class="form-group"> <%--Şehir Listesi--%>
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Seçiniz" Value="Seçiniz" />
                              <asp:ListItem Text="ADANA" Value="ADANA" />
                              <asp:ListItem Text="ADIYAMAN" Value="ADIYAMAN" />
                              <asp:ListItem Text="AFYONKARAHİSAR" Value="AFYONKARAHİSAR" />
                              <asp:ListItem Text="AĞRI" Value="AĞRI" />
                              <asp:ListItem Text="AMASYA" Value="AMASYA" />
                              <asp:ListItem Text="ANKARA" Value="ANKARA" />
                              <asp:ListItem Text="ANTALYA" Value="ANTALYA" />
                              <asp:ListItem Text="ARTVİN" Value="ARTVİN" />
                              <asp:ListItem Text="AYDIN" Value="AYDIN" />
                              <asp:ListItem Text="BALIKESİR" Value="BALIKESİR" />
                              <asp:ListItem Text="BİLECİK" Value="BİLECİK" />
                              <asp:ListItem Text="BİNGÖL" Value="BİNGÖL" />
                              <asp:ListItem Text="BİTLİS" Value="BİTLİS" />
                              <asp:ListItem Text="BOLU" Value="BOLU" />
                              <asp:ListItem Text="BURDUR" Value="BURDUR" />
                              <asp:ListItem Text="BURSA" Value="BURSA" />
                              <asp:ListItem Text="ÇANAKKALE" Value="ÇANAKKALE" />
                              <asp:ListItem Text="ÇANKIRI" Value="ÇANKIRI" />
                              <asp:ListItem Text="ÇORUM" Value="ÇORUM" />
                              <asp:ListItem Text="DENİZLİ" Value="DENİZLİ" />
                              <asp:ListItem Text="DİYARBAKIR" Value="DİYARBAKIR" />
                              <asp:ListItem Text="EDİRNE" Value="EDİRNE" />
                              <asp:ListItem Text="ELAZIĞ" Value="ELAZIĞ" />
                              <asp:ListItem Text="ERZİNCAN" Value="ERZİNCAN" />
                              <asp:ListItem Text="ERZURUM" Value="ERZURUM" />
                              <asp:ListItem Text="ESKİŞEHİR" Value="ESKİŞEHİR" />
                              <asp:ListItem Text="GAZİANTEP" Value="GAZİANTEP" />
                              <asp:ListItem Text="GİRESUN" Value="GİRESUN" />
                              <asp:ListItem Text="GÜMÜŞHANE" Value="GÜMÜŞHANE" />
                              <asp:ListItem Text="HAKKARİ" Value="HAKKARİ" />
                              <asp:ListItem Text="HATAY" Value="HATAY" />
                              <asp:ListItem Text="ISPARTA" Value="ISPARTA" />
                              <asp:ListItem Text="MERSİN" Value="MERSİN" />
                              <asp:ListItem Text="İSTANBUL" Value="İSTANBUL" />
                              <asp:ListItem Text="İZMİR" Value="İZMİR" />
                              <asp:ListItem Text="KARS" Value="KARS" />
                              <asp:ListItem Text="KASTAMONU" Value="KASTAMONU" />
                              <asp:ListItem Text="KAYSERİ" Value="KAYSERİ" />
                              <asp:ListItem Text="KIRKLARELİ" Value="KIRKLARELİ" />
                              <asp:ListItem Text="KIRŞEHİR" Value="KIRŞEHİR" />
                              <asp:ListItem Text="KOCAELİ" Value="KOCAELİ" />
                              <asp:ListItem Text="KONYA" Value="KONYA" />
                              <asp:ListItem Text="KÜTAHYA" Value="KÜTAHYA" />
                              <asp:ListItem Text="KAHRAMANMARAŞ" Value="KAHRAMANMARAŞ" />
                              <asp:ListItem Text="MALATYA" Value="MALATYA" />
                              <asp:ListItem Text="MANİSA" Value="MANİSA" />
                              <asp:ListItem Text="MARDİN" Value="MARDİN" />
                              <asp:ListItem Text="MUĞLA" Value="MUĞLA" />
                              <asp:ListItem Text="MUŞ" Value="MUŞ" />
                              <asp:ListItem Text="NEVŞEHİR" Value="NEVŞEHİR" />
                              <asp:ListItem Text="NİĞDE" Value="NİĞDE" />
                              <asp:ListItem Text="ORDU" Value="ORDU" />
                              <asp:ListItem Text="RİZE" Value="RİZE" />
                              <asp:ListItem Text="SAKARYA" Value="SAKARYA" />
                              <asp:ListItem Text="SAMSUN" Value="SAMSUN" />
                              <asp:ListItem Text="SİİRT" Value="SİİRT" />
                              <asp:ListItem Text="SİNOP" Value="SİNOP" />
                              <asp:ListItem Text="SİVAS" Value="SİVAS" />
                              <asp:ListItem Text="TEKİRDAĞ" Value="TEKİRDAĞ" />
                              <asp:ListItem Text="TOKAT" Value="TOKAT" />
                              <asp:ListItem Text="TRABZON" Value="TRABZON" />
                              <asp:ListItem Text="TUNCELİ" Value="TUNCELİ" />
                              <asp:ListItem Text="ŞANLIURFA" Value="ŞANLIURFA" />
                              <asp:ListItem Text="UŞAK" Value="UŞAK" />
                              <asp:ListItem Text="VAN" Value="VAN" />
                              <asp:ListItem Text="YOZGAT" Value="YOZGAT" />
                              <asp:ListItem Text="ZONGULDAK" Value="ZONGULDAK" />
                              <asp:ListItem Text="AKSARAY" Value="AKSARAY" />
                              <asp:ListItem Text="BAYBURT" Value="BAYBURT" />
                              <asp:ListItem Text="KARAMAN" Value="KARAMAN" />
                              <asp:ListItem Text="KIRIKKALE" Value="KIRIKKALE" />
                              <asp:ListItem Text="BATMAN" Value="BATMAN" />
                              <asp:ListItem Text="ŞIRNAK" Value="ŞIRNAK" />
                              <asp:ListItem Text="BARTIN" Value="BARTIN" />
                              <asp:ListItem Text="ARDAHAN" Value="ARDAHAN" />
                              <asp:ListItem Text="IĞDIR" Value="IĞDIR" />
                              <asp:ListItem Text="YALOVA" Value="YALOVA" />
                              <asp:ListItem Text="KARABÜK" Value="KARABÜK" />
                              <asp:ListItem Text="KİLİS" Value="KİLİS" />
                              <asp:ListItem Text="OSMANİYE" Value="OSMANİYE" />
                              <asp:ListItem Text="DÜZCE" Value="DÜZCE" />
                           </asp:DropDownList>
                        </div> <%--Şehir Listesi--%>
                     </div>
                     <div class="col-md-4">
                        <label>İlçe</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="İlçe"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Öğrenci ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Öğrenci ID" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Tam Adresiniz</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Tam Adresiniz" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Giriş Bilgileri</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Öğrenci Numarası</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Öğrenci Numarası"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Şimdiki Şifre</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Şimdiki Şifre" TextMode="Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Yeni Şifre</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Yeni Şifre" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Anasayfa.aspx"><< Ana Sayfaya Dön</a><br><br>
         </div>
         <%--<div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/books1.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Issued Books</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="your books info"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>--%>
</asp:Content>
