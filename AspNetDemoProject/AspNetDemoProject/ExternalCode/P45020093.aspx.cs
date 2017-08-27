using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.ExternalCode
{
	public partial class P45020093 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}


		protected void btnAdd_Click(object sender, EventArgs e)
		{
			DataTable dtAircraft = new DataTable();
			dtAircraft = GetAircraftInfo();

			if (ViewState["AircraftTable"] != null)
			{
				dtAircraft = (DataTable)ViewState["AircraftTable"];


				rptAircraft.DataSource = dtAircraft;
				rptAircraft.DataBind();
				rptAircraft.Visible = true;
			}
			else
			{
				rptAircraft.DataSource = null;
				rptAircraft.DataBind();
				rptAircraft.Visible = false;
			}
			txtboatregNum.Text = string.Empty;
			txttaxpayerret.Text = string.Empty;
			txtfortaxofficeonly.Text = string.Empty;
		}

		private DataTable GetAircraftInfo()
		{

			DataTable dtAircraft = null;
			if (ViewState["RowNumber"] != null)
			{
				int RowNumber = Convert.ToInt32((ViewState["RowNumber"]));
				RowNumber++;
				ViewState["RowNumber"] = RowNumber;
			}
			else
			{
				ViewState["RowNumber"] = 1;
			}

			if (ViewState["AircraftTable"] == null)
			{
				dtAircraft = new DataTable("AircraftTable");
				dtAircraft.Columns.Add(new DataColumn("RowNumber", typeof(int)));
				dtAircraft.Columns.Add(new DataColumn("boatregNum", typeof(string)));
				dtAircraft.Columns.Add(new DataColumn("taxpayerret", typeof(string)));
				dtAircraft.Columns.Add(new DataColumn("fortaxofficeonly", typeof(string)));

				ViewState["AircraftTable"] = dtAircraft;
			}
			else
			{
				dtAircraft = (DataTable)ViewState["AircraftTable"];
			}
			DataRow dtRow = dtAircraft.NewRow();

			dtRow["RowNumber"] = Convert.ToInt32(ViewState["RowNumber"]);
			dtRow["boatregNum"] = txtboatregNum.Text.Trim();
			dtRow["taxpayerret"] = txttaxpayerret.Text.Trim();
			dtRow["fortaxofficeonly"] = txtfortaxofficeonly.Text.Trim();
			dtAircraft.Rows.Add(dtRow);
			ViewState["AircraftTable"] = dtAircraft;
			return dtAircraft;
		}
	}
}