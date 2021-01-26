<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="HQ_LineNotify, App_Web_hq_linenotify.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register namespace="DevExpress.Web.ASPxEditors" tagprefix="ASPxEditors" %>

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
        .pie_radius2{
            border: 3px solid #8B8B8B;
            width:100%;
            height:100%;
            border-radius: 8px 8px 8px 8px;
            position:relative;
            top: 0px;
            left: -2px;
        }        
        .style12
        {
            height: 17px;
        }
    </style>
    <script type="text/javascript">
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="管理">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="center">
                            <asp:Panel ID="Panel1" runat="server" Width="1020px">
                                <table style="width: 100%;">
                                    <tr>
                                        <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                            &nbsp;</td>
                                        <td align="left" style="font-family: 王漢宗細圓體繁; font-size: small">
                                            <dx:ASPxComboBox ID="cbClient_ID" runat="server" 
                                                DataSourceID="edsLINE_clientdoc" Font-Names="王漢宗細圓體繁" Height="28px" 
                                                TextField="Client_NAME" TextFormatString="{0}" ToolTip="請選擇您要發送的通報" 
                                                ValueField="Client_ID" Width="200px">
                                                <Columns>
                                                    <dx:ListBoxColumn Caption="通報名稱" FieldName="Client_NAME" Name="Client_NAME" />
                                                    <dx:ListBoxColumn Caption="Client_ID" FieldName="Client_ID" Name="Client_ID" 
                                                        Visible="False" />
                                                </Columns>
                                            </dx:ASPxComboBox>
                                        </td>
                                        <td align="left" style="font-family: 王漢宗細圓體繁; font-size: small">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                            &nbsp;</td>
                                        <td align="left" 
                                            style="font-family: 王漢宗細圓體繁; font-size: small; color: #FF0000;">
                                            ＊發送的訊息(必填)</td>
                                        <td align="left" style="font-family: 王漢宗細圓體繁; font-size: small">
                                            系統回傳訊息</td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                            &nbsp;</td>
                                        <td bgcolor="#8B8B8B" class="pie_radius2" style="margin-right: 5px;">
                                            <dx:ASPxMemo ID="ASPxMemo1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                Font-Size="Small" Height="300px" NullText="請輸入您要發送的訊息" 
                                                ToolTip="訊息必須輸入，否則LINE無法接收傳送" Width="500px">
                                                <Border BorderStyle="None" />
                                            </dx:ASPxMemo>
                                        </td>
                                        <td bgcolor="#8B8B8B" class="pie_radius2" style="margin-left: 5px;">
                                            <dx:ASPxMemo ID="ASPxMemo2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                Font-Size="Small" Height="300px" ReadOnly="True" Width="500px">
                                            </dx:ASPxMemo>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td align="right">
                                            <dx:aspxbutton ID="ASPxButton1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                Font-Size="Small" Height="28px" OnClick="ASPxButton1_Click" Text="發送訊息" 
                                                xmlns:dx="devexpress.web.aspxeditors">
                                            </dx:aspxbutton>
                                        </td>
                                        <td align="right">
                                            <dx:aspxbutton ID="ASPxButton2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                Font-Size="Small" Height="28px" OnClick="ASPxButton2_Click" Text="清除訊息" 
                                                xmlns:dx="devexpress.web.aspxeditors">
                                            </dx:aspxbutton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td valign="top" align="left">
                                            <dx:ASPxTextBox ID="tbFILES" runat="server" BackColor="#CCCCCC" 
                                                ClientInstanceName="txtFILES" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                Height="28px" NullText="新增圖片檔案" ReadOnly="True" Width="500px">
                                                <Border BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" />
                                            </dx:ASPxTextBox>
                                        </td>
                                        <td align="left">
                                            <dx:ASPxButton ID="btnFileUpload" runat="server" Font-Names="王漢宗細圓體繁" 
                                                Height="28px" OnClick="btnFileUpload_Click" Text="上傳">
                                            </dx:ASPxButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style12">
                                            </td>
                                        <td valign="top" class="style12">
                                            <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="100%" />
                                        </td>
                                        <td align="left">
                                            </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <br />
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" SelectCommand="select access_token from dbo.LineNotify
"></asp:SqlDataSource>
                        <asp:EntityDataSource ID="edsLINE_clientdoc" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="LINE_clientdoc" OrderBy="">
                        </asp:EntityDataSource>
                    <br />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

