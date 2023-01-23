<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ogrenciListesi.aspx.cs" Inherits="Odev5.ogrenciListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Öğrenci Detayları</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="resimler/publisher.png" />         
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Öğrenci ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Bul" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Öğrenci İsim ve Soyisim</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Öğrenci İsim ve Soyisim"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Ekle" OnClick="Button2_Click1" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Güncelle" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Sil" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="AnaSayfa.aspx"><< Ana Sayfaya Dön</a><br>
                <br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Öğrenci Listesi<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ogrenciDataConnectionString %>" SelectCommand="SELECT * FROM [ogrenci_profil]"></asp:SqlDataSource>
                                        </h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ogrenci_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="isim_soyisim" HeaderText="isim_soyisim" SortExpression="isim_soyisim" />
                                        <asp:BoundField DataField="dogum_tarihi" HeaderText="dogum_tarihi" SortExpression="dogum_tarihi" />
                                        <asp:BoundField DataField="tel_no" HeaderText="tel_no" SortExpression="tel_no" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="sehir" HeaderText="sehir" SortExpression="sehir" />
                                        <asp:BoundField DataField="ilce" HeaderText="ilce" SortExpression="ilce" />
                                        <asp:BoundField DataField="pinkod" HeaderText="pinkod" SortExpression="pinkod" />
                                        <asp:BoundField DataField="tam_adres" HeaderText="tam_adres" SortExpression="tam_adres" />
                                        <asp:BoundField DataField="ogrenci_id" HeaderText="ogrenci_id" ReadOnly="True" SortExpression="ogrenci_id" />
                                        <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                                        <asp:BoundField DataField="ogrenci_durumu" HeaderText="ogrenci_durumu" SortExpression="ogrenci_durumu" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
