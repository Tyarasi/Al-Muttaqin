Imports System.Data
Imports System.Data.SqlClient
Imports System
Public Class Login
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (password.Text = "user") Then
            Response.Redirect("/index.aspx")
        ElseIf (password.Text = "admin") Then
            Response.Redirect("/dashboard_admin.aspx")
        End If
    End Sub
End Class