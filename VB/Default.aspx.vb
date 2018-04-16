Imports Microsoft.VisualBasic
Imports DevExpress.Web
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	  Protected exportAction As Boolean
	  Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	  End Sub
		Protected Sub detailGrid_BeforePerformDataSelect(ByVal sender As Object, ByVal e As EventArgs)
			Session("CategoryID") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
		End Sub
		Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
			exportAction = True
			ASPxGridViewExporter1.WritePdfToResponse("test.pdf")
		End Sub

		Protected Sub detailGrid_DataBound(ByVal sender As Object, ByVal e As EventArgs)
			If exportAction Then
				TryCast(sender, ASPxGridView).Columns("QuantityPerUnit").Visible = False
			End If
		End Sub
End Class