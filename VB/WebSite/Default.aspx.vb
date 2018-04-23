Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Partial Public Class Grid_Styles_EmphasizeUpdateEditButtons_Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		Select Case ddlMode.SelectedIndex
			Case 0
				ASPxGridView1.SettingsEditing.Mode = GridViewEditingMode.Inline
			Case Else
				ASPxGridView1.SettingsEditing.Mode = GridViewEditingMode.EditForm
		End Select
		If (Not IsPostBack) Then
			ASPxGridView1.StartEdit(0)
		End If
	End Sub
	Protected Sub ASPxGridView1_HtmlCommandCellPrepared(ByVal sender As Object, ByVal e As ASPxGridViewTableCommandCellEventArgs)
		If e.VisibleIndex = ASPxGridView1.EditingRowVisibleIndex Then
			e.Cell.CssClass = "myCommandCell"
		End If
	End Sub
End Class
