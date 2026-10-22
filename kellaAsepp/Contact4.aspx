<%@ Page Title="Töökoht" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact4.aspx.cs" Inherits="kellaAsepp.Contact4" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>

        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="ametiKohtID"
            DataSourceID="SqlDataSource1"
            EmptyDataText="Ametikohti ei ole veel.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ametiKohtID" HeaderText="Id" ReadOnly="True" SortExpression="ametiKohtID" />
                <asp:BoundField DataField="nimetus" HeaderText="Nimetus" SortExpression="nimetus" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
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

        <br />
        Lisa ametikoht<br />
        <asp:DetailsView ID="DetailsView1" runat="server"
            AutoGenerateRows="False"
            DataKeyNames="ametiKohtID"
            DataSourceID="SqlDataSource1"
            DefaultMode="Insert"
            Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="nimetus" HeaderText="Nimetus" SortExpression="nimetus" />
                <asp:CommandField ShowInsertButton="True" ShowCancelButton="False" InsertText="Lisa" />
            </Fields>
        </asp:DetailsView>
    </main>
</asp:Content>
