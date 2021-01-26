<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="CHART_RPT3, App_Web_chart_rpt3.aspx.cdcab7d2" %>

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

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .pie_radius{
            width:100%;
            height:100%;
            border-right: #8B8B8B 3px solid; 
            border-top: #8B8B8B 3px solid; 
            border-left: #8B8B8B 3px solid; 
            border-bottom: #8B8B8B 3px solid;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 5px 5px 5px;
            position:relative;
        }        
        .style8
        {
            width: 100%;
        }
        .style12
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="查詢">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="center">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <dx:ASPxPanel ID="ASPxPanel2" runat="server" RenderMode="Table">
                                        <PanelCollection>
                                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                <div align="left">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="Panel5" runat="server" Font-Names="王漢宗細圓體繁" Width="100%">
                                                                    <table class="style8">
                                                                        <tr>
                                                                            <td align="left" class="style12" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                                <asp:Panel ID="Panel7" runat="server" Font-Names="王漢宗細圓體繁" Width="650px">
                                                                                    <table class="style8">
                                                                                        <tr>
                                                                                            <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                                                店別</td>
                                                                                            <td align="right">
                                                                                                <dx:ASPxComboBox ID="cbNO_STORE" runat="server" DataSourceID="edsPOS_storedat" 
                                                                                                    Font-Names="王漢宗細圓體繁" Height="28px" TextField="NM_STORE" 
                                                                                                    TextFormatString="{0}; {1}; {2}" ValueField="NO_STORE" Width="200px">
                                                                                                    <Columns>
                                                                                                        <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                                                                        <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                                                        <dx:ListBoxColumn Caption="店鋪類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                                                    </Columns>
                                                                                                </dx:ASPxComboBox>
                                                                                            </td>
                                                                                            <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                                                日期起</td>
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
                                                                                            <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                                                日期迄</td>
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
                                                                                                <dx:ASPxButton ID="btnQUERY" runat="server" CssClass="button search icon" 
                                                                                                    CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="28px" 
                                                                                                    OnClick="btnQUERY_Click" Text="查詢" Width="90px">
                                                                                                </dx:ASPxButton>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" class="style12" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                                <asp:Panel ID="Panel8" runat="server" Width="275px">
                                                                                    <table class="style8">
                                                                                        <tr>
                                                                                            <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                                                過濾條件</td>
                                                                                            <td align="left">
                                                                                                <dx:ASPxComboBox ID="cbSORT" runat="server" ClientInstanceName="csSORT" 
                                                                                                    Font-Names="王漢宗細圓體繁" Height="28px" TextFormatString="{0}" Width="200px">
                                                                                                    <Items>
                                                                                                        <dx:ListEditItem Text="問題分類統計" Value="問題分類統計" />
                                                                                                        <dx:ListEditItem Text="請修狀態統計" Value="請修狀態統計" />
                                                                                                        <dx:ListEditItem Text="維修期限已過期統計" Value="維修期限已過期統計" />
                                                                                                    </Items>
                                                                                                </dx:ASPxComboBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                <dxchartsui:WebChartControl ID="WebChartControl2" runat="server" 
                                                                    ClientInstanceName="chart" Height="430px" PaletteName="Pastel Kit" 
                                                                    Width="1000px">
                                                                    <fillstyle>
                                                                        <optionsserializable><cc1:SolidFillOptions /></optionsserializable>
                                                                    </fillstyle>
                                                                    <seriestemplate>
                                                                        <viewserializable><cc1:SideBySideBarSeriesView></cc1:SideBySideBarSeriesView></viewserializable>
                                                                        <labelserializable><cc1:SideBySideBarSeriesLabel LineVisible="True"><fillstyle><optionsserializable><cc1:SolidFillOptions /></optionsserializable></fillstyle><pointoptionsserializable><cc1:PointOptions></cc1:PointOptions></pointoptionsserializable></cc1:SideBySideBarSeriesLabel></labelserializable>
                                                                        <legendpointoptionsserializable><cc1:PointOptions></cc1:PointOptions></legendpointoptionsserializable>
                                                                    </seriestemplate>
                                                                    <crosshairoptions>
                                                                        <commonlabelpositionserializable><cc1:CrosshairMousePosition /></commonlabelpositionserializable>
                                                                    </crosshairoptions>
                                                                    <tooltipoptions>
                                                                        <tooltippositionserializable><cc1:ToolTipMousePosition /></tooltippositionserializable>
                                                                    </tooltipoptions>
                                                                </dxchartsui:WebChartControl>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                    Font-Size="10pt" Font-Underline="False" ForeColor="#FF3300" Text="注意！已扣除作廢發票金額" 
                                                                    Width="100%" ClientVisible="False">
                                                                </dx:ASPxLabel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </dx:PanelContent>
                                        </PanelCollection>
                                    </dx:ASPxPanel>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <br />
                            <asp:Panel ID="Panel6" runat="server" Width="550px">
                                <table style="width:100%;">
                                    <tr>
                                        <td align="left">
                                            <dx:ASPxButton ID="btnQUERY0" runat="server" AutoPostBack="False" 
                                                Checked="True" ClientVisible="False" CssClass="button search icon" 
                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="28px" 
                                                Text="查詢" Width="90px">
                                                <ClientSideEvents Click="function(s, e) {
    if (clientPopup.IsVisible == true)
    	return;
	csNO_STORE.SetSelectedIndex(0);
	csSORT.SetSelectedIndex(0);
	var dob = new Date();
	csBEGDT.SetDate(dob);
	csENDDT.SetDate(dob);
	clientPopup.Show();	
}" />
                                            </dx:ASPxButton>
                                        </td>
                                        <td align="left">
                                            <dx:ASPxLabel ID="labNO_STORE" runat="server" ClientVisible="False" 
                                                CssClass="button pill" Font-Names="王漢宗細圓體繁" Text="labNO_STORE">
                                            </dx:ASPxLabel>
                                            <dx:ASPxLabel ID="labBEGDT" runat="server" ClientVisible="False" 
                                                CssClass="button pill" Font-Names="王漢宗細圓體繁" Text="labBEGDT">
                                            </dx:ASPxLabel>
                                            <dx:ASPxLabel ID="labSORT" runat="server" ClientVisible="False" 
                                                CssClass="button pill" Font-Names="王漢宗細圓體繁" Text="labSORT">
                                            </dx:ASPxLabel>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <br />
                            <br />
                            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" AllowDragging="True" 
                                ClientInstanceName="clientPopup" CloseAction="CloseButton" 
                                CssClass="pie_radius" EnableTheming="True" Font-Bold="True" 
                                Font-Names="王漢宗細圓體繁" Font-Size="Small" HeaderText="查詢" 
                                PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" 
                                ShowShadow="False" Target="_blank" Theme="Office2010Silver">
                                <ContentCollection>
                                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <dx:ASPxPanel ID="ASPxPanel3" runat="server" Width="400px">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                            <ContentTemplate>
                                                                <table style="width:100%;">
                                                                    <tr>
                                                                        <td>
                                                                            店別</td>
                                                                        <td>
                                                                            <dx:ASPxComboBox ID="cbNO_STORE0" runat="server" ClientInstanceName="csNO_STORE" 
                                                                                DataSourceID="edsPOS_storedat" Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                                TextField="NM_STORE" TextFormatString="{0}; {1}; {2}" ValueField="NO_STORE" 
                                                                                Width="200px">
                                                                                <Columns>
                                                                                    <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                                                    <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                                    <dx:ListBoxColumn Caption="店鋪類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                                </Columns>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            輸出</td>
                                                                        <td>
                                                                            <dx:ASPxComboBox ID="cbSORT0" runat="server" ClientInstanceName="csSORT" 
                                                                                Font-Names="王漢宗細圓體繁" Height="28px" TextFormatString="{0}" Width="200px">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="問題分類統計" Value="問題分類統計" />
                                                                                    <dx:ListEditItem Text="請修狀態統計" Value="請修狀態統計" />
                                                                                    <dx:ListEditItem Text="維修期限已過期統計" Value="維修期限已過期統計" />
                                                                                </Items>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            日期起</td>
                                                                        <td>
                                                                            <dx:ASPxDateEdit ID="deBEGDT0" runat="server" ClientInstanceName="csBEGDT" 
                                                                                DisplayFormatString="yyyy-MM-dd" EditFormat="Custom" 
                                                                                EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                                Width="120px">
                                                                                <CalendarProperties>
                                                                                    <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                    <Style Font-Names="王漢宗細圓體繁">
                                                                                    </Style>
                                                                                </CalendarProperties>
                                                                            </dx:ASPxDateEdit>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            日期迄</td>
                                                                        <td>
                                                                            <dx:ASPxDateEdit ID="deENDDT0" runat="server" ClientInstanceName="csENDDT" 
                                                                                DisplayFormatString="yyyy-MM-dd" EditFormat="Custom" 
                                                                                EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                                Width="120px">
                                                                                <CalendarProperties>
                                                                                    <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                    <Style Font-Names="王漢宗細圓體繁">
                                                                                    </Style>
                                                                                </CalendarProperties>
                                                                            </dx:ASPxDateEdit>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <dx:ASPxButton ID="btnOK" runat="server" CssClass="button arrowup icon" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" onclick="btnOK_Click" Text="確定" 
                                                                                Width="100px" Height="28px">
                                                                                <ClientSideEvents Click="function(s, e) {
	clientPopup.Hide();
}" />
                                                                            </dx:ASPxButton>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                        </div>
                                    </dx:PopupControlContentControl>
                                </ContentCollection>
                            </dx:ASPxPopupControl>
                            <br />
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            OnSelecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_storedat" OrderBy="it.NO_STORE">
                        </asp:EntityDataSource>
                    <br />
                    <br />
                    <br />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

