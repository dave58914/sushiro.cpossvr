<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="HQ_Scheduler, App_Web_hq_scheduler.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxScheduler.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxScheduler" tagprefix="dxwschs" %>
<%@ Register assembly="DevExpress.XtraScheduler.v12.1.Core, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraScheduler" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                            <table style="width:100%;">
                                <tr>
                                    <td valign="top">
                                        <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" ClientIDMode="AutoID" 
                                            Start="2020-07-26" ActiveViewType="WorkWeek" Font-Names="王漢宗細圓體繁" 
                                            AppointmentDataSourceID="SqlDataSource1" Theme="DevEx" 
                                            OnPopupMenuShowing="ASPxScheduler1_PopupMenuShowing" 
                                            OnAppointmentRowDeleting="ASPxScheduler1_AppointmentRowDeleting" 
                                            OnAppointmentRowInserting="ASPxScheduler1_AppointmentRowInserting">

<ClientSideEvents MouseUp=""></ClientSideEvents>
                                            <Storage>
                                                <Appointments>
                                                    <Mappings AllDay="AllDay" AppointmentId="UniqueID" Description="Description" 
                                                        End="EndDate" Label="Label" Location="Location" RecurrenceInfo="RecurrenceInfo" 
                                                        ReminderInfo="ReminderInfo" ResourceId="ResourceID" Start="StartDate" 
                                                        Status="Status" Subject="Subject" Type="Type" />
                                                    <labels>
                                                        <dxwschs:AppointmentLabel Color="Window" DisplayName="全部類別" 
                                                            MenuCaption="&amp;None" />
                                                        <dxwschs:AppointmentLabel Color="255, 194, 190" DisplayName="類別一" 
                                                            MenuCaption="&amp;Important" />
                                                        <dxwschs:AppointmentLabel Color="168, 213, 255" DisplayName="類別二" 
                                                            MenuCaption="&amp;Business" />
                                                        <dxwschs:AppointmentLabel Color="193, 244, 156" DisplayName="類別三" 
                                                            MenuCaption="&amp;Personal" />
                                                        <dxwschs:AppointmentLabel Color="243, 228, 199" DisplayName="類別四" 
                                                            MenuCaption="&amp;Vacation" />
                                                        <dxwschs:AppointmentLabel Color="244, 206, 147" DisplayName="類別五" 
                                                            MenuCaption="Must &amp;Attend" />
                                                        <dxwschs:AppointmentLabel Color="199, 244, 255" DisplayName="類別六" 
                                                            MenuCaption="&amp;Travel Required" />
                                                        <dxwschs:AppointmentLabel Color="207, 219, 152" DisplayName="類別七" 
                                                            MenuCaption="&amp;Needs Preparation" />
                                                        <dxwschs:AppointmentLabel Color="224, 207, 233" DisplayName="類別八" 
                                                            MenuCaption="&amp;Birthday" />
                                                        <dxwschs:AppointmentLabel Color="141, 233, 223" DisplayName="類別九" 
                                                            MenuCaption="&amp;Anniversary" />
                                                        <dxwschs:AppointmentLabel Color="255, 247, 165" DisplayName="類別十" 
                                                            MenuCaption="Phone &amp;Call" />
                                                    </labels>
<Mappings AppointmentId="UniqueID" AllDay="AllDay" Status="Status" Label="Label" Description="Description" End="EndDate" Location="Location" RecurrenceInfo="RecurrenceInfo" ReminderInfo="ReminderInfo" ResourceId="ResourceID" Start="StartDate" Subject="Subject" Type="Type"></Mappings>
                                                    <CustomFieldMappings>
                                                        <dxwschs:ASPxAppointmentCustomFieldMapping Member="CustomField1" 
                                                            Name="CustomField1" />
                                                    </CustomFieldMappings>
                                                    <statuses>
                                                        <dxwschs:AppointmentStatus DisplayName="總公司" MenuCaption="&amp;Free" 
                                                            Type="Free" />
                                                        <dxwschs:AppointmentStatus Color="74, 135, 226" DisplayName="門市" 
                                                            MenuCaption="&amp;Busy" Type="Busy" />
                                                    </statuses>
                                                </Appointments>
                                            </Storage>
                                            <Views>
                                                <DayView shortdisplayname="日">
                                                    <TimeRulers>
                                                        <cc1:TimeRuler />
                                                    </TimeRulers>
                                                </DayView>
                                                <WorkWeekView ShowFullWeek="True" shortdisplayname="週">
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
                                            <LimitInterval Duration="2914428.00:00:00.9999999" Start="2020-01-01" />

                                            <ClientSideEvents MouseUp="" />
                                            <OptionsView FirstDayOfWeek="Sunday" />
                                        </dxwschs:ASPxScheduler>
                                    </td>
                                    <td align="left" valign="top">
                                        <dxwschs:ASPxDateNavigator ID="ASPxDateNavigator1" runat="server" 
                                            ClientIDMode="AutoID" 
                                            MasterControlID="ASPxScheduler1" Theme="DevEx" Width="250px">
                                            <Properties Rows="3" ShowWeekNumbers="False" TodayButtonText="今日">
                                                <Style Font-Names="王漢宗細圓體繁">
                                                </Style>
                                            </Properties>
                                        </dxwschs:ASPxDateNavigator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        DeleteCommand="DELETE FROM [Appointments] WHERE [UniqueID] = @UniqueID" 
        InsertCommand="INSERT INTO [Appointments] ([Type], [StartDate], [EndDate], [AllDay], [Subject], [Location], [Description], [Status], [Label], [ResourceID], [ResourceIDs], [ReminderInfo], [RecurrenceInfo], [CustomField1]) VALUES (@Type, @StartDate, @EndDate, @AllDay, @Subject, @Location, @Description, @Status, @Label, @ResourceID, @ResourceIDs, @ReminderInfo, @RecurrenceInfo, @CustomField1)" 
        SelectCommand="SELECT * FROM [Appointments] WHERE [CustomField1] = @CustomField1" 
        
        
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
            <asp:Parameter Name="CustomField1" />
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
    <br />
    <br />
</asp:Content>

