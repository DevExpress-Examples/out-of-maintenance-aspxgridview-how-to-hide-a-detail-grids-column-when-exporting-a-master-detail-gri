using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
      protected bool exportAction;
      protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void detailGrid_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["CategoryID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }
        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            exportAction = true;
            ASPxGridViewExporter1.WritePdfToResponse("test.pdf");
        }

        protected void detailGrid_DataBound(object sender, EventArgs e)
        {
            if(exportAction)
                (sender as ASPxGridView).Columns["QuantityPerUnit"].Visible = false;
        }
}