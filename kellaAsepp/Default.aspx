<%@ Page Title="Avaleht" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="kellaAsepp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="p-4 p-md-5 mb-4 bg-light border rounded-3" aria-labelledby="mainTitle">
            <h1 id="mainTitle" class="display-5 fw-bold">Kellassepp Remondi</h1>
            <p class="lead mb-4">
                See veebileht on kellaremondi töökoja töötajate haldamiseks.
                Lehel „Sisestamine nimi” lisame töötajaid ja ametikohti ning lehel „Lisa ametitöötaja” valime ripploendist töötaja ja ametikoha ning määrame algus- ja lõppkuupäeva.
                Lehel „Ametitöötaja tabel” näeme tulemust: kes töötab millisel ametikohal.
            </p>
            <a runat="server" href="~/About" class="btn btn-primary me-2">Sisestamine nimi</a>
            <a runat="server" href="~/Contact3" class="btn btn-outline-primary me-2">Lisa ametitöötaja</a>
            </section>
    </main>

</asp:Content>
