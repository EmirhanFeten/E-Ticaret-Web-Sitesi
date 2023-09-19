<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="mesajListe.aspx.cs" Inherits="E_TicaretWebSitesi.Admin.mesajListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <%System.Data.DataTable veri = new System.Data.DataTable();
        E_TicaretWebSitesi.Cs.MesajCRUD mesajcrud = new E_TicaretWebSitesi.Cs.MesajCRUD();
        veri = mesajcrud.mesajListeUzun();
    %>
    <div class="container-fluid pt-4 px-4">
        <div class="row g-4">
            <div class="col-12">
                <asp:Panel ID="Panel1" runat="server" style="width:100%"><div class="alert alert-info" role="alert">Mesajınız İletildi. Mesajı Silmek İçin </div></asp:Panel>
                <div class="bg-secondary rounded h-100 p-4">
                                <h6 class="mb-4">Mesaj Listesi</h6>
                                <div class="table-responsive">
                                    <table class="table" style="text-align:center;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Sıra Numarası</th>
                                                <th scope="col">Ad</th>
                                                <th scope="col">Mesaj Türü</th>
                                                <th scope="col">Mail Adresi</th>
                                                <th scope="col">Mesaj</th>
                                                <th scope="col">Sil</th>
                                                <th scope="col">Hazır Cevap</th>
                                                <th scope="col">Detaylı Cevap</th>
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
                                          
                                                <td><a href="mesajListe.aspx?sil=<%=veri.Rows[i][0]%>"><input id="Button1" class="btn btn btn-square btn-outline-primary m-2" type="button" value="X" /></a></td>
                                                <td><a href="mesajListe.aspx?mesaj=<%=veri.Rows[i][0]%>&to=<%=veri.Rows[i][3]%>"><input id="Button2" class="btn btn btn-square btn-outline-primary m-2" type="button" value="H" /></a></td>
                                                <td><a href="mesajCevap.aspx?mesajD=<%=veri.Rows[i][0]%>"><input id="Button3" class="btn btn btn-square btn-outline-primary m-2" type="button" value="D" /></a></td>
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
