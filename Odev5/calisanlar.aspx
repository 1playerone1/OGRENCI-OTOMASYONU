<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="calisanlar.aspx.cs" Inherits="Odev5.calisanlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table id="example" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <th>İsim</th>
                <th>Pozisyon</th>
                <th>Bölüm</th>
                <th>Yaş</th>
                <th>Başlangıç Tarihi</th>
                <th>Maaş</th>
            </tr>
            <tbody>
                <tr>
                <td>Barış Kaçin</td>
                <td>Öğretmen</td>
                <td>Matematik</td>
                <td>36</td>
                <td>2012-04-25</td>
                <td>$100,000,000</td>
            </tr>
            <tr>
                <td>Ayşe Su</td>
                <td>Muhasebeci</td>
                <td>Ofis</td>
                <td>45</td>
                <td>2011-07-25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Mustafa Su</td>
                <td>Sekreter</td>
                <td>Ofis</td>
                <td>55</td>
                <td>2009-01-12</td>
                <td>$86,000</td>
            </tr>
            <tr>
                <td>Kemal Su</td>
                <td>Müdür</td>
                <td>Ofis</td>
                <td>23</td>
                <td>2001-01-06</td>
                <td>$500,000</td>
            </tr>
            <tr>
                <td>Gülsüm Su</td>
                <td>Müdür Yardımcısı</td>
                <td>Ofis</td>
                <td>22</td>
                <td>2001-01-06</td>
                <td>$450,000</td>
            </tr>

            </tbody>
            <tfoot>
            <tr>
                <th>İsim</th>
                <th>Pozisyon</th>
                <th>Bölüm</th>
                <th>Yaş</th>
                <th>Başlangıç Tarihi</th>
                <th>Maaş</th>
            </tr>
        </tfoot>
        </thead>
    </table>

</asp:Content>
