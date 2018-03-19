using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
    public partial class ControlCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var table = new HtmlTable();
            var row = new HtmlTableRow();
            var cell = new HtmlTableCell();
            var btn = new LinkButton();

            btn.Text = "Click Me!";
            btn.Click += Button1_OnClick;

            cell.Controls.Add(btn);
            row.Cells.Add(cell);
            table.Rows.Add(row);
            Task1Assignees.Controls.Add(table);
        }

        private void Button1_OnClick(object sender, EventArgs e)
        {
            Response.Write("Clicked!");
        }
    }
}