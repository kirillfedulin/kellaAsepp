using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kellaAsepp
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Diagnostika: kui paring ebaonnestub, naitame, millise serveri/baasiga leht uhendub
        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception == null) return;
            e.ExceptionHandled = true;

            string info = "Viga: " + Server.HtmlEncode(e.Exception.Message) + "<br />";
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["Model1ConnectionString"].ConnectionString;
                using (var con = new SqlConnection(cs))
                {
                    con.Open();
                    using (var cmd = new SqlCommand("SELECT @@SERVERNAME + ' | DB: ' + DB_NAME() + ' | user: ' + SUSER_SNAME()", con))
                        info += "Uhendus: " + Server.HtmlEncode(Convert.ToString(cmd.ExecuteScalar())) + "<br />";
                    using (var cmd = new SqlCommand("SELECT s.name + '.' + t.name FROM sys.tables t JOIN sys.schemas s ON s.schema_id = t.schema_id ORDER BY 1", con))
                    using (var r = cmd.ExecuteReader())
                    {
                        string list = "";
                        while (r.Read()) list += r.GetString(0) + ", ";
                        info += "Tabelid selles baasis: " + (list == "" ? "(uhtegi)" : Server.HtmlEncode(list));
                    }
                }
            }
            catch (Exception ex)
            {
                info += "Diagnostika viga: " + Server.HtmlEncode(ex.Message);
            }
            lblDiag.Text = info;
        }
    }
}
