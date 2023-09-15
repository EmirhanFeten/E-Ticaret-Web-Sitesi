<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="urunEkle.aspx.cs" Inherits="E_TicaretWebSitesi.Admin.urunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid pt-4 px-4">
             <div class="row g-4">
 <div class="col-sm-12 col-xl-12">
                     <div class="bg-secondary rounded h-100 p-4">
                         <h6 class="mb-4">Floating Label</h6>
                         <div class="form-floating mb-3">

                             <%--<input type="email" class="form-control" id="floatingInput"
                                 placeholder="name@example.com">--%>
                             <asp:TextBox ID="TextBox1" class="form-control" placeholder="Ürün Numarası"  runat="server"></asp:TextBox>
                             <label for="TextBox1">Ürün Numarası</label>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                         </div>

                         <div class="form-floating mb-3">
                             <%--<input type="password" class="form-control" id="floatingPassword"
                                 placeholder="Password">--%>
                                 <asp:TextBox ID="TextBox2" class="form-control" placeholder="Ürün Adı" runat="server"></asp:TextBox>
                             <label for="TextBox2">Ürün Adı</label>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                         </div>

                         <div class="form-floating mb-3">
                             <%--<input type="password" class="form-control" id="floatingPassword"
                                 placeholder="Password">--%>
                                     <asp:TextBox ID="TextBox3" class="form-control" runat="server" style="height: 150px;" placeholder="Ürün Açıklaması" TextMode="MultiLine"></asp:TextBox>
                             <label for="TextBox3">Ürün Açıklaması</label>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                         </div>

                         <div class="form-floating mb-5">
                             <%--<select class="form-select" id="floatingSelect"
                                 aria-label="Floating label select example">
                                 <option selected>Open this select menu</option>
                                 <option value="1">One</option>
                                 <option value="2">Two</option>
                                 <option value="3">Three</option>
                             </select>--%>                                    
                             <asp:DropDownList  ID="DropDownList1" class="form-select" placeholder="Ağırlık (Litre)" runat="server" DataSourceID="SqlDataSource1" DataTextField="sizeName" DataValueField="sizeid">
                             </asp:DropDownList>

                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbyol %>" SelectCommand="SELECT * FROM [size]"></asp:SqlDataSource>

                             <label for="DropDownList1">Ağırlık (Litre)</label>
                         </div>

                         <div class="form-floating mb-3">
                             <%--<input type="password" class="form-control" id="floatingPassword"
                                 placeholder="Password">--%>
                                 <asp:TextBox ID="TextBox4" class="form-control" placeholder="Fiyat" runat="server"></asp:TextBox>
                             <label for="TextBox4">Fiyat</label>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                         </div>

                         <div class="form-floating mb-3">
                             <%--<input type="password" class="form-control" id="floatingPassword"
                                 placeholder="Password">--%>
                                 <asp:TextBox ID="TextBox5" class="form-control" placeholder="Stok" runat="server"></asp:TextBox>
                             <label for="TextBox5">Stok</label>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                         </div>

                         <div class=" mb-3">
                             <%--<input type="password" class="form-control" id="floatingPassword"
                                 placeholder="Password">--%>
                             <asp:FileUpload ID="FileUpload1" class="form-control bg-dark" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  runat="server" ErrorMessage="Boş Bırakılmaz" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                         </div>

                         <div class=" mb-3">
                             <%--<input type="password" class="form-control" id="floatingPassword"
                                 placeholder="Password">--%>
                             <asp:FileUpload ID="FileUpload2" class="form-control bg-dark" runat="server" /><br />
                         </div>

                         <div class=" mb-3">
                             <%--<input type="password" class="form-control" id="floatingPassword"
                                 placeholder="Password">--%>
                             <asp:FileUpload ID="FileUpload3" class="form-control bg-dark" runat="server" /><br />
                         </div>

                         <div class=" mb-3">
                             <%--<input type="password" class="form-control" id="floatingPassword"
                                 placeholder="Password">--%>
                             <asp:FileUpload ID="FileUpload4" class="form-control bg-dark" runat="server" /><br />
                         </div>

                         <asp:Button ID="Button1" class=" btn btn-outline-primary w-100 m-2 mb-5" runat="server" Text="Ekle" OnClick="Button1_Click"  />

                         <asp:Panel ID="Panel1" runat="server"><div class="alert alert-light" role="alert">
                             Kayıt Başarılı
                         </div></asp:Panel>

                         <asp:Panel ID="Panel2" runat="server"><div class="alert alert-light" role="alert">
                             Kayıt Başarısız Farklı Bir Ürün Numarası Giriniz.
                         </div></asp:Panel>

                     </div>
                 </div>
                 </div>
                 </div>
</asp:Content>
