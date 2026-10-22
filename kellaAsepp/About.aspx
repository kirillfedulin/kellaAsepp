<%@ Page Title="Sisestamine nimi" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="About.aspx.cs"
    Inherits="kellaAsepp.About" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <asp:Label ID="lblDiag" runat="server" ForeColor="Red" EnableViewState="false" />

    <h2>Töötajad</h2>

    <asp:GridView ID="GridView1"
        runat="server"
        CssClass="table table-striped table-hover align-middle w-auto" GridLines="None" HeaderStyle-CssClass="table-dark"
        AutoGenerateColumns="False"
        DataKeyNames="tootajaID"
        DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">

        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-outline-secondary me-1" />

            <asp:BoundField DataField="tootajaID"
                HeaderText="Id"
                ReadOnly="True"
                SortExpression="tootajaID" />

            <asp:BoundField DataField="nimi" HeaderText="Nimi" SortExpression="nimi" ControlStyle-CssClass="form-control" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1"
        runat="server"
        OnSelected="SqlDataSource1_Selected"
        ConnectionString="<%$ ConnectionStrings:Model1ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:Model1ConnectionString.ProviderName %>"
        DeleteCommand="DELETE FROM [tootajaSet] WHERE [tootajaID] = @tootajaID"
        SelectCommand="SELECT [tootajaID], [nimi] FROM [tootajaSet]"
        UpdateCommand="UPDATE [tootajaSet] SET [nimi] = @nimi WHERE [tootajaID] = @tootajaID" InsertCommand="INSERT INTO [tootajaSet] ([nimi]) VALUES (@nimi)">

        <DeleteParameters>
            <asp:Parameter Name="tootajaID" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="nimi" Type="String" />
        </InsertParameters>

        <UpdateParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="tootajaID" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <h3>Lisa töötaja</h3>
<asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-borderless w-auto" FieldHeaderStyle-CssClass="fw-semibold pe-4" DataSourceID="SqlDataSource1" AutoGenerateRows="False" DataKeyNames="tootajaID" DefaultMode="Insert">
    <Fields>
        <asp:BoundField DataField="nimi" HeaderText="Nimi" SortExpression="nimi" ControlStyle-CssClass="form-control" />
        <asp:CommandField ShowInsertButton="True" ShowCancelButton="False" InsertText="Lisa" ButtonType="Button" ControlStyle-CssClass="btn btn-primary" />
    </Fields>
</asp:DetailsView>

<hr class="my-5" />
    <h2>Ametikohad</h2>

    <asp:GridView ID="GridView2" runat="server"
        CssClass="table table-striped table-hover align-middle w-auto" GridLines="None" HeaderStyle-CssClass="table-dark"
        AutoGenerateColumns="False"
        DataKeyNames="ametiKohtID"
        DataSourceID="SqlDataSource2"
        EmptyDataText="Ametikohti ei ole veel.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-outline-secondary me-1" />
            <asp:BoundField DataField="ametiKohtID" HeaderText="Id" ReadOnly="True" SortExpression="ametiKohtID" />
            <asp:BoundField DataField="nimetus" HeaderText="Nimetus" SortExpression="nimetus" ControlStyle-CssClass="form-control" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:Model1ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:Model1ConnectionString.ProviderName %>"
        SelectCommand="SELECT [ametiKohtID], [nimetus] FROM [ametiKohtSet]"
        InsertCommand="INSERT INTO [ametiKohtSet] ([nimetus]) VALUES (@nimetus)"
        UpdateCommand="UPDATE [ametiKohtSet] SET [nimetus] = @nimetus WHERE [ametiKohtID] = @ametiKohtID"
        DeleteCommand="DELETE FROM [ametiKohtSet] WHERE [ametiKohtID] = @ametiKohtID">
        <InsertParameters>
            <asp:Parameter Name="nimetus" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="ametiKohtID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="ametiKohtID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <h3>Lisa ametikoht</h3>
    <asp:DetailsView ID="DetailsView2" runat="server" CssClass="table table-borderless w-auto" FieldHeaderStyle-CssClass="fw-semibold pe-4"
        AutoGenerateRows="False"
        DataKeyNames="ametiKohtID"
        DataSourceID="SqlDataSource2"
        DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="nimetus" HeaderText="Nimetus" SortExpression="nimetus" ControlStyle-CssClass="form-control" />
            <asp:CommandField ShowInsertButton="True" ShowCancelButton="False" InsertText="Lisa" ButtonType="Button" ControlStyle-CssClass="btn btn-primary" />
        </Fields>
    </asp:DetailsView>
</asp:Content>