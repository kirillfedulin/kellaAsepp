<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="About.aspx.cs"
    Inherits="kellaAsepp.About" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <asp:Label ID="lblDiag" runat="server" ForeColor="Red" EnableViewState="false" />

    <h1><strong><span style="font-size: xx-large">Sissestamine nimi</span></strong></h1>

    <asp:GridView ID="GridView1"
        runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="tootajaID"
        DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">

        <Columns>
            <asp:CommandField ShowDeleteButton="True"
                ShowEditButton="True" />

            <asp:BoundField DataField="tootajaID"
                HeaderText="Id"
                ReadOnly="True"
                SortExpression="tootajaID" />

            <asp:BoundField DataField="nimi"
                HeaderText="Nimi"
                SortExpression="nimi" />
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

    <br />
    <br />
    <strong>Lisa töötaja</strong><br />
<asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="tootajaID" DefaultMode="Insert">
    <Fields>
        <asp:BoundField DataField="nimi" HeaderText="Nimi" SortExpression="nimi" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<br />
    <br />

</asp:Content>