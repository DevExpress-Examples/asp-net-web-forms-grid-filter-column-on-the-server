﻿<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxGridView - How to apply a filter to a column </title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxTextBox ID="txtFilter" runat="server" Width="170px" Style="display: inline-table">
		</dx:ASPxTextBox>
		<dx:ASPxButton ID="btnFilter" ClientInstanceName="btnFilter" runat="server" Text="Filter by CategoryName" AutoPostBack="false"
			Style="display: inline-table">
			<ClientSideEvents Click="function(s, e) {
				grid.PerformCallback();
			}" />
		</dx:ASPxButton>
		<dx:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" AutoGenerateColumns="False"
			DataSourceID="ds" KeyFieldName="CategoryID" OnCustomCallback="grid_CustomCallback">
			<Columns>
				<dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
			</Columns>
		</dx:ASPxGridView>
		<asp:AccessDataSource ID="ds" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
		</asp:AccessDataSource>
	</div>
	</form>
</body>
</html>