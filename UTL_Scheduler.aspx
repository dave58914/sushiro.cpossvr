<%@ page title="" language="C#" autoeventwireup="true" inherits="UTL_Scheduler, App_Web_utl_scheduler.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.XtraScheduler.v12.1.Core, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraScheduler" tagprefix="cc1" %>
<%@ Register assembly="DevExpress.Web.ASPxScheduler.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxScheduler" tagprefix="dxwschs" %>

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
        .style1
        {
            width: 100%;
            height: 1px;
            margin-left: 0px;
        }
        .style2
        {
            width: 529px;
        }
        .style3
        {
            width: 15px;
            height: 22px;
        }
        .style4
        {
            width: 65px;
            height: 22px;
        }
        .style5
        {
            height: 22px;
        }
        .style6
        {
            height: 22px;
            width: 290px;
        }
        .style7
        {
            width: 39px;
            height: 0px;
            margin-left: 0px;
        }
        .style8
        {
            width: 100%;
        }
        .style10
        {
            width: 700px;
        }
        .style11
        {
            width: 185px;
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
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        //防止誤觸Backspace鍵跳離編輯中網頁
        function killBackSpace(e) {
            e = e ? e : window.event;
            var t = e.target ? e.target : e.srcElement ? e.srcElement : null;
            if (t && t.tagName && (t.type && /(password)|(text)|(file)/.test(t.type.toLowerCase())) || t.tagName.toLowerCase() == 'textarea')
                return true;
            var k = e.keyCode ? e.keyCode : e.which ? e.which : null;
            if (k == 8) {
                if (e.preventDefault)
                    e.preventDefault();
                return false;
            };
            return true;
        };
        if (typeof document.addEventListener != 'undefined')
            document.addEventListener('keydown', killBackSpace, false);
        else if (typeof document.attachEvent != 'undefined')
            document.attachEvent('onkeydown', killBackSpace);
        else {
            if (document.onkeydown != null) {
                var oldOnkeydown = document.onkeydown;
                document.onkeydown = function (e) {
                    oldOnkeydown(e);
                    killBackSpace(e);
                };
            }
            else
                document.onkeydown = killBackSpace;
        }
        //jQuery : for Back to Top
        $(window).ready(function () {
            $(window).scroll(function () {
                var _jumpOutHeight = 100;
                //取得目前捲動的高度
                var height = $(window).scrollTop();
                if (height > _jumpOutHeight && $(".top").css("display") == "none") {
                    $(".top").fadeIn(500);
                }
                if (height < _jumpOutHeight && $(".top").css("display") == "block") {
                    $(".top").fadeOut(500);
                }
            });
        });
    </script>
</head>
<body>
<form id="form1" runat="server" target="_blank">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Button ID="Button1" runat="server" CssClass="button calendar icon" 
                onclick="Button1_Click" Text="關閉行事曆" />
            <br />
            <br />
            <div align="center">
                <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" 
                    ActiveViewType="WorkWeek" AppointmentDataSourceID="SqlDataSource1" 
                    ClientIDMode="AutoID" Font-Names="王漢宗細圓體繁" Start="2020-07-26" Theme="DevEx" 
                    Width="80%">
                    <Storage>
                        <Appointments>
                            <Mappings AllDay="AllDay" AppointmentId="UniqueID" Description="Description" 
                                End="EndDate" Label="Label" Location="Location" RecurrenceInfo="RecurrenceInfo" 
                                ReminderInfo="ReminderInfo" ResourceId="ResourceID" Start="StartDate" 
                                Status="Status" Subject="Subject" Type="Type" />
                            <CustomFieldMappings>
                                <dxwschs:ASPxAppointmentCustomFieldMapping Member="CustomField1" 
                                    Name="CustomField1" />
                            </CustomFieldMappings>
                            <statuses>
                                <dxwschs:AppointmentStatus DisplayName="Free" MenuCaption="&amp;Free" 
                                    Type="Free" />
                                <dxwschs:AppointmentStatus Color="74, 135, 226" DisplayName="Busy" 
                                    MenuCaption="&amp;Busy" Type="Busy" />
                            </statuses>
                        </Appointments>
                    </Storage>
                    <Views>
                        <DayView ShortDisplayName="日">
                            <TimeRulers>
                                <cc1:TimeRuler />
                            </TimeRulers>
                        </DayView>
                        <WorkWeekView ShowFullWeek="True" ShortDisplayName="週">
                            <TimeRulers>
                                <cc1:TimeRuler />
                            </TimeRulers>
                        </WorkWeekView>
                        <WeekView Enabled="False">
                        </WeekView>
                        <MonthView CompressWeekend="False" ShortDisplayName="月" WeekCount="7">
                        </MonthView>
                        <TimelineView Enabled="False">
                        </TimelineView>
                    </Views>
                    <ClientSideEvents MouseUp="" />
                    <OptionsCustomization AllowAppointmentCopy="None" AllowAppointmentCreate="None" 
                        AllowAppointmentDelete="None" AllowAppointmentDrag="None" 
                        AllowAppointmentDragBetweenResources="None" AllowAppointmentEdit="None" 
                        AllowAppointmentMultiSelect="False" AllowAppointmentResize="None" />
                    <OptionsView NavigationButtons-Visibility="Never" FirstDayOfWeek="Sunday" />
                </dxwschs:ASPxScheduler>
                <br />
                <br />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        DeleteCommand="DELETE FROM [Appointments] WHERE [UniqueID] = @UniqueID" 
        InsertCommand="INSERT INTO [Appointments] ([Type], [StartDate], [EndDate], [AllDay], [Subject], [Location], [Description], [Status], [Label], [ResourceID], [ResourceIDs], [ReminderInfo], [RecurrenceInfo], [CustomField1]) VALUES (@Type, @StartDate, @EndDate, @AllDay, @Subject, @Location, @Description, @Status, @Label, @ResourceID, @ResourceIDs, @ReminderInfo, @RecurrenceInfo, @CustomField1)" 
        SelectCommand="if @STORE_NO='9999' begin
SELECT * FROM [Appointments]
end
else begin
SELECT * FROM [Appointments]
where CustomField1='9999' or CustomField1=@STORE_NO
end" 
        
        UpdateCommand="UPDATE [Appointments] SET [Type] = @Type, [StartDate] = @StartDate, [EndDate] = @EndDate, [AllDay] = @AllDay, [Subject] = @Subject, [Location] = @Location, [Description] = @Description, [Status] = @Status, [Label] = @Label, [ResourceID] = @ResourceID, [ResourceIDs] = @ResourceIDs, [ReminderInfo] = @ReminderInfo, [RecurrenceInfo] = @RecurrenceInfo, [CustomField1] = @CustomField1 WHERE [UniqueID] = @UniqueID">
        <DeleteParameters>
            <asp:Parameter Name="UniqueID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="Int32" />
            <asp:Parameter Name="StartDate" Type="DateTime" />
            <asp:Parameter Name="EndDate" Type="DateTime" />
            <asp:Parameter Name="AllDay" Type="Boolean" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Label" Type="Int32" />
            <asp:Parameter Name="ResourceID" Type="Int32" />
            <asp:Parameter Name="ResourceIDs" Type="String" />
            <asp:Parameter Name="ReminderInfo" Type="String" />
            <asp:Parameter Name="RecurrenceInfo" Type="String" />
            <asp:Parameter Name="CustomField1" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="STORE_NO" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type" Type="Int32" />
            <asp:Parameter Name="StartDate" Type="DateTime" />
            <asp:Parameter Name="EndDate" Type="DateTime" />
            <asp:Parameter Name="AllDay" Type="Boolean" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Label" Type="Int32" />
            <asp:Parameter Name="ResourceID" Type="Int32" />
            <asp:Parameter Name="ResourceIDs" Type="String" />
            <asp:Parameter Name="ReminderInfo" Type="String" />
            <asp:Parameter Name="RecurrenceInfo" Type="String" />
            <asp:Parameter Name="CustomField1" Type="String" />
            <asp:Parameter Name="UniqueID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>
<div class="top">
<a class="btn btn-inverse btn-large" href="#top" title=""><i class="icon-chevron-up icon-white"></i>
<img alt='' border='0' onmouseover="this.src='App_Themes/Basic/Top.png'" onmouseout="this.src='App_Themes/Basic/Top_medium.png'" src="App_Themes/Basic/Top_medium.png" />
</a>
</div>
</body>
</html>



