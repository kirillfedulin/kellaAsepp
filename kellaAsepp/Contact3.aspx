<%@ Page Title="Lisa ametitöötaja veebivorm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="kellaAsepp.Contact3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>

        <asp:DetailsView ID="DetailsView1" runat="server"
            AutoGenerateRows="False"
            DataKeyNames="tootajaAmetiKohtID"
            DataSourceID="SqlDataSource1_ametitootaja"
            DefaultMode="Insert"
            Height="50px" Width="400px">
            <Fields>
                <asp:BoundField DataField="tootajaAmetiKohtID" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="tootajaAmetiKohtID" />

                <asp:TemplateField HeaderText="Töötaja" SortExpression="tootajaID">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList_tootaja" runat="server"
                            DataSourceID="SqlDataSource1_tootaja"
                            DataTextField="nimi" DataValueField="tootajaID"
                            SelectedValue='<%# Bind("tootajaID") %>' />
                        <asp:SqlDataSource ID="SqlDataSource1_tootaja" runat="server"
                            ConnectionString="<%$ ConnectionStrings:Model1ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:Model1ConnectionString.ProviderName %>"
                            SelectCommand="SELECT * FROM [tootajaSet]" />
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Ametikoht" SortExpression="ametiKohtID">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList_ametikoht" runat="server"
                            DataSourceID="SqlDataSource1_ametikoht"
                            DataTextField="nimetus" DataValueField="ametiKohtID"
                            SelectedValue='<%# Bind("ametiKohtID") %>' />
                        <asp:SqlDataSource ID="SqlDataSource1_ametikoht" runat="server"
                            ConnectionString="<%$ ConnectionStrings:Model1ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:Model1ConnectionString.ProviderName %>"
                            SelectCommand="SELECT * FROM [ametiKohtSet]" />
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Algus" SortExpression="alguskuupaev">
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox_algus" runat="server" TextMode="Date" Text='<%# Bind("alguskuupaev") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox_algus"
                            ErrorMessage="Sisesta alguskuupäev" ForeColor="Red" Display="Dynamic" />
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Lõpp" SortExpression="loppkuupaev">
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox_lopp" runat="server" TextMode="Date" Text='<%# Bind("loppkuupaev") %>' />
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ShowInsertButton="True" ShowCancelButton="False" InsertText="Lisa" />
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1_ametitootaja" runat="server"
            ConnectionString="<%$ ConnectionStrings:Model1ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:Model1ConnectionString.ProviderName %>"
            SelectCommand="SELECT * FROM [tootajaAmetikohtSet]"
            InsertCommand="INSERT INTO [tootajaAmetikohtSet] ([tootajaID], [ametiKohtID], [alguskuupaev], [loppkuupaev]) VALUES (@tootajaID, @ametiKohtID, @alguskuupaev, @loppkuupaev)"
            UpdateCommand="UPDATE [tootajaAmetikohtSet] SET [tootajaID] = @tootajaID, [ametiKohtID] = @ametiKohtID, [alguskuupaev] = @alguskuupaev, [loppkuupaev] = @loppkuupaev WHERE [tootajaAmetiKohtID] = @tootajaAmetiKohtID"
            DeleteCommand="DELETE FROM [tootajaAmetikohtSet] WHERE [tootajaAmetiKohtID] = @tootajaAmetiKohtID">
            <InsertParameters>
                <asp:Parameter Name="tootajaID" Type="Int32" />
                <asp:Parameter Name="ametiKohtID" Type="Int32" />
                <asp:Parameter Name="alguskuupaev" Type="DateTime" />
                <asp:Parameter Name="loppkuupaev" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tootajaID" Type="Int32" />
                <asp:Parameter Name="ametiKohtID" Type="Int32" />
                <asp:Parameter Name="alguskuupaev" Type="DateTime" />
                <asp:Parameter Name="loppkuupaev" Type="DateTime" />
                <asp:Parameter Name="tootajaAmetiKohtID" Type="Int32" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="tootajaAmetiKohtID" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>

        <br />
        <a runat="server" href="~/Contact2">Vaata ametitöötaja tabelit</a>
    </main>
</asp:Content>
