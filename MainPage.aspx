<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="Default0, App_Web_mainpage.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxHeadline" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx1" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxLoadingPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .dxgvFocusedRow .dxgv {
            background-color: #33B5E5;
        }
        .dxgvDataRow .dxgv {       
            height:20px;
        }
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
        .pie_radius_w{
            border: 5px solid lightblue;
            width:100%;
            height:100%;
            border-radius: 0 0 20px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
            top: 1px;
            left: -1px;
        }
        .pie_radius_w2 
        {
            width:100%;
            height:100%;
            border-right: lightblue 5px solid; 
            border-top: lightblue 5px solid; 
            border-left: lightblue 5px solid; 
            border-bottom: lightblue 5px solid;
            border-radius: 0 0 5px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
        }                          
        .pie_radius_DarkSlateBlue{
            width:100%;
            height:100%;
            border-right: #483D8B 3px solid; 
            border-top: #483D8B 3px solid; 
            border-left: #483D8B 3px solid; 
            border-bottom: #483D8B 3px solid;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 5px 5px 5px;
            position:relative;
            border: 5px solid #483D8B;
            width:100%;
            height:100%;
            border-radius: 0 0 20px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
            top: 1px;
            left: -1px;
        }   
        .pie_radius_DarkSlateBlue2 
        {
            width:100%;
            height:100%;
            border-right: #483D8B 5px solid; 
            border-top: #483D8B 5px solid; 
            border-left: #483D8B 5px solid; 
            border-bottom: #483D8B 5px solid;
            border-radius: 0 0 5px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
        }                  
        .pie_radius_Tomato{
            width:100%;
            height:100%;
            border-right: #FF6347 3px solid; 
            border-top: #FF6347 3px solid; 
            border-left: #FF6347 3px solid; 
            border-bottom: #FF6347 3px solid;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 5px 5px 5px;
            position:relative;
            border: 5px solid #FF6347;
            width:100%;
            height:100%;
            border-radius: 0 0 20px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
            top: 1px;
            left: -1px;
        }       
        .pie_radius_Tomato2 
        {
            width:100%;
            height:100%;
            border-right: #FF6347 5px solid; 
            border-top: #FF6347 5px solid; 
            border-left: #FF6347 5px solid; 
            border-bottom: #FF6347 5px solid;
            border-radius: 0 0 5px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
        }       
        .pie_radius_ForestGreen{
            width:100%;
            height:100%;
            border-right: #228B22 3px solid; 
            border-top: #228B22 3px solid; 
            border-left: #228B22 3px solid; 
            border-bottom: #228B22 3px solid;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 5px 5px 5px;
            position:relative;
            border: 5px solid #228B22;
            width:100%;
            height:100%;
            border-radius: 0 0 20px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
            top: 1px;
            left: -1px;
        }       
        .pie_radius_ForestGreen2 
        {
            width:100%;
            height:100%;
            border-right: #228B22 5px solid; 
            border-top: #228B22 5px solid; 
            border-left: #228B22 5px solid; 
            border-bottom: #228B22 5px solid;
            border-radius: 0 0 5px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
        }       
</style>
     <script type="text/javascript">
         function BoardPopUpWin(targetUrl) {
             var win2 = window.open(targetUrl, "BoardPopUpWin");
             win2.focus();
         }
         function BoardPopUpWin2(targetUrl) {
             var iMyWidth;
             var iMyHeight;
             //half the screen width minus half the new window width (plus 5 pixel borders).
             iMyWidth = (window.screen.width / 2) - 100;
             //half the screen height minus half the new window height (plus title and status bars).
             iMyHeight = (window.screen.height / 2) - 350;
             //Open the window.
             var win2 = window.open(targetUrl, "BoardPopUpWin", "status=no,height=600,width=500,resizable=yes,left=" + iMyWidth + ",top=" + iMyHeight + ",screenX=" + iMyWidth + ",screenY=" + iMyHeight + ",toolbar=no,menubar=no,scrollbars=no,location=no,directories=no");
             win2.focus();
         }
         function OnBeginCallback(s, e) {
             loadingpanel.Show();
         }
         function OnEndCallback(s, e) {
             loadingpanel.Hide();
         }
         function pagelog(a) {
             var b = userid.GetValue();
             if (a == 1) {
                 if (!csBoard1.GetVisible()) {
                     csBoard1.SetVisible(true);
                     PageMethods.pagelog1("1", b, OnSuccess, OnFailure);
                 }
                 else {
                     csBoard1.SetVisible(false);
                     PageMethods.pagelog1("0", b, OnSuccess, OnFailure);
                 }
             } else if (a == 2) {
                 if (!csBoard2.GetVisible()) {
                     csBoard2.SetVisible(true);
                     PageMethods.pagelog2("1", b, OnSuccess, OnFailure);
                 }
                 else {
                     csBoard2.SetVisible(false);
                     PageMethods.pagelog2("0", b, OnSuccess, OnFailure);
                 }
             } else if (a == 3) {
                 if (!csBoard3.GetVisible()) {
                     csBoard3.SetVisible(true);
                     PageMethods.pagelog3("1", b, OnSuccess, OnFailure);
                 }
                 else {
                     csBoard3.SetVisible(false);
                     PageMethods.pagelog3("0", b, OnSuccess, OnFailure);
                 }
             } else if (a == 4) {
                 if (!csBoard4.GetVisible()) {
                     csBoard4.SetVisible(true);
                     PageMethods.pagelog4("1", b, OnSuccess, OnFailure);
                 }
                 else {
                     csBoard4.SetVisible(false);
                     PageMethods.pagelog4("0", b, OnSuccess, OnFailure);
                 }
             }
         }
         function OnSuccess(result) {
//             if (result) {
//                 alert(result);
//             } 
         }
         function OnFailure(error) {

         }
//         function OnPopUp(ClientID) {
//             clientPopup.ShowAtElementByID(ClientID);
//         }
         function OnPopUp(COMNO) {
             clientPopup.SetContentUrl('UTL_RPT5.aspx?Sel=UTL_RPT5.aspx&COMNO='+COMNO);  
             clientPopup.Show();
         }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
        <ContentTemplate>
            <table style="width:100%;">
                <tr>
                    <td align="center" valign="top">
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" BackColor="White" 
                            CssClass="pie_radius_ForestGreen2" Font-Bold="True" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                            HeaderText="公告欄" Width="385px">
                            <HeaderStyle BackColor="#228B22" Height="35px" HorizontalAlign="Left" 
                                VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            <borderleft borderstyle="None" />
                            <borderright borderstyle="None" />
                            <borderbottom borderstyle="None" />
                            <borderleft borderstyle="None" />
                            <borderright borderstyle="None" />
                            <borderbottom borderstyle="None" />
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            </HeaderStyle>
                            <TopLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886356262/TopLeftCorner.png" Width="1px">
                            </TopLeftCorner>
                            <NoHeaderTopLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886356262/NoHeaderTopLeftCorner.png" Width="1px">
                            </NoHeaderTopLeftCorner>
                            <TopRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886356262/TopRightCorner.png" Width="1px">
                            </TopRightCorner>
                            <NoHeaderTopRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886356262/NoHeaderTopRightCorner.png" Width="1px">
                            </NoHeaderTopRightCorner>
                            <BottomRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886356262/BottomRightCorner.png" Width="1px">
                            </BottomRightCorner>
                            <BottomLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886356262/BottomLeftCorner.png" Width="1px">
                            </BottomLeftCorner>
                            <HeaderLeftEdge>
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886356262/HeaderLeftEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886356262/HeaderLeftEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                            </HeaderLeftEdge>
                            <HeaderContent>
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886356262/HeaderContent.png" repeat="RepeatX" 
                                    verticalposition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886356262/HeaderContent.png" repeat="RepeatX" 
                                    verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                            </HeaderContent>
                            <HeaderRightEdge>
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="right" 
                                    imageurl="~/Images/ASPxRoundPanel/886356262/HeaderRightEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <backgroundimage horizontalposition="right" 
                                    imageurl="~/Images/ASPxRoundPanel/886356262/HeaderRightEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                            </HeaderRightEdge>
                            <HeaderTemplate>
                                <asp:Panel ID="Panel6" runat="server" Direction="LeftToRight" 
                                    HorizontalAlign="Left" Width="375px">
                                    <table style="width:100%;">
                                        <tr>
                                            <td>
                                                <dx:ASPxLabel ID="ASPxLabel11" runat="server" Font-Bold="True" 
                                                    Font-Italic="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="公告欄" 
                                                    Width="100%" ForeColor="White" ToolTip="點擊這可以縮放版面">
                                                    <ClientSideEvents Click='function(s, e) {
	pagelog(1);
}' />
                                                </dx:ASPxLabel>
                                            </td>
                                            <td align="right">
                                                <dx:ASPxComboBox ID="cbBoard1" runat="server" AutoPostBack="True" 
                                                    Font-Bold="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="28px" 
                                                    Width="100px">
                                                    <Items>
                                                        <dx:ListEditItem Text="總公司" Value="總公司" />
                                                        <dx:ListEditItem Text="門市" Value="門市" />
                                                    </Items>
                                                </dx:ASPxComboBox>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </HeaderTemplate>
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" Width="100%">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <dx:ASPxPanel ID="plBoard1" runat="server" Height="218px" ScrollBars="Vertical" 
                                                            Width="400px" ClientInstanceName="csBoard1">
                                                            <PanelCollection>
                                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                </dx:PanelContent>
                                                            </PanelCollection>
                                                        </dx:ASPxPanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px" />
                            <border bordercolor="#8B8B8B" borderstyle="Solid" borderwidth="0px"></border>
                        </dx:ASPxRoundPanel>
                        <br />
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" BackColor="White" 
                            CssClass="pie_radius_DarkSlateBlue2" Font-Bold="True" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                            HeaderText="店內請修系統" Width="385px">
                            <HeaderStyle BackColor="#483D8B" Height="35px" HorizontalAlign="Left" 
                                VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            <borderleft borderstyle="None" />
                            <borderright borderstyle="None" />
                            <borderbottom borderstyle="None" />
                            <borderleft borderstyle="None" />
                            <borderright borderstyle="None" />
                            <borderbottom borderstyle="None" />
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            </HeaderStyle>
                            <TopLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886487334/TopLeftCorner.png" Width="1px">
                            </TopLeftCorner>
                            <NoHeaderTopLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886487334/NoHeaderTopLeftCorner.png" Width="1px">
                            </NoHeaderTopLeftCorner>
                            <TopRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886487334/TopRightCorner.png" Width="1px">
                            </TopRightCorner>
                            <NoHeaderTopRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886487334/NoHeaderTopRightCorner.png" Width="1px">
                            </NoHeaderTopRightCorner>
                            <BottomRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886487334/BottomRightCorner.png" Width="1px">
                            </BottomRightCorner>
                            <BottomLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886487334/BottomLeftCorner.png" Width="1px">
                            </BottomLeftCorner>
                            <HeaderLeftEdge>
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886487334/HeaderLeftEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886487334/HeaderLeftEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                            </HeaderLeftEdge>
                            <HeaderContent>
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886487334/HeaderContent.png" repeat="RepeatX" 
                                    verticalposition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886487334/HeaderContent.png" repeat="RepeatX" 
                                    verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                            </HeaderContent>
                            <HeaderRightEdge>
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="right" 
                                    imageurl="~/Images/ASPxRoundPanel/886487334/HeaderRightEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <backgroundimage horizontalposition="right" 
                                    imageurl="~/Images/ASPxRoundPanel/886487334/HeaderRightEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                            </HeaderRightEdge>
                            <HeaderTemplate>
                                <asp:Panel ID="Panel5" runat="server" Direction="LeftToRight" 
                                    HorizontalAlign="Left" Width="375px">
                                    <table style="width:100%;">
                                        <tr>
                                            <td>
                                                <dx:ASPxLabel ID="ASPxLabel11" runat="server" Font-Bold="True" 
                                                    Font-Italic="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="店內請修系統" 
                                                    ForeColor="White" ToolTip="點擊這可以縮放版面">
                                                    <ClientSideEvents Click="function(s, e) {
	pagelog(2);
}" />
                                                </dx:ASPxLabel>
                                            </td>
                                            <td align="right">
                                                <dx:ASPxButton ID="btnREPAIR" runat="server" AutoPostBack="False" 
                                                    CssClass="button settings icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                    Font-Size="Small" Text="我要請修" Width="100px">
                                                    <ClientSideEvents Click="function(s, e) {
	location.href = 'HQ_Repair.aspx?Sel=HQ_Repair.aspx';
}" />
                                                </dx:ASPxButton>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </HeaderTemplate>
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <dx:ASPxPanel ID="ASPxPanel3" runat="server" Height="100%" Width="100%">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <dx:ASPxPanel ID="plRepair" runat="server" Height="188px" ScrollBars="Vertical" 
                                                            Width="400px" ClientInstanceName="csBoard2">
                                                            <PanelCollection>
                                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                </dx:PanelContent>
                                                            </PanelCollection>
                                                        </dx:ASPxPanel>
                                                        <br />
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px" />
                            <border bordercolor="#8B8B8B" borderstyle="Solid" borderwidth="0px"></border>
                        </dx:ASPxRoundPanel>
                    </td>
                    <td align="center" valign="top">
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" BackColor="White" 
                            CssClass="pie_radius_w2" Font-Bold="True" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                            HeaderText="營業速報" Width="385px">
                            <HeaderStyle BackColor="LightBlue" Height="35px" HorizontalAlign="Left" 
                                VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            <borderleft borderstyle="None" />
                            <borderright borderstyle="None" />
                            <borderbottom borderstyle="None" />
                            <borderleft borderstyle="None" />
                            <borderright borderstyle="None" />
                            <borderbottom borderstyle="None" />
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            </HeaderStyle>
                            <TopLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886552870/TopLeftCorner.png" Width="1px">
                            </TopLeftCorner>
                            <NoHeaderTopLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886552870/NoHeaderTopLeftCorner.png" Width="1px">
                            </NoHeaderTopLeftCorner>
                            <TopRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886552870/TopRightCorner.png" Width="1px">
                            </TopRightCorner>
                            <NoHeaderTopRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886552870/NoHeaderTopRightCorner.png" Width="1px">
                            </NoHeaderTopRightCorner>
                            <BottomRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886552870/BottomRightCorner.png" Width="1px">
                            </BottomRightCorner>
                            <BottomLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886552870/BottomLeftCorner.png" Width="1px">
                            </BottomLeftCorner>
                            <HeaderLeftEdge>
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886552870/HeaderLeftEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886552870/HeaderLeftEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                            </HeaderLeftEdge>
                            <HeaderContent>
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886552870/HeaderContent.png" repeat="RepeatX" 
                                    verticalposition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886552870/HeaderContent.png" repeat="RepeatX" 
                                    verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                            </HeaderContent>
                            <HeaderRightEdge>
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="right" 
                                    imageurl="~/Images/ASPxRoundPanel/886552870/HeaderRightEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <backgroundimage horizontalposition="right" 
                                    imageurl="~/Images/ASPxRoundPanel/886552870/HeaderRightEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                            </HeaderRightEdge>
                            <HeaderTemplate>
                                <asp:Panel ID="Panel7" runat="server" HorizontalAlign="Left" Width="400px">
                                    <table style="width:100%;">
                                        <tr>
                                            <td align="left">
                                                <dx:ASPxLabel ID="ASPxLabel11" runat="server" Font-Bold="True" 
                                                    Font-Italic="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="營業速報" 
                                                    Width="75px" ToolTip="點擊這可以縮放版面">
                                                    <ClientSideEvents Click="function(s, e) {
	pagelog(3);
}" />
                                                </dx:ASPxLabel>
                                            </td>
                                            <td align="center">
                                                <asp:Panel ID="Panel8" runat="server" Width="200px">
                                                    <dx:ASPxComboBox ID="cbQRY" runat="server" AutoPostBack="True" 
                                                        DataSourceID="edsPOS_storedat" Font-Names="王漢宗細圓體繁" Height="28px" 
                                                        OnSelectedIndexChanged="cbQRY_SelectedIndexChanged" TextField="NM_STORE" 
                                                        TextFormatString="{0}; {1}; {2}" ToolTip="請選擇查詢門市" ValueField="NO_STORE" 
                                                        Width="200px">
                                                        <Columns>
                                                            <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                            <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                            <dx:ListBoxColumn Caption="店舖類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                        </Columns>
                                                    </dx:ASPxComboBox>
                                                </asp:Panel>
                                            </td>
                                            <td align="left">
                                                <dx:ASPxButton ID="btnQRY" runat="server" CssClass="button search icon" 
                                                    CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                    OnClick="btnQRY_Click" Text="更新" Width="100px">
                                                </dx:ASPxButton>
                                            </td>
                                            <td align="left">
                                                <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" 
                                                    ImageUrl="~/App_Themes/Basic/statistics.jpg" onload="ASPxHyperLink1_Load" 
                                                    Text="ASPxHyperLink" ToolTip="時段業績分析" Cursor="pointer" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </HeaderTemplate>
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <dx:ASPxPanel ID="ASPxPanel2" runat="server" Height="485px" 
                                                ScrollBars="Vertical" Width="100%" ClientInstanceName="csBoard3">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td align="left">
                                                                    <dx:ASPxLabel ID="ASPxLabel6" runat="server" Font-Bold="False" 
                                                                        Font-Names="王漢宗細圓體繁" Text="製表日期時間">
                                                                    </dx:ASPxLabel>
                                                                    <dx:ASPxGridView ID="gvQRY1" runat="server" AutoGenerateColumns="False" 
                                                                        ClientVisible="False" DataSourceID="sdsQRY1" Font-Names="王漢宗細圓體繁" 
                                                                        OnHtmlDataCellPrepared="gvQRY1_HtmlDataCellPrepared" Width="400px">
                                                                        <Columns>
                                                                            <dx:GridViewDataTextColumn Caption="門市" FieldName="NM_STORE" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="0" Width="50px">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="項次" FieldName="sno" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="1" Width="28px">
                                                                                <DataItemTemplate>
                                                                                    <dx:ASPxLabel ID="snoQRY1" runat="server" Font-Names="王漢宗細圓體繁" Text="snoQRY1" 
                                                                                        Width="100%">
                                                                                    </dx:ASPxLabel>
                                                                                </DataItemTemplate>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="支付別" FieldName="pay" 
                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="支付別" FieldName="pay_name" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="3" Width="115px">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="金額" FieldName="amount" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                        </Columns>
                                                                        <SettingsBehavior AllowSort="False" />
                                                                        <SettingsPager PageSize="20" Position="Top">
                                                                        </SettingsPager>
                                                                        <Settings ShowTitlePanel="True" />
                                                                        <Templates>
                                                                            <TitlePanel>
                                                                                <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Left" Width="100%">
                                                                                    <dx:ASPxLabel ID="ASPxLabel3" runat="server" Font-Bold="True" 
                                                                                        Font-Names="王漢宗細圓體繁" Text="支付別速報">
                                                                                    </dx:ASPxLabel>
                                                                                </asp:Panel>
                                                                            </TitlePanel>
                                                                        </Templates>
                                                                    </dx:ASPxGridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxGridView ID="gvQRY2" runat="server" AutoGenerateColumns="False" 
                                                                        DataSourceID="sdsQRY2" KeyFieldName="MsgId" 
                                                                        OnHtmlDataCellPrepared="gvQRY2_HtmlDataCellPrepared" 
                                                                        OnHtmlRowCreated="gvQRY2_HtmlRowCreated" 
                                                                        OnHtmlRowPrepared="gvQRY2_HtmlRowPrepared" 
                                                                        OnSummaryDisplayText="gvQRY2_SummaryDisplayText" Width="400px" 
                                                                        Font-Names="王漢宗細圓體繁">
                                                                        <TotalSummary>
                                                                            <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="amount" 
                                                                                SummaryType="Sum" />
                                                                            <dx:ASPxSummaryItem FieldName="trancount" SummaryType="Sum" 
                                                                                DisplayFormat="#,##0" />
                                                                            <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="avg" ShowInColumn="客單價" 
                                                                                SummaryType="Custom" />
                                                                        </TotalSummary>
                                                                        <Columns>
                                                                            <dx:GridViewDataTextColumn Caption="門市" FieldName="NM_STORE" 
                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="0" Width="50px">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="項次" FieldName="sno" 
                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1" Width="28px">
                                                                                <DataItemTemplate>
                                                                                    <dx:ASPxLabel ID="snoQRY2" runat="server" Font-Names="王漢宗細圓體繁" Text="snoQRY2" 
                                                                                        Width="100%">
                                                                                    </dx:ASPxLabel>
                                                                                </DataItemTemplate>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="時段" FieldName="pay" 
                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="期間" FieldName="pay_name" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="3" Width="100px">
                                                                                <PropertiesTextEdit DisplayFormatString="#,##0"></PropertiesTextEdit>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="交易金額" FieldName="amount" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="4" Width="100px">
                                                                                <PropertiesTextEdit DisplayFormatString="#,##0"></PropertiesTextEdit>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="來客數" FieldName="trancount" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="5" Width="100px">
                                                                                <PropertiesTextEdit DisplayFormatString="#,##0"></PropertiesTextEdit>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="客單價" FieldName="avg" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="6" Width="100px">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                        </Columns>
                                                                        <SettingsBehavior AllowSort="False" />
                                                                        <SettingsPager PageSize="20" Position="Top">
                                                                        </SettingsPager>
                                                                        <Settings ShowFooter="True" />
                                                                        <Styles>
                                                                            <SelectedRow Font-Bold="True">
                                                                            </SelectedRow>
                                                                            <AlternatingRow Enabled="True">
                                                                            </AlternatingRow>
                                                                            <Footer Font-Size="Small">
                                                                            </Footer>
                                                                        </Styles>
                                                                    </dx:ASPxGridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxGridView ID="gvQRY3" runat="server" AutoGenerateColumns="False" 
                                                                        ClientVisible="False" DataSourceID="sdsQRY3" Font-Names="王漢宗細圓體繁" 
                                                                        OnHeaderFilterFillItems="gvQRY3_HeaderFilterFillItems" Width="400px">
                                                                        <TotalSummary>
                                                                            <dx:ASPxSummaryItem DisplayFormat="{0:c2}" FieldName="amount" 
                                                                                SummaryType="Sum" />
                                                                            <dx:ASPxSummaryItem FieldName="qty" SummaryType="Sum" />
                                                                        </TotalSummary>
                                                                        <Columns>
                                                                            <dx:GridViewDataTextColumn Caption="門市" FieldName="NM_STORE" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                <Settings AllowHeaderFilter="False" AllowSort="False" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="項次" FieldName="sno" 
                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                                <Settings AllowHeaderFilter="False" AllowSort="False" />
                                                                                <DataItemTemplate>
                                                                                    <dx:ASPxLabel ID="snoQRY3" runat="server" Font-Names="王漢宗細圓體繁" Text="snoQRY3" 
                                                                                        Width="100%">
                                                                                    </dx:ASPxLabel>
                                                                                </DataItemTemplate>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="商品編號" FieldName="pay" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                <Settings AllowHeaderFilter="True" AllowSort="True" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="商品名稱" FieldName="pay_name" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                <Settings AllowHeaderFilter="False" AllowSort="True" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="金額" FieldName="amount" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                <Settings AllowHeaderFilter="False" AllowSort="True" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="數量" FieldName="qty" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="5">
                                                                                <Settings AllowHeaderFilter="False" AllowSort="True" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                        </Columns>
                                                                        <SettingsBehavior AllowSort="False" />
                                                                        <SettingsPager PageSize="20" Position="Top">
                                                                        </SettingsPager>
                                                                        <Settings ShowFooter="True" ShowTitlePanel="True" />
                                                                        <SettingsPopup>
                                                                            <HeaderFilter Height="400px" ResizingMode="Postponed" Width="250px" />
                                                                        </SettingsPopup>
                                                                        <Templates>
                                                                            <TitlePanel>
                                                                                <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Left" Width="100%">
                                                                                    <dx:ASPxLabel ID="ASPxLabel10" runat="server" Font-Bold="True" 
                                                                                        Font-Names="王漢宗細圓體繁" Text="商品銷售速報">
                                                                                    </dx:ASPxLabel>
                                                                                </asp:Panel>
                                                                            </TitlePanel>
                                                                        </Templates>
                                                                    </dx:ASPxGridView>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <br />
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px" />
                            <border bordercolor="#8B8B8B" borderstyle="Solid" borderwidth="0px"></border>
                        </dx:ASPxRoundPanel>
                    </td>
                    <td align="center" valign="top">
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" BackColor="White" 
                            CssClass="pie_radius_Tomato2" Font-Bold="True" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                            HeaderText="行事曆" Width="385px">
                            <HeaderStyle BackColor="#FF6347" Height="35px" HorizontalAlign="Left" 
                                VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            <borderleft borderstyle="None" />
                            <borderright borderstyle="None" />
                            <borderbottom borderstyle="None" />
                            <borderleft borderstyle="None" />
                            <borderright borderstyle="None" />
                            <borderbottom borderstyle="None" />
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                            <BorderBottom BorderStyle="None" />
                            </HeaderStyle>
                            <TopLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886683942/TopLeftCorner.png" Width="1px">
                            </TopLeftCorner>
                            <NoHeaderTopLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886683942/NoHeaderTopLeftCorner.png" 
                                Width="1px">
                            </NoHeaderTopLeftCorner>
                            <TopRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886683942/TopRightCorner.png" Width="1px">
                            </TopRightCorner>
                            <NoHeaderTopRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886683942/NoHeaderTopRightCorner.png" 
                                Width="1px">
                            </NoHeaderTopRightCorner>
                            <BottomRightCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886683942/BottomRightCorner.png" Width="1px">
                            </BottomRightCorner>
                            <BottomLeftCorner Height="1px" 
                                Url="~/Images/ASPxRoundPanel/886683942/BottomLeftCorner.png" Width="1px">
                            </BottomLeftCorner>
                            <HeaderLeftEdge>
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886683942/HeaderLeftEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886683942/HeaderLeftEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderLeftEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                            </HeaderLeftEdge>
                            <HeaderContent>
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886683942/HeaderContent.png" repeat="RepeatX" 
                                    verticalposition="bottom" />
                                <backgroundimage horizontalposition="left" 
                                    imageurl="~/Images/ASPxRoundPanel/886683942/HeaderContent.png" repeat="RepeatX" 
                                    verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="left" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderContent.png" Repeat="RepeatX" 
                                    VerticalPosition="bottom" />
                            </HeaderContent>
                            <HeaderRightEdge>
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <backgroundimage horizontalposition="right" 
                                    imageurl="~/Images/ASPxRoundPanel/886683942/HeaderRightEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <backgroundimage horizontalposition="right" 
                                    imageurl="~/Images/ASPxRoundPanel/886683942/HeaderRightEdge.png" 
                                    repeat="NoRepeat" verticalposition="bottom" />
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                                <BackgroundImage HorizontalPosition="right" 
                                    ImageUrl="~/Images/ASPxRoundPanel/886683942/HeaderRightEdge.png" 
                                    Repeat="NoRepeat" VerticalPosition="bottom" />
                            </HeaderRightEdge>
                            <HeaderTemplate>
                                <asp:Panel ID="Panel9" runat="server" Height="32px" HorizontalAlign="Left">
                                    <table style="height: 100%; width: 100%;">
                                        <tr>
                                            <td height="100%" valign="middle">
                                                <dx:ASPxLabel ID="ASPxLabel11" runat="server" Font-Bold="True" 
                                                    Font-Italic="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="行事曆" 
                                                    ToolTip="點擊這可以縮放版面">
                                                    <ClientSideEvents Click="function(s, e) {
	pagelog(4);
}" />
                                                </dx:ASPxLabel>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </HeaderTemplate>
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                        <ContentTemplate>
                                            <dx:ASPxPanel ID="ASPxPanel6" runat="server" Width="100%" 
                                                ClientInstanceName="csBoard4">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <dx:ASPxPanel ID="ASPxPanel7" runat="server" Height="213px" Width="400px">
                                                            <PanelCollection>
                                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                    <div align="center">
                                                                        <dx:ASPxCalendar ID="ASPxCalendar1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            ShowClearButton="False" Theme="DevEx" AutoPostBack="True" 
                                                                            EnableTheming="True" 
                                                                            OnSelectionChanged="ASPxCalendar1_SelectionChanged" 
                                                                            ShowWeekNumbers="False" TodayButtonText="今日" 
                                                                            OnDayCellInitialize="ASPxCalendar1_DayCellInitialize" 
                                                                            OnDayCellPrepared="ASPxCalendar1_DayCellPrepared">
                                                                            <Border BorderWidth="0px" />
                                                                        </dx:ASPxCalendar>
                                                                    </div>
                                                                </dx:PanelContent>
                                                            </PanelCollection>
                                                        </dx:ASPxPanel>
                                                        <br />
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px" />
                            <border bordercolor="#8B8B8B" borderstyle="Solid" borderwidth="0px"></border>
                        </dx:ASPxRoundPanel>
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientInstanceName="userid" 
        ClientVisible="False" Width="170px">
    </dx:ASPxTextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
    </asp:SqlDataSource>

                        <asp:EntityDataSource runat="server" 
        DefaultContainerName="NEWPMSEntities" ConnectionString="name=NEWPMSEntities" 
        EnableFlattening="False" EntitySetName="vPOS_storedat" OrderBy="it.IDX" 
        ID="edsPOS_storedat" Where="" EntityTypeFilter="" Select="">
    </asp:EntityDataSource>

                        <asp:SqlDataSource ID="sdsQRY1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        SelectCommand="exec dbo.POS_營業速報匯總表 @COMNO">
                            <SelectParameters>
                                <asp:Parameter Name="COMNO" />
                            </SelectParameters>
    </asp:SqlDataSource>

                        <asp:SqlDataSource ID="sdsQRY2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        SelectCommand="exec dbo.POS_營業速報時段表 @COMNO">
                            <SelectParameters>
                                <asp:Parameter Name="COMNO" />
                            </SelectParameters>
    </asp:SqlDataSource>

                        <asp:SqlDataSource ID="sdsQRY3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        SelectCommand="exec dbo.POS_營業速報明細表 @COMNO">
                            <SelectParameters>
                                <asp:Parameter Name="COMNO" />
                            </SelectParameters>
    </asp:SqlDataSource>

                        <asp:SqlDataSource ID="sdsPayQRY3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>">
    </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>">
    </asp:SqlDataSource>
                                            <br />
                                            <dx:ASPxPopupControl runat="server" 
        PopupAction="None" CloseAction="CloseButton" AllowDragging="True" 
        ClientInstanceName="clientPopup" HeaderText="時段業績分析" 
        ShowShadow="False" Target="_blank" CssClass="pie_radius" Font-Names="王漢宗細圓體繁" 
        Font-Size="Small" ID="ASPxPopupControl2" Height="600px" 
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" 
        Width="725px" Modal="True" Theme="Office2010Silver">
                                                <HeaderImage Url="~/App_Themes/Basic/statistics.jpg">
                                                </HeaderImage>
<HeaderStyle HorizontalAlign="Left" Font-Bold="True" Font-Names="王漢宗細圓體繁"></HeaderStyle>
                                                <ModalBackgroundStyle BackColor="Gold">
                                                </ModalBackgroundStyle>
<ContentCollection>
<dx:popupcontrolcontentcontrol runat="server" SupportsDisabledAttribute="True">


                                                    </dx:popupcontrolcontentcontrol>
</ContentCollection>
</dx:ASPxPopupControl>


                                            </asp:Content>

