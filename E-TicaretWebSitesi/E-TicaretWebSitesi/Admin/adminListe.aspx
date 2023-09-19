<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="adminListe.aspx.cs" Inherits="E_TicaretWebSitesi.Admin.adminListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    <%System.Data.DataTable veri = new System.Data.DataTable();
        E_TicaretWebSitesi.Cs.AdminCRUD admincrud = new E_TicaretWebSitesi.Cs.AdminCRUD();
        veri = admincrud.adminListe();
    %>
    <div class="container-fluid pt-4 px-4">
        <div class="row g-4">
            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                                <h6 class="mb-4">Admin Listesi</h6>
                                <div class="table-responsive">
                                    <table class="table" style="text-align:center;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Sıra Numarası</th>
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
