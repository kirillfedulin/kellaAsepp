<%@ Page Title="Ametitöötaja tabel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="kellaAsepp.Contact2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>

        <asp:GridView ID="GridView1" runat="server"
            CssClass="table table-striped table-hover align-middle w-auto" GridLines="None" HeaderStyle-CssClass="table-dark"
            AutoGenerateColumns="False"
            DataKeyNames="tootajaAmetiKohtID"
            DataSourceID="SqlDataSource1"
            EmptyDataText="Andmeid ei ole.">
            <Columns>
                <asp:BoundField DataField="tootajaAmetiKohtID" HeaderText="Id" ReadOnly="True" SortExpression="tootajaAmetiKohtID" />
                <asp:BoundField DataField="nimi" HeaderText="Töötaja" SortExpression="nimi" />
                <asp:BoundField DataField="nimetus" HeaderText="Ametikoht" SortExpression="nimetus" />
                <asp:BoundField DataField="alguskuupaev" HeaderText="Algus" SortExpression="alguskuupaev" DataFormatString="{0:dd.MM.yyyy}" HtmlEncode="False" />
                <asp:BoundField DataField="loppkuupaev" HeaderText="Lõpp" SortExpression="loppkuupaev" DataFormatString="{0:dd.MM.yyyy}" HtmlEncode="False" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:Model1ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:Model1ConnectionString.ProviderName %>"
            SelectCommand="SELECT tootajaAmetikohtSet.tootajaAmetiKohtID,
                                  tootajaSet.nimi,
                                  ametiKohtSet.nimetus,
                                  tootajaAmetikohtSet.alguskuupaev,
                                  tootajaAmetikohtSet.loppkuupaev
                           FROM tootajaAmetikohtSet
                           INNER JOIN tootajaSet ON tootajaAmetikohtSet.tootajaID = tootajaSet.tootajaID
                           INNER JOIN ametiKohtSet ON tootajaAmetikohtSet.ametiKohtID = ametiKohtSet.ametiKohtID">
        </asp:SqlDataSource>

        <a runat="server" href="~/Contact3" class="btn btn-primary">Lisa ametitöötaja</a>
    </main>
</asp:Content>
