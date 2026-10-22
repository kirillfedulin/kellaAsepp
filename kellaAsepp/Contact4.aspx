<%@ Page Title="Töökoht" Language="C#" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>

        <asp:GridView ID="GridView1" runat="server"
            CssClass="table table-striped table-hover align-middle w-auto" GridLines="None" HeaderStyle-CssClass="table-dark"
            AutoGenerateColumns="False"
            DataKeyNames="ametiKohtID"
            DataSourceID="SqlDataSource1"
            EmptyDataText="Töökohti ei ole veel.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-outline-secondary me-1" />
                <asp:BoundField DataField="ametiKohtID" HeaderText="Id" ReadOnly="True" SortExpression="ametiKohtID" />
                <asp:BoundField DataField="nimetus" HeaderText="Nimetus" SortExpression="nimetus" ControlStyle-CssClass="form-control" />
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

        <h3>Lisa töökoht</h3>
        <asp:DetailsView ID="DetailsView1" runat="server"
            CssClass="table table-borderless w-auto" FieldHeaderStyle-CssClass="fw-semibold pe-4"
            AutoGenerateRows="False"
            DataKeyNames="ametiKohtID"
            DataSourceID="SqlDataSource1"
            DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="nimetus" HeaderText="Nimetus" SortExpression="nimetus" ControlStyle-CssClass="form-control" />
                <asp:CommandField ShowInsertButton="True" ShowCancelButton="False" InsertText="Lisa" ButtonType="Button" ControlStyle-CssClass="btn btn-primary" />
            </Fields>
        </asp:DetailsView>
    </main>
</asp:Content>
