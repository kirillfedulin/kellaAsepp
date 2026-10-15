<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="About.aspx.cs"
    Inherits="kellaAsepp.About" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <asp:GridView ID="GridView1"
        runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="Id"
        DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">

        <Columns>
            <asp:CommandField ShowDeleteButton="True"
                ShowEditButton="True" />

            <asp:BoundField DataField="Id"
                HeaderText="Id"
                ReadOnly="True"
                SortExpression="Id" />

            <asp:BoundField DataField="name"
                HeaderText="name"
                SortExpression="name" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:Model1ConnectionString1 %>"
        ProviderName="System.Data.SqlClient"
        DeleteCommand="DELETE FROM [Entity1Set] WHERE [Id] = @Id"
        SelectCommand="SELECT [Id], [name] FROM [Entity1Set]"
        UpdateCommand="UPDATE [Entity1Set] SET [name] = @name WHERE [Id] = @Id">

        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>

        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <br />
    <br />
    Lisa töötaja<br />
    <br />

</asp:Content>