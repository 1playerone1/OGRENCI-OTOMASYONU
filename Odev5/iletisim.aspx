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

       <%--NameBox--%>
        <div class="input-group mb-3">
            <span class="input-group-text">İsim ve Soyisim</span>
            <asp:TextBox ID="NameBox" runat="server" class="form-control" placeholder="İsim ve Soyisim" Width="207px" AutoCompleteType="FirstName" MaxLength="12"></asp:TextBox>            
        </div>
        <%--EmailBox--%>
        <div class="input-group mb-3">
            <span class="input-group-text" id="addon-wrapping"><i class="fas fa-at"></i></span>
            <asp:TextBox ID="EmailBox" runat="server" type="email" class="form-control" placeholder="email@adresin.com" AutoCompleteType="Email" Width="207px"></asp:TextBox>
        </div>
        <%--MessageBox--%>
        <div class="input-group mb-3">
            <asp:TextBox ID="MessageBox" runat="server" placeholder="Buraya birşeyler yazabilirsin..." class="form-control" Width="420px" AutoCompleteType="Disabled" Rows="10"></asp:TextBox>
        </div>
        <%--Send Button--%>
        <div class ="mb-2">
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text = "Mesaj Gönder" OnClick="Button1_Click" />
        </div>
   </div>
    
</asp:Content>
