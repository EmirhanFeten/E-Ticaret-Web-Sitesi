<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="urunListe.aspx.cs" Inherits="E_TicaretWebSitesi.Admin.urunListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%System.Data.DataTable veri = new System.Data.DataTable();
        E_TicaretWebSitesi.Cs.UrunCRUD uruncrud = new E_TicaretWebSitesi.Cs.UrunCRUD();
        veri = uruncrud.urunListe();
    %>
    <div class="container-fluid pt-4 px-4">
        <div class="row g-4">
            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                                <h6 class="mb-4">Ürünler Listesi</h6>
                                <div class="table-responsive">
                                    <table class="table" style="text-align:center;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Ürün Numarası</th>
                                                <th scope="col">Ürün Adı</th>
                                                <th scope="col">Ürün Açıklaması</th>
                                                <th scope="col">Ağırlık(Litre)</th>
                                                <th scope="col">Stok Adet</th>
                                                <th scope="col">Fiyat</th>
                                                <th scope="col">Resim 1</th>
                                                <th scope="col">Resim 2</th>
                                                <th scope="col">Resim 3</th>
                                                <th scope="col">Resim 4</th>
                                                <th scope="col">Güncelle</th>
                                                <th scope="col">Sil</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%for (int i = 0; i < veri.Rows.Count; i++)
                                                {
%>

                                                
                                            <tr>
                                                <th scope="row"><%=veri.Rows[i][0]%></th>
                                                <td><%=veri.Rows[i][1]%></td>
                                                <td><%=veri.Rows[i][2]%></td>
                                                <td><%=veri.Rows[i][3]%></td>
                                                <td><%=veri.Rows[i][4]%></td>
                                                <td><%=veri.Rows[i][5]%></td>
                                                <%if (veri.Rows[i][6].ToString()!="Resim Yok")
                                                    {%>
                                                        <td><img src="<%=veri.Rows[i][6] %>" alt="" style="width: 50px;height:50px;"></td>
                                                  <%}
                                                   else
                                                   {%>
                                                    <td><%=veri.Rows[i][6]%></td>
                                                 <%}%>
                                                <%if (veri.Rows[i][7].ToString()!="Resim Yok")
                                                    {%>
                                                        <td><img src="<%=veri.Rows[i][7] %>" alt="" style="width: 50px;height:50px;"></td>
                                                  <%}
                                                   else
                                                   {%>
                                                    <td><%=veri.Rows[i][7]%></td>
                                                 <%}%>
                                                <%if (veri.Rows[i][8].ToString()!="Resim Yok")
                                                    {%>
                                                        <td><img src="<%=veri.Rows[i][8] %>" alt="" style="width: 50px;height:50px;"></td>
                                                  <%}
                                                   else
                                                   {%>
                                                    <td><%=veri.Rows[i][8]%></td>
                                                 <%}%>
                                                <%if (veri.Rows[i][9].ToString()!="Resim Yok")
                                                    {%>
                                                        <td><img src="<%=veri.Rows[i][9] %>" alt="" style="width: 50px;height:50px;"></td>
                                                  <%}
                                                   else
                                                   {%>
                                                    <td><%=veri.Rows[i][9]%></td>
                                                 <%}%>
                                          
                                                <td><a href="urunGuncelle.aspx?guncel=<%=veri.Rows[i][0]%>"><input id="Button1"  class="btn btn btn-square btn-outline-primary m-2" type="button" value="G" /></a></td>
                                                <td><a href="urunListe.aspx?sil=<%=veri.Rows[i][0]%>"><input id="Button2" class="btn btn btn-square btn-outline-primary m-2" type="button" value="X" /></a></td>
                                            </tr>
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
            </div>
        </div>
     </div>
</asp:Content>
