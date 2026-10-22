using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kellaAsepp
{
    public partial class Contact3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Pärast lisamist uuendame tabeli kohe
        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                e.KeepInInsertMode = true;
                lblTulemus.ForeColor = System.Drawing.Color.Red;
                lblTulemus.Text = "Lisamine ebaõnnestus: " + Server.HtmlEncode(e.Exception.GetBaseException().Message);
                return;
            }
            lblTulemus.ForeColor = System.Drawing.Color.Green;
            lblTulemus.Text = "Lisatud!";
            GridView1.DataBind();
        }
    }
}
