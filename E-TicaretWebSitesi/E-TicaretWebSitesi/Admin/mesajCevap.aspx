<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="mesajCevap.aspx.cs" Inherits="E_TicaretWebSitesi.Admin.mesajCevap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid pt-4 px-4">
            <div class="row g-4">
<div class="col-sm-12 col-xl-12">
    <asp:Panel ID="Panel1" runat="server"><div class="alert alert-light" role="alert">
    Mesaj Gönderildi
</div></asp:Panel>
                    <div class="bg-secondary rounded h-100 p-4 col-12">
                        <div class="form-floating mb-3 col-12">
                        <h6 class="mb-4">Detaylı Mesaj</h6>
                            </div>
                        <div class="row g-4">
                        <div class="form-floating mb-3 col-lg-12">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="form-floating mb-3 col-lg-6">

                            <%--<input type="email" class="form-control" id="floatingInput"
                                placeholder="name@example.com">--%>
                            <asp:TextBox ID="TextBox1" class="form-control" placeholder="Ad"  runat="server"></asp:TextBox>
                            <label for="TextBox1" style="padding: 1rem 1.5rem">Ad</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-floating mb-3 col-lg-6">
                            <%--<input type="password" class="form-control" id="floatingPassword"
                                placeholder="Password">--%>
                                <asp:TextBox ID="TextBox2" class="form-control" placeholder="Mail Adresi" runat="server"></asp:TextBox>
                            <label for="TextBox2" style="padding: 1rem 1.5rem">Mail Adresi</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-floating mb-3">
                            <%--<input type="password" class="form-control" id="floatingPassword"
                                placeholder="Password">--%>
                                    <asp:TextBox ID="TextBox3" class="form-control" runat="server" style="height: 150px;" placeholder="Mesaj" TextMode="MultiLine"></asp:TextBox>
                            <label for="TextBox3" style="padding: 1rem 1.5rem">Mesaj</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        </div>


                        <asp:Button ID="Button1" class=" btn btn-outline-primary w-100 m-2 mb-5" runat="server" Text="Gönder" OnClick="Button1_Click" />

                        

                        
</div>
                    </div>
                </div>
                </div>
                </div>
</asp:Content>
