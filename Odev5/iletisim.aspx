<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Odev5.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="text-xl-center">
       <h2><%: Title %>.</h2>
    <h3>İletişim.</h3>
    <address>
        İstanbul, Türkiye<br />
        Esenler, Yüzüncü Yıl Mahallesi 98052-6399<br />
        <abbr title="Telefon">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">iletisim@email.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">pazarlama@email.com</a>
    </address>
   </div>
    
</asp:Content>
