using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;

public partial class Grid_Styles_EmphasizeUpdateEditButtons_Default : System.Web.UI.Page {
	protected void Page_Load(object sender, EventArgs e) {
		switch(ddlMode.SelectedIndex) {
			case 0:
				ASPxGridView1.SettingsEditing.Mode = GridViewEditingMode.Inline;
				break;
			default:
				ASPxGridView1.SettingsEditing.Mode = GridViewEditingMode.EditForm;
				break;
		}
		if(!IsPostBack)
			ASPxGridView1.StartEdit(0);
	}
	protected void ASPxGridView1_HtmlCommandCellPrepared(object sender, ASPxGridViewTableCommandCellEventArgs e) {
		if(e.VisibleIndex == ASPxGridView1.EditingRowVisibleIndex)
			e.Cell.CssClass = "myCommandCell";					
	}
}
