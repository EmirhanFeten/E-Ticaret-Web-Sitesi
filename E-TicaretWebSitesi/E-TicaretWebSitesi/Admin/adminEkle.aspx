<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="adminEkle.aspx.cs" Inherits="E_TicaretWebSitesi.Admin.adminEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
        <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
            <div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
                <div class="d-flex align-items-center justify-content-between mb-3">
                    <a href="index.html" class="">
                        <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>Yarımcık Şerbetleri</h3>
                    </a>
                    <h3>Giriş</h3>
                </div>
                <div class="form-floating mb-2">
                         <asp:TextBox ID="TextBox1" class="form-control" placeholder="Kullanıcı Adı"  runat="server"></asp:TextBox>
                         <label for="TextBox1">Kullanıcı Adı</label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </div>
                <div class="form-floating mb-2">
                         <asp:TextBox ID="TextBox2" class="form-control" placeholder="Mail Adresi"  runat="server"></asp:TextBox>
                         <label for="TextBox2">Mail Adresi</label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </div>
                <div class="form-floating mb-2">
                         <asp:TextBox ID="TextBox3" class="form-control" placeholder="Şifre"  runat="server" TextMode="Password"></asp:TextBox>
                         <label for="TextBox3">Şifre</label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </div>
                <div class="form-floating mb-2">
                         <asp:TextBox ID="TextBox4" class="form-control" placeholder="Şifre Tekrar"  runat="server" TextMode="Password"></asp:TextBox>
                         <label for="TextBox4">Şifre Tekrar</label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </div>
                
            <asp:Button ID="Button1" class="btn btn-primary py-3 w-100 mb-4" runat="server" Text="Kayıt Ol"  />
            </div>
        </div>
    </div>
</div>
</asp:Content>
