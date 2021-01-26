<%@ page language="C#" autoeventwireup="true" inherits="LineNotifyCallback, App_Web_linenotifycallback.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server" target="_blank">
<dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientVisible="False" 
    Width="100%">
</dx:ASPxTextBox>
<dx:ASPxTextBox ID="ASPxTextBox2" runat="server" ClientVisible="False" 
    Width="100%">
</dx:ASPxTextBox>
<dx:ASPxTextBox ID="ASPxTextBox3" runat="server" ClientVisible="False" 
    Width="100%">
</dx:ASPxTextBox>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" SelectCommand="insert into dbo.LineNotify(access_token, authorize_code, Client_ID, CREATE_ID, CREATE_DT)
values(@access_token, @authorize_code, @Client_ID, @CREATE_ID, GETDATE())
">
    <SelectParameters>
        <asp:Parameter Name="access_token" />
        <asp:Parameter Name="authorize_code" />
        <asp:Parameter Name="Client_ID" />
        <asp:Parameter Name="CREATE_ID" />
    </SelectParameters>
</asp:SqlDataSource>
</form>
</body>
</html>
