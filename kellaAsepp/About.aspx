<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="About.aspx.cs"
    Inherits="kellaAsepp.About" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <asp:GridView ID="GridView1"
        runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="tootajaid"
        DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">

        <Columns>
            <asp:CommandField ShowDeleteButton="True"
                ShowEditButton="True" />

            <asp:BoundField DataField="tootajaid"
                HeaderText="Id"
                ReadOnly="True"
                SortExpression="tootajaid" />

            <asp:BoundField DataField="nimiPerenimi"
                HeaderText="Nimi Perenimi"
                SortExpression="nimiPerenimi" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:Model1ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:Model1ConnectionString.ProviderName %>"
        DeleteCommand="DELETE FROM [tootajaSetSet] WHERE [tootajaid] = @tootajaid"
        SelectCommand="SELECT [tootajaid], [nimiPerenimi] FROM [tootajaSetSet]"
        UpdateCommand="UPDATE [tootajaSetSet] SET [nimiPerenimi] = @nimiPerenimi WHERE [tootajaid] = @tootajaid" InsertCommand="INSERT INTO [tootajaSetSet] ([nimiPerenimi]) VALUES (@nimiPerenimi)">

        <DeleteParameters>
            <asp:Parameter Name="tootajaid" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="nimiPerenimi" Type="String" />
        </InsertParameters>

        <UpdateParameters>
            <asp:Parameter Name="nimiPerenimi" Type="String" />
            <asp:Parameter Name="tootajaid" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <br />
    <br />
    Lisa töötaja<br />
<asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="tootajaid" DefaultMode="Insert">
    <Fields>
        <asp:BoundField DataField="nimiPerenimi" HeaderText="Nimi Perenimi" SortExpression="nimiPerenimi" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<br />
    <br />

</asp:Content>