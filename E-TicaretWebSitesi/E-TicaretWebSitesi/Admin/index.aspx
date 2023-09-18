<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="E_TicaretWebSitesi.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid pt-4 px-4">
        <div class="row g-4">

            <%System.Data.DataTable veriler = new System.Data.DataTable();
        E_TicaretWebSitesi.Cs.UrunCRUD uruncrud = new E_TicaretWebSitesi.Cs.UrunCRUD();
        veriler = uruncrud.urunListe();
    %>
            <div class="col-sm-12 col-xl-6">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Ürünler Tablosu</h6>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Ürün Numarası</th>
                                <th scope="col">Ürün Adı</th>
                                <th scope="col">Ağırlık(Litre)</th>
                                <th scope="col">Fiyat</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%for (int i = 0; i < veriler.Rows.Count; i++)
                                                {
%>

                                                
                                            <tr>
                                                <th scope="row"><%=veriler.Rows[i][0]%></th>
                                                <td><%=veriler.Rows[i][1]%></td>
                                                <td><%=veriler.Rows[i][3]%></td>
                                                <td><%=veriler.Rows[i][5]%></td>

                                            </tr>
                                            <%} %>
                        </tbody>
                    </table>
                    <a href="urunListe.aspx" style="float:right;height:50px;">Detay Sayfası</a>
                </div>
            </div>


            <%System.Data.DataTable veri = new System.Data.DataTable();
        E_TicaretWebSitesi.Cs.UyeCRUD uyecrud = new E_TicaretWebSitesi.Cs.UyeCRUD();
        veri = uyecrud.uyeListe();
    %>
            <div class="col-sm-12 col-xl-6">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Üyeler Tablosu</h6>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Sıra Numarası</th>
                                <th scope="col">Adı</th>
                                <th scope="col">Kullanıcı Adı</th>
                                <th scope="col">Mail Adresi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for (int i = 0; i < veri.Rows.Count; i++)
                                                {
%>

                                                
                                            <tr>
                                                <th scope="row"><%=veri.Rows[i][0]%></th>
                                                <td><%=veri.Rows[i][1]%></td>
                                                <td><%=veri.Rows[i][3]%></td>
                                                <td><%=veri.Rows[i][5]%></td>
                                          
                                            </tr>
                            
                                            <%} %>
                            
                        </tbody>
                        
                    </table>
                    <a href="uyelerListe.aspx" style="float:right;height:50px;">Detay Sayfası</a>
                </div>
            </div>

            <%System.Data.DataTable mesajVeri = new System.Data.DataTable();
        E_TicaretWebSitesi.Cs.MesajCRUD mesajcrud = new E_TicaretWebSitesi.Cs.MesajCRUD();
        mesajVeri = mesajcrud.mesajListe();
    %>
            <div class="col-sm-12 col-xl-6">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Mesaj Tablosu</h6>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Sıra Numarası</th>
                                <th scope="col">Adı</th>
                                <th scope="col">Mail Adresi</th>
                                <th scope="col">Mesaj</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for (int i = 0; i < mesajVeri.Rows.Count; i++)
                                                {
%>

                                                
                                            <tr>
                                                <th scope="row"><%=mesajVeri.Rows[i][0]%></th>
                                                <td><%=mesajVeri.Rows[i][1]%></td>
                                                <td><%=mesajVeri.Rows[i][3]%></td>
                                                <td><%=mesajVeri.Rows[i][4]%></td>
                                          
                                            </tr>
                            
                                            <%} %>
                            
                        </tbody>
                        
                    </table>
                    <a href="mesajListe.aspx" style="float:right;height:50px;">Detay Sayfası</a>
                </div>
            </div>


            <div class="col-sm-12 col-xl-6">
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Admin Listesi</h6>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">First Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Last Name</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>Doe</td>
                                        <td>Doe</td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="adminListe.aspx" style="float:right;height:50px;">Detay Sayfası</a>
                        </div>
                    </div>
            
        </div>
    </div>
</asp:Content>
