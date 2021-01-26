<%@ page title="" language="C#" autoeventwireup="true" inherits="UTL_RPT5, App_Web_utl_rpt5.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v12.1.Export, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid.Export" tagprefix="dx" %>

<%@ Register assembly="DevExpress.XtraCharts.v12.1.Web, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallback" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxLoadingPanel" tagprefix="dx" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" rel="stylesheet"
        type="text/css" />
    <style type="text/css">
	    BODY {
		    font-size: 14px; 
		    font-family: verdana; 
		    background-color: #FFFFFF; 
		    background-position: center;
		    margin: 5px;
		    height: 100%
	    }	
        .style8
        {
            width: 100%;
        }
        .menuroot
        { 
            border-radius: 0 0 10px 0;
            box-shadow: #666 5px 5px 5px;
        }   
        .top
        {
            display:none;
            position:fixed;
            bottom:10px;
            right:10px;
        }    
    </style>
    <script type="text/javascript">
        function OnBeginCallback(s, e) {
            LoadingPanel.Show();
        }
        function OnEndCallback(s, e) {
            LoadingPanel.Hide();
        }
    </script>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                       <div align="center">
                            <dx:ASPxPanel ID="ASPxPanel2" runat="server" RenderMode="Table" Width="100%">
                                <PanelCollection>
                                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                        <div align="center">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel6" runat="server" Width="450px">
                                                            <table class="style8">
                                                                <tr>
                                                                    <td align="right" style="font-family: 王漢宗細圓體繁; font-size: x-small">
                                                                        過濾條件</td>
                                                                    <td align="left">
                                                                        <dx:ASPxComboBox ID="cbKIND" runat="server" 
                                                                            Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                            TextFormatString="{0}" Width="60px" AutoPostBack="True" 
                                                                            OnSelectedIndexChanged="cbKIND_SelectedIndexChanged" SelectedIndex="0">
                                                                            <Items>
                                                                                <dx:ListEditItem Selected="True" Text="金額" Value="金額" />
                                                                                <dx:ListEditItem Text="客數" Value="客數" />
                                                                                <dx:ListEditItem Text="客單" Value="客單" />
                                                                            </Items>
                                                                        </dx:ASPxComboBox>
                                                                    </td>
                                                                    <td>
                                                                        <dx:ASPxCheckBox ID="cbShowLabels" runat="server" AutoPostBack="True" 
                                                                            CheckState="Unchecked" Font-Bold="False" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="X-Small" OnCheckedChanged="cbShowLabels_CheckedChanged" Text="標籤">
                                                                            <ClientSideEvents CheckedChanged="function(s, e) {

}" />
                                                                        </dx:ASPxCheckBox>
                                                                    </td>
                                                                    <td align="left">
                                                                        <dx:ASPxComboBox ID="cbCOMNO" runat="server" AutoPostBack="True" 
                                                                            DataSourceID="SqlDataSource4" Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                            OnSelectedIndexChanged="cbCOMNO_SelectedIndexChanged" SelectedIndex="0" 
                                                                            TextField="ECR_FLOOR" TextFormatString="{0}" ValueField="ECR_FLOOR" 
                                                                            Width="140px">
                                                                        </dx:ASPxComboBox>
                                                                    </td>
                                                                    <td align="right" style="font-family: 王漢宗細圓體繁; font-size: x-small">
                                                                        縮放百分比</td>
                                                                    <td align="left" style="font-family: 王漢宗細圓體繁; font-size: x-small">
                                                                        <dx:ASPxComboBox ID="cbZoom" runat="server" AutoPostBack="True" 
                                                                            Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                            OnSelectedIndexChanged="cbZoom_SelectedIndexChanged" SelectedIndex="3" 
                                                                            TextFormatString="{0}" Width="60px">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="50" Value="50" />
                                                                                <dx:ListEditItem Text="75" Value="75" />
                                                                                <dx:ListEditItem Text="100" Value="100" />
                                                                                <dx:ListEditItem Text="120" Value="120" Selected="True" />
                                                                                <dx:ListEditItem Text="140" Value="140" />
                                                                                <dx:ListEditItem Text="170" Value="170" />
                                                                                <dx:ListEditItem Text="200" Value="200" />
                                                                                <dx:ListEditItem Text="250" Value="250" />
                                                                                <dx:ListEditItem Text="300" Value="300" />
                                                                            </Items>
                                                                        </dx:ASPxComboBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel5" runat="server" Width="600px" Font-Names="王漢宗細圓體繁" 
                                                            Visible="False">
                                                            <table class="style8">
                                                                <tr>
                                                                    <td align="left">
                                                                        <dx:ASPxComboBox ID="cbNO_STORE" runat="server" 
                                                                            Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                            TextFormatString="{0}; {1}; {2}" Width="200px" 
                                                                            DataSourceID="edsPOS_storedat" TextField="NM_STORE" ValueField="NO_STORE">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                                                <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                                <dx:ListBoxColumn Caption="店鋪類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                        </dx:ASPxComboBox>
                                                                    </td>
                                                                    <td>
                                                                        <dx:ASPxDateEdit ID="deBEGDT" runat="server" DisplayFormatString="yyyy-MM-dd" 
                                                                            EditFormat="Custom" EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" 
                                                                            Height="28px" Width="100px">
                                                                            <CalendarProperties>
                                                                                <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                <Style Font-Names="王漢宗細圓體繁">
                                                                                </Style>
                                                                            </CalendarProperties>
                                                                        </dx:ASPxDateEdit>
                                                                    </td>
                                                                    <td>
                                                                        <dx:ASPxDateEdit ID="deENDDT" runat="server" DisplayFormatString="yyyy-MM-dd" 
                                                                            EditFormat="Custom" EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" 
                                                                            Height="28px" Width="100px">
                                                                            <CalendarProperties>
                                                                                <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                <Style Font-Names="王漢宗細圓體繁">
                                                                                </Style>
                                                                            </CalendarProperties>
                                                                        </dx:ASPxDateEdit>
                                                                    </td>
                                                                    <td>
                                                                        <dx:ASPxButton ID="btnQUERY" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="X-Small" Height="28px" OnClick="btnQUERY_Click" Text="查詢">
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" 
                                                            ClientInstanceName="chart" Height="600px" Width="700px" PaletteName="Apex">
                                                            <fillstyle>
                                                                <optionsserializable>
                                                                    <cc1:SolidFillOptions />
                                                                </optionsserializable>
                                                            </fillstyle>
                                                            <seriestemplate>
                                                                <viewserializable>
                                                                    <cc1:SideBySideBarSeriesView>
                                                                    </cc1:SideBySideBarSeriesView>
                                                                </viewserializable>
                                                                <labelserializable>
                                                                    <cc1:SideBySideBarSeriesLabel LineVisible="True">
                                                                        <fillstyle>
                                                                            <optionsserializable>
                                                                                <cc1:SolidFillOptions />
                                                                            </optionsserializable>
                                                                        </fillstyle>
                                                                        <pointoptionsserializable>
                                                                            <cc1:PointOptions>
                                                                            </cc1:PointOptions>
                                                                        </pointoptionsserializable>
                                                                    </cc1:SideBySideBarSeriesLabel>
                                                                </labelserializable>
                                                                <legendpointoptionsserializable>
                                                                    <cc1:PointOptions>
                                                                    </cc1:PointOptions>
                                                                </legendpointoptionsserializable>
                                                            </seriestemplate>
                                                            <clientsideevents begincallback="OnBeginCallback" endcallback="OnEndCallback" />
                                                            <clientsideevents begincallback="OnBeginCallback" endcallback="OnEndCallback" />
                                                            <clientsideevents begincallback="OnBeginCallback" endcallback="OnEndCallback" />
                                                            <clientsideevents begincallback="OnBeginCallback" endcallback="OnEndCallback" />
                                                            <clientsideevents begincallback="OnBeginCallback" endcallback="OnEndCallback" />
                                                            <clientsideevents begincallback="OnBeginCallback" endcallback="OnEndCallback" />
                                                            <crosshairoptions>
                                                                <commonlabelpositionserializable>
                                                                    <cc1:CrosshairMousePosition />
                                                                </commonlabelpositionserializable>
                                                            </crosshairoptions>
                                                            <tooltipoptions>
                                                                <tooltippositionserializable>
                                                                    <cc1:ToolTipMousePosition />
                                                                </tooltippositionserializable>
                                                            </tooltipoptions>
                                                        </dxchartsui:WebChartControl>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                        </div>
        <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            OnSelected="SqlDataSource2_Selected" OnSelecting="SqlDataSource2_Selecting" 
                            SelectCommand="exec dbo.CHART_RPT5 @BEGDT, @ENDDT, @STORE_NO">
                            <SelectParameters>
                                <asp:Parameter Name="BEGDT" />
                                <asp:Parameter Name="ENDDT" />
                                <asp:Parameter Name="STORE_NO" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>">
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_storedat" OrderBy="it.NO_STORE">
                        </asp:EntityDataSource>

</form>
</body>
</html>
