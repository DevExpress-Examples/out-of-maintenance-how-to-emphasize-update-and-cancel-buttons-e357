<%-- BeginRegion TagPrefix and page properties --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Grid_Styles_EmphasizeUpdateEditButtons_Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%-- EndRegion --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to emphasize Update and Cancel buttons</title>
	<%-- BeginRegion Custom CSS --%>
	<style type="text/css">
		.myCommandCell,
		.myEditForm a
		{
			font-size: 15pt;
		}
		.myCommandCell a,
		.myEditForm a
		{
			color: red !important;
			margin: 0 4px;
		}
    </style>
    <%-- EndRegion --%>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<%-- BeginRegion DropDownList --%>			
			Edit mode:
			<asp:DropDownList ID="ddlMode" runat="server" AutoPostBack="true">
				<asp:ListItem Value="Inline"></asp:ListItem>
				<asp:ListItem Value="EditForm"></asp:ListItem>
			</asp:DropDownList><br />
			<br />
			<%-- EndRegion --%>
			<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
				DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" OnHtmlCommandCellPrepared="ASPxGridView1_HtmlCommandCellPrepared">
				<Columns>
					<dxwgv:GridViewCommandColumn VisibleIndex="0">
						<EditButton Visible="True">
						</EditButton>
					</dxwgv:GridViewCommandColumn>
					<dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
						<EditFormSettings Visible="False"></EditFormSettings>
					</dxwgv:GridViewDataTextColumn>
					<dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
					</dxwgv:GridViewDataTextColumn>
					<dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
					</dxwgv:GridViewDataTextColumn>
				</Columns>
				<Styles>
					<EditForm CssClass="myEditForm"></EditForm>
				</Styles>
			</dxwgv:ASPxGridView>
			<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
				SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
		</div>
	</form>
</body>
</html>
