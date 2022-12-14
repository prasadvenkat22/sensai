USE [ProstaffData]
GO
/****** Object:  Table [dbo].[ActRecurrence]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActRecurrence](
	[Rec_headerID] [int] IDENTITY(1,1) NOT NULL,
	[Rec_clientID] [int] NULL,
	[Rec_employeeID] [int] NULL,
	[Rec_jobCodeID] [int] NULL,
	[Rec_billingCodeID] [int] NULL,
	[Rec_projectCodeID] [int] NULL,
	[Rec_HourID] [int] NULL,
	[Rec_fromDateTime] [datetime] NOT NULL,
	[Rec_toDateTime] [datetime] NOT NULL,
	[Rec_PeriodEnd] [datetime] NULL,
	[Rec_hours] [real] NULL,
	[Rec_overTimehours] [real] NULL,
	[Rec_Notes] [nvarchar](2000) NULL,
	[RecrType] [int] NULL,
	[Rec_Frequency] [int] NULL,
	[Rec_RecDuration] [int] NULL,
	[Rec_Cycle] [int] NULL,
	[Rec_Occurrences] [int] NULL,
	[Rec_EndDate] [datetime] NULL,
	[Rec_lastUpdate] [datetime] NOT NULL,
	[Rec_lastUpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ActRecurrence] PRIMARY KEY CLUSTERED 
(
	[Rec_headerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActualHours]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActualHours](
	[ahr_ID] [int] NOT NULL,
	[ahr_jobCodeID] [int] NULL,
	[ahr_employeeLevelID] [int] NOT NULL,
	[ahr_employeeID] [int] NOT NULL,
	[ahr_clientID] [int] NOT NULL,
	[ahr_hours] [real] NOT NULL,
	[ahr_overtimeHours] [real] NOT NULL,
	[ahr_fromDateTime] [datetime] NOT NULL,
	[ahr_toDateTime] [datetime] NOT NULL,
	[ahr_billRate] [money] NULL,
	[ahr_lastUpdate] [datetime] NOT NULL,
	[ahr_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[ahr_HourID] [int] NOT NULL,
	[ahr_clt_number] [nvarchar](15) NULL,
	[ahr_clt_engagementCode] [nvarchar](15) NULL,
	[ahr_clt_longName] [nvarchar](35) NULL,
	[ahr_PerEnd] [datetime] NULL,
	[ahr_taskDesc] [nvarchar](200) NULL,
	[ahr_Billable] [bit] NULL,
	[ahr_SubCode] [nvarchar](250) NULL,
	[ahr_SrvCode] [nvarchar](250) NULL,
	[ahr_clt_Desc] [nvarchar](50) NULL,
	[ahr_billingCodeID] [int] NULL,
	[ahr_TransBatchID] [int] NULL,
	[ahr_TransSeqnum] [decimal](18, 0) NULL,
	[ahr_TransPostDate] [datetime] NULL,
	[ahr_TransJobCode] [nvarchar](10) NULL,
	[ahr_TransJobYear] [nvarchar](4) NULL,
	[ahr_EmpName] [nvarchar](50) NULL,
	[ahr_EmpNumber] [nvarchar](12) NULL,
	[ahr_WHWIPA] [money] NULL,
	[ahr_projectCodeID] [int] NULL,
	[ahr_headerID] [int] NULL,
	[ahr_notes] [varchar](2048) NULL,
	[ahr_createDateTime] [datetime] NOT NULL,
	[ahr_createdBy] [varchar](50) NOT NULL,
	[ahr_unqId] [varchar](50) NULL,
	[ahr_SaasImportAppId] [int] NULL,
	[ahr_SaasImportId] [nvarchar](1000) NULL,
 CONSTRAINT [aaaaaActualHours_PK] PRIMARY KEY NONCLUSTERED 
(
	[ahr_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActualHours_Archive]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActualHours_Archive](
	[ahr_ArchId] [int] IDENTITY(1,1) NOT NULL,
	[ahr_ID] [int] NOT NULL,
	[ahr_jobCodeID] [int] NULL,
	[ahr_employeeLevelID] [int] NOT NULL,
	[ahr_employeeID] [int] NOT NULL,
	[ahr_clientID] [int] NOT NULL,
	[ahr_hours] [real] NOT NULL,
	[ahr_overtimeHours] [real] NOT NULL,
	[ahr_fromDateTime] [datetime] NOT NULL,
	[ahr_toDateTime] [datetime] NOT NULL,
	[ahr_billRate] [money] NULL,
	[ahr_lastUpdate] [datetime] NOT NULL,
	[ahr_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[ahr_HourID] [int] NOT NULL,
	[ahr_notes] [ntext] NULL,
	[ahr_clt_number] [nvarchar](15) NULL,
	[ahr_clt_engagementCode] [nvarchar](15) NULL,
	[ahr_clt_longName] [nvarchar](35) NULL,
	[ahr_PerEnd] [datetime] NULL,
	[ahr_taskDesc] [nvarchar](50) NULL,
	[ahr_Billable] [bit] NULL,
	[ahr_SubCode] [nvarchar](250) NULL,
	[ahr_SrvCode] [nvarchar](250) NULL,
	[ahr_clt_Desc] [nvarchar](50) NULL,
	[ahr_billingCodeID] [int] NULL,
	[ahr_TransBatchID] [int] NULL,
	[ahr_TransSeqnum] [decimal](18, 0) NULL,
	[ahr_TransPostDate] [datetime] NULL,
	[ahr_TransJobCode] [nvarchar](10) NULL,
	[ahr_TransJobYear] [nvarchar](4) NULL,
	[ahr_EmpName] [nvarchar](50) NULL,
	[ahr_EmpNumber] [nvarchar](12) NULL,
	[ahr_WHWIPA] [money] NULL,
	[ahr_projectCodeID] [int] NULL,
 CONSTRAINT [ActualHours_Archive_PK] PRIMARY KEY NONCLUSTERED 
(
	[ahr_ArchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActualImportTransLog]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActualImportTransLog](
	[ActTransBatchID] [int] NOT NULL,
	[ActTransDateImported] [datetime] NULL,
	[ActTransFromDateQuery] [datetime] NULL,
	[ActTransToDateQuery] [datetime] NULL,
	[ActTransLastSeqNum] [decimal](18, 0) NULL,
	[ActTransFirstSeqNum] [decimal](18, 0) NULL,
	[ActTransRecCount] [int] NULL,
	[ActTransRollBackDate] [datetime] NULL,
	[ActTransRollBackBy] [nvarchar](50) NULL,
	[ActTransRollBackRecCount] [int] NULL,
	[ActTransRollBackDone] [bit] NOT NULL,
	[ActTransQueryUsed] [nvarchar](200) NULL,
 CONSTRAINT [PK_ActualImportTransLog] PRIMARY KEY CLUSTERED 
(
	[ActTransBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alert_ObjRoles]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alert_ObjRoles](
	[Alert_ObjRoleID] [int] IDENTITY(1,1) NOT NULL,
	[Alert_ObjType] [tinyint] NOT NULL,
	[Alert_RoleID] [tinyint] NOT NULL,
	[Alert_RoleDesc] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Alert_ObjRoles] PRIMARY KEY CLUSTERED 
(
	[Alert_ObjRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alias]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alias](
	[AliasID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Alias] [varchar](50) NULL,
	[isLastName] [bit] NULL,
 CONSTRAINT [PK_Alias] PRIMARY KEY CLUSTERED 
(
	[AliasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllStfVw_Temp]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllStfVw_Temp](
	[SsnTmp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Sesn_KeyId] [int] NOT NULL,
	[Sch_Id] [int] NOT NULL,
	[rec_HltId] [int] NULL,
 CONSTRAINT [PK_AllStfVw_Temp] PRIMARY KEY CLUSTERED 
(
	[SsnTmp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APILink_PrgmLog]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APILink_PrgmLog](
	[apilink_PrgmId] [int] NOT NULL,
	[apilink_PrgmName] [varchar](200) NULL,
	[apilink_APIRunStatus] [bit] NULL,
	[apilink_APIErrDetails] [varchar](1000) NULL,
	[apilink_APIStartDateTime] [datetime] NULL,
	[apilink_APIEndDateTime] [datetime] NULL,
	[apilink_APIRunManually] [bit] NULL,
	[apilink_SSISRunStatus] [bit] NULL,
	[apilink_SSISErrDetails] [varchar](1000) NULL,
	[apilink_SSISStartDateTime] [datetime] NULL,
	[apilink_SSISEndDateTime] [datetime] NULL,
	[apilink_SSISRunManually] [bit] NULL,
	[apilink_lastUpdated] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendancePlans]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendancePlans](
	[atp_planID] [int] NOT NULL,
	[atp_code] [nvarchar](15) NULL,
	[atp_description] [nvarchar](50) NULL,
	[atp_type] [int] NULL,
	[atp_notes] [ntext] NULL,
	[atp_planStartDate] [datetime] NULL,
	[atp_planEndDate] [datetime] NULL,
	[atp_billCodeID] [int] NULL,
 CONSTRAINT [aaaaaAttendancePlans_PK] PRIMARY KEY NONCLUSTERED 
(
	[atp_planID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendanceSummary]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceSummary](
	[ats_ID] [int] NOT NULL,
	[ats_empID] [int] NOT NULL,
	[ats_planID] [int] NOT NULL,
	[ats_planStartDate] [datetime] NULL,
	[ats_planEndDate] [datetime] NULL,
	[ats_carryOver] [real] NULL,
	[ats_accrued] [real] NULL,
	[ats_taken] [real] NULL,
	[ats_available] [real] NULL,
	[ats_notes] [ntext] NULL,
	[ats_lastUpdate] [datetime] NULL,
	[ats_lastUpdatedBy] [nvarchar](255) NULL,
	[ats_CompTaken] [real] NULL,
	[ats_AccruedDate] [datetime] NULL,
	[ats_CompEarned] [real] NULL,
 CONSTRAINT [aaaaaAttendanceSummary_PK] PRIMARY KEY NONCLUSTERED 
(
	[ats_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aud_EmpList]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aud_EmpList](
	[Aud_EmpId] [int] NOT NULL,
	[Aud_EmpInActive] [datetime] NULL,
 CONSTRAINT [PK_Audit_EmpList] PRIMARY KEY CLUSTERED 
(
	[Aud_EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutomationPrgmStatus]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutomationPrgmStatus](
	[auto_PrgmId] [int] NOT NULL,
	[auto_PrgmName] [varchar](200) NULL,
	[auto_PrgmRunStatus] [bit] NULL,
	[auto_PrgmErrDetails] [varchar](1000) NULL,
	[auto_PrgmStartDateTime] [datetime] NULL,
	[auto_PrgmEndDateTime] [datetime] NULL,
	[auto_PrgmRunManually] [bit] NULL,
	[auto_EmailStatus] [varchar](300) NULL,
	[auto_lastUpdated] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AvailablityList]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvailablityList](
	[Av_ID] [int] IDENTITY(1,1) NOT NULL,
	[AvEmp_ID] [int] NULL,
	[AvFullName] [varchar](100) NULL,
	[AvWrkHrs] [real] NULL,
	[AvLvl_Desc] [varchar](100) NULL,
	[AvDpt_Name] [varchar](100) NULL,
	[AvDiv_Name] [varchar](100) NULL,
	[AvReg_Name] [varchar](100) NULL,
	[AvLoc_Name] [varchar](100) NULL,
	[AvUserName] [varchar](50) NULL,
	[avTimeStamp] [timestamp] NULL,
 CONSTRAINT [PK_AvailablityList] PRIMARY KEY CLUSTERED 
(
	[Av_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AvailFilterCategory]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvailFilterCategory](
	[Avl_Id] [int] IDENTITY(1,1) NOT NULL,
	[Avl_TblId] [tinyint] NOT NULL,
	[Avl_CatId] [int] NOT NULL,
	[Avl_Order] [tinyint] NOT NULL,
	[Avl_Active] [bit] NOT NULL,
 CONSTRAINT [PK_AvailFilterCategory] PRIMARY KEY CLUSTERED 
(
	[Avl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_AvailFilterCategory] UNIQUE NONCLUSTERED 
(
	[Avl_TblId] ASC,
	[Avl_CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatchAssignments]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchAssignments](
	[batch_schID] [int] NOT NULL,
	[batch_clientID] [int] NOT NULL,
	[batch_employeeID] [int] NULL,
	[batch_employeeLevelID] [int] NULL,
	[batch_employeeDeptID] [int] NULL,
	[batch_employeeDivisionID] [int] NULL,
	[batch_jobCodeID] [int] NULL,
	[batch_duration] [int] NULL,
	[batch_addMode] [int] NULL,
	[batch_fromDateTime] [datetime] NULL,
	[batch_toDateTime] [datetime] NULL,
	[batch_hours] [real] NULL,
	[batch_weekEndFlag] [bit] NULL,
	[batch_employeeWorkHourType] [int] NULL,
	[batch_employeeRegionID] [int] NULL,
	[batch_employeeLocationID] [int] NULL,
	[batch_employeeRateTypeID] [int] NULL,
	[batch_billingCodeID] [int] NULL,
	[batch_lastupdate] [datetime] NULL,
	[batch_lastupdatedBy] [varchar](50) NULL,
	[clt_shortName] [varchar](15) NULL,
	[FullName] [varchar](50) NULL,
	[job_jobCode] [varchar](50) NULL,
	[batch_tableID] [int] IDENTITY(1,1) NOT NULL,
	[sch_jobLocation] [int] NULL,
	[sch_Notes] [nvarchar](250) NULL,
	[sch_Status] [int] NULL,
	[sch_sendCalendar] [bit] NOT NULL,
	[sch_IsLocalTime] [bit] NOT NULL,
 CONSTRAINT [PK_BatchAssignments] PRIMARY KEY CLUSTERED 
(
	[batch_tableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatchChanges]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchChanges](
	[sch_ID] [int] NOT NULL,
	[sch_headerID] [int] NULL,
	[sch_clientID] [int] NOT NULL,
	[sch_employeeID] [int] NULL,
	[sch_employeeLevelID] [int] NULL,
	[sch_employeeDeptID] [int] NULL,
	[sch_employeeDivisionID] [int] NULL,
	[sch_employeeRegionID] [int] NULL,
	[sch_employeeLocationID] [int] NULL,
	[sch_jobCodeID] [int] NULL,
	[sch_fromDateTime] [datetime] NOT NULL,
	[sch_toDateTime] [datetime] NOT NULL,
	[sch_Monday] [datetime] NULL,
	[sch_hours] [real] NOT NULL,
	[sch_conflictFlg] [bit] NOT NULL,
	[sch_billRateTypeID] [int] NULL,
	[sch_billRate] [money] NULL,
	[sch_lastUpdate] [datetime] NOT NULL,
	[sch_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[sch_billingCodeID] [int] NULL,
	[sch_AddMode] [int] NULL,
	[sch_duration] [int] NULL,
	[sch_WeekEndFlag] [bit] NULL,
	[sch_EditFlag] [bit] NULL,
	[sch_recordUpdated] [bit] NULL,
	[sch_wasAConflict] [bit] NULL,
	[sch_employeeWorkHourType] [int] NULL,
	[clt_shortName] [nvarchar](15) NULL,
	[FullName] [nvarchar](50) NULL,
	[WeekDays] [nvarchar](5) NULL,
	[lvl_desc] [nvarchar](50) NULL,
	[dpt_name] [nvarchar](50) NULL,
	[div_name] [nvarchar](50) NULL,
	[reg_name] [nvarchar](50) NULL,
	[loc_name] [nvarchar](50) NULL,
	[job_desc] [nvarchar](50) NULL,
	[job_jobcode] [nvarchar](15) NULL,
	[sch_jobLocation] [int] NULL,
	[sch_Notes] [nvarchar](250) NULL,
	[sch_Status] [int] NULL,
	[sch_skillID] [int] NULL,
	[sch_cltNmbCode] [varchar](85) NULL,
	[sch_sendCalendar] [bit] NOT NULL,
	[sch_curLvl] [int] NULL,
	[sch_curDpt] [int] NULL,
	[sch_curDiv] [int] NULL,
	[sch_curLoc] [int] NULL,
	[sch_curReg] [int] NULL,
	[sch_ProjectId] [int] NULL,
	[sch_IsLocalTime] [bit] NOT NULL,
 CONSTRAINT [PK_BatchChanges] PRIMARY KEY CLUSTERED 
(
	[sch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BgtDateFields]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BgtDateFields](
	[bdf_Id] [tinyint] NOT NULL,
	[bdf_DateDesc] [varchar](15) NOT NULL,
 CONSTRAINT [PK_BgtDateFields] PRIMARY KEY CLUSTERED 
(
	[bdf_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BgtProjDateDependency]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BgtProjDateDependency](
	[bpd_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[bpd_ProjTypeId] [smallint] NOT NULL,
	[bpd_BgtDateId] [tinyint] NOT NULL,
	[bpd_BgtDateDesc] [varchar](30) NULL,
	[bpd_BgtDateOrder] [tinyint] NOT NULL,
	[bpd_Created] [smalldatetime] NOT NULL,
	[bpd_CreatedBy] [varchar](50) NOT NULL,
	[bpd_Updated] [smalldatetime] NOT NULL,
	[bpd_UpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BgtProjDateDependency] PRIMARY KEY CLUSTERED 
(
	[bpd_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BgtProjNotesDesc]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BgtProjNotesDesc](
	[bpn_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[bpn_ProjTypeId] [smallint] NOT NULL,
	[bpn_NoteDesc1] [varchar](50) NOT NULL,
	[bpn_NoteDesc2] [varchar](50) NOT NULL,
	[bpn_NoteDesc3] [varchar](50) NOT NULL,
	[bpn_NoteDesc4] [varchar](50) NOT NULL,
	[bpn_Created] [smalldatetime] NOT NULL,
	[bpn_CreatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BgtProjNotesDesc] PRIMARY KEY CLUSTERED 
(
	[bpn_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BgtSchDetail_Trnxn]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BgtSchDetail_Trnxn](
	[bud_LogId] [int] IDENTITY(-2147483648,1) NOT NULL,
	[bud_trxId] [int] NOT NULL,
	[budSch_ID] [int] NOT NULL,
	[bud_employeeID] [int] NULL,
	[bud_employeeLevelID] [int] NOT NULL,
	[bud_jobCodeID] [int] NULL,
	[bud_fromDateTime] [datetime] NOT NULL,
	[bud_toDateTime] [datetime] NOT NULL,
	[bud_hours] [real] NOT NULL,
	[bud_overtimeHours] [real] NULL,
	[bud_billRate] [money] NULL,
	[bud_appliedToSchedule] [bit] NOT NULL,
	[bud_addMode] [tinyint] NOT NULL,
	[bud_duration] [smallint] NOT NULL,
	[bud_employeeDeptID] [int] NULL,
	[bud_employeeDivID] [int] NULL,
	[bud_billingCodeID] [int] NULL,
	[bud_billRateType] [int] NULL,
	[bud_WeekEndFlg] [bit] NOT NULL,
	[bud_jobLocation] [int] NULL,
	[sch_Status] [int] NULL,
	[bud_Notes] [nvarchar](1024) NULL,
	[bud_importID] [int] NULL,
	[bud_created] [smalldatetime] NOT NULL,
	[bud_createdBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BudgetDetail_Trnxn] PRIMARY KEY CLUSTERED 
(
	[bud_LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BgtTemplate]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BgtTemplate](
	[bt_Id] [int] IDENTITY(1,1) NOT NULL,
	[bt_name] [varchar](50) NOT NULL,
	[bt_desc] [varchar](250) NULL,
	[bt_notes] [varchar](1000) NULL,
	[bt_type] [tinyint] NOT NULL,
	[bt_rateSrc] [tinyint] NOT NULL,
	[bt_modBud] [tinyint] NOT NULL,
	[bt_catId] [smallint] NULL,
	[bt_rollJobCodeSch] [tinyint] NOT NULL,
	[bt_rollCodesDet] [tinyint] NOT NULL,
	[bt_defAddMode] [tinyint] NOT NULL,
	[bt_dateProjId] [smallint] NOT NULL,
	[bt_active] [smalldatetime] NULL,
	[bt_order] [smallint] NOT NULL,
	[bt_created] [datetime] NOT NULL,
	[bt_createdBy] [varchar](50) NOT NULL,
	[bt_lastUpdated] [datetime] NOT NULL,
	[bt_lastUpdatedBy] [varchar](50) NOT NULL,
	[bt_rollReq] [tinyint] NOT NULL,
 CONSTRAINT [PK_BgtTemplate] PRIMARY KEY CLUSTERED 
(
	[bt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BgtTmpCategory]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BgtTmpCategory](
	[bcat_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[bcat_name] [varchar](50) NOT NULL,
	[bcat_desc] [varchar](150) NULL,
	[bca_order] [smallint] NOT NULL,
	[bcat_Active] [bit] NOT NULL,
	[bcat_EvalHours] [real] NULL,
 CONSTRAINT [PK_BgtTmpCategory] PRIMARY KEY CLUSTERED 
(
	[bcat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillingCodes]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingCodes](
	[bic_ID] [int] NOT NULL,
	[bic_jobCodeID] [int] NULL,
	[bic_order] [int] NULL,
	[bic_code] [varchar](15) NOT NULL,
	[bic_desc] [varchar](100) NOT NULL,
	[bic_billRate] [money] NULL,
	[bic_notes] [varchar](1000) NULL,
	[bic_category] [varchar](15) NULL,
	[bic_attendancePlanID] [int] NULL,
	[bic_isActive] [bit] NOT NULL,
	[bic_transID] [int] NULL,
	[bic_Billable] [bit] NOT NULL,
	[bic_AvalRevUtil] [bit] NOT NULL,
	[bic_BudgetPhaseID] [int] NULL,
 CONSTRAINT [PK__BillingCodes__40106F4B] PRIMARY KEY CLUSTERED 
(
	[bic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillingCodesDescription]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingCodesDescription](
	[bcd_ID] [int] NOT NULL,
	[bcd_bicID] [int] NOT NULL,
	[bcd_order] [int] NULL,
	[bcd_desc] [varchar](100) NULL,
	[bcd_locationID] [int] NULL,
 CONSTRAINT [PK_BillingCodesDescription] PRIMARY KEY NONCLUSTERED 
(
	[bcd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Budget]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Budget](
	[bgt_ID] [int] NOT NULL,
	[bgt_desc] [varchar](500) NULL,
	[bgt_submittedby] [nvarchar](30) NULL,
	[bgt_clientID] [int] NOT NULL,
	[bgt_dateDue] [datetime] NOT NULL,
	[bgt_dateReceived] [datetime] NULL,
	[bgt_totalHours] [real] NULL,
	[bgt_staffMixApprovedFlg] [bit] NOT NULL,
	[bgt_dateBilled] [datetime] NULL,
	[bgt_notes] [varchar](1000) NULL,
	[bgt_projectCode] [int] NOT NULL,
	[bgt_RollJobCode] [tinyint] NULL,
	[bgt_ProposedFee] [money] NULL,
	[bgt_Multiplier] [real] NULL,
	[bgt_DefSchAddMode] [tinyint] NOT NULL,
	[bgt_diffId] [tinyint] NULL,
	[bgt_importID] [int] NULL,
	[bgt_tskMod] [bit] NOT NULL,
	[bgt_StartDate] [datetime] NOT NULL,
	[bgt_jobCatId] [smallint] NULL,
	[bgt_HoursToFinish] [real] NULL,
	[bgt_YearEnd] [smalldatetime] NULL,
	[bgt_FieldWork] [datetime] NULL,
	[bgt_FSdelivered] [datetime] NULL,
	[bgt_JobArchived] [datetime] NULL,
	[bgt_BlockDateRule] [bit] NULL,
	[bgt_workHourType] [int] NULL,
	[bgt_defRate] [money] NULL,
	[bgt_rateSrc] [tinyint] NOT NULL,
	[bgt_notes1] [varchar](1000) NULL,
	[bgt_notes2] [varchar](1000) NULL,
	[bgt_notes3] [varchar](1000) NULL,
	[bgt_Created] [datetime] NOT NULL,
	[bgt_LastUpdated] [datetime] NOT NULL,
	[bgt_LastUpdatedBy] [varchar](50) NOT NULL,
	[bgt_StatusId] [int] NULL,
	[bgt_TemplateId] [int] NOT NULL,
	[bgt_SaasImportAppId] [int] NULL,
	[bgt_SaasImportId] [nvarchar](1000) NULL,
 CONSTRAINT [aaaaaBudget_PK] PRIMARY KEY NONCLUSTERED 
(
	[bgt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_Clt_PrjCode] UNIQUE NONCLUSTERED 
(
	[bgt_clientID] ASC,
	[bgt_projectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetApproval]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetApproval](
	[bap_employeeID] [int] NOT NULL,
	[bap_clientID] [int] NOT NULL,
	[bap_budgetID] [int] NOT NULL,
	[bap_approvalDate] [datetime] NOT NULL,
	[bap_titleID] [int] NOT NULL,
 CONSTRAINT [aaaaaBudgetApproval_PK] PRIMARY KEY NONCLUSTERED 
(
	[bap_employeeID] ASC,
	[bap_clientID] ASC,
	[bap_budgetID] ASC,
	[bap_titleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetCategory]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetCategory](
	[bgtCat_ID] [int] IDENTITY(1,1) NOT NULL,
	[bgtCat_order] [smallint] NULL,
	[bgtCat_Name] [varchar](100) NULL,
	[bgtCat_Desc] [nvarchar](500) NOT NULL,
	[bgtCat_activeFlg] [bit] NULL,
	[bgtCat_notes] [varchar](4000) NULL,
 CONSTRAINT [PK_BudgetCategory] PRIMARY KEY NONCLUSTERED 
(
	[bgtCat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetDates]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetDates](
	[bgd_Id] [int] IDENTITY(1,1) NOT NULL,
	[bgd_bgtId] [int] NOT NULL,
	[bgd_DateDepId] [smallint] NOT NULL,
	[bgd_Date] [smalldatetime] NOT NULL,
	[bgd_Note] [varchar](125) NULL,
	[bgd_Updated] [smalldatetime] NOT NULL,
	[bgd_UpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BudgetDates] PRIMARY KEY CLUSTERED 
(
	[bgd_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetDetail]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetDetail](
	[bud_ID] [int] NOT NULL,
	[bud_budgetID] [int] NOT NULL,
	[bud_clientID] [int] NOT NULL,
	[bud_employeeID] [int] NULL,
	[bud_employeeLevelID] [int] NOT NULL,
	[bud_jobCodeID] [int] NULL,
	[bud_fromDateTime] [datetime] NOT NULL,
	[bud_toDateTime] [datetime] NOT NULL,
	[bud_hours] [real] NOT NULL,
	[bud_overtimeHours] [real] NULL,
	[bud_billRate] [money] NULL,
	[bud_difficultyCode] [smallint] NULL,
	[bud_appliedToSchedule] [bit] NOT NULL,
	[bud_lastUpdate] [datetime] NOT NULL,
	[bud_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[bud_addMode] [tinyint] NOT NULL,
	[bud_duration] [smallint] NOT NULL,
	[bud_employeeDeptID] [int] NULL,
	[bud_employeeDivID] [int] NULL,
	[bud_workHourType] [int] NULL,
	[bud_billingCodeID] [int] NULL,
	[bud_billRateType] [int] NULL,
	[bud_WeekEndFlg] [bit] NOT NULL,
	[bud_jobLocation] [int] NULL,
	[bud_Notes] [nvarchar](1024) NULL,
	[bud_MarkFlag] [bit] NULL,
	[bud_importID] [int] NULL,
	[bud_created] [smalldatetime] NOT NULL,
	[bud_createdBy] [varchar](50) NOT NULL,
	[bud_chgRate] [bit] NULL,
	[bud_stepid] [int] NULL,
	[bud_stepOrder] [int] NULL,
	[bud_DetailRoleId] [int] NULL,
	[bud_SaasImportAppId] [int] NULL,
	[bud_SaasImportId] [nvarchar](1000) NULL,
 CONSTRAINT [aaaaaBudgetDetail_PK] PRIMARY KEY NONCLUSTERED 
(
	[bud_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetDetailRole]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetDetailRole](
	[bgtDetRoles_ID] [int] IDENTITY(1,1) NOT NULL,
	[bgtDetRoles_BgtId] [int] NOT NULL,
	[bgtDetRoles_Order] [int] NULL,
	[bgtDetRoles_EmpId] [int] NULL,
	[bgtDetRoles_LevelId] [int] NOT NULL,
	[bgtDetRoles_notes] [varchar](4000) NULL,
 CONSTRAINT [PK_BudgetDetailRoles] PRIMARY KEY CLUSTERED 
(
	[bgtDetRoles_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetDetailSkill]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetDetailSkill](
	[bds_skillID] [int] NOT NULL,
	[bds_budgetDetailID] [int] NOT NULL,
	[bds_requiredFlg] [bit] NOT NULL,
	[bds_yearsExp] [real] NULL,
	[bds_level] [smallint] NULL,
 CONSTRAINT [aaaaaBudgetDetailSkill_PK] PRIMARY KEY NONCLUSTERED 
(
	[bds_skillID] ASC,
	[bds_budgetDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetExpense]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetExpense](
	[Bxp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Bxp_bgtId] [int] NOT NULL,
	[Bxp_BgtExpType] [int] NOT NULL,
	[Bxp_JobCode] [int] NULL,
	[Bxp_BillingCode] [int] NULL,
	[Bxp_date] [datetime] NULL,
	[Bxp_Note] [varchar](256) NULL,
	[Bxp_Amt] [money] NULL,
 CONSTRAINT [PK_BudgetExpense] PRIMARY KEY NONCLUSTERED 
(
	[Bxp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetPhase]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetPhase](
	[bgtPhase_ID] [int] IDENTITY(1,1) NOT NULL,
	[bgtPhase_Name] [varchar](500) NOT NULL,
	[bgtPhase_Order] [int] NULL,
	[bgtPhase_Category] [int] NULL,
	[bgtPhase_SubCategory] [int] NULL,
	[bgtPhase_ActiveFlg] [bit] NULL,
 CONSTRAINT [PK_Budget_Phase] PRIMARY KEY CLUSTERED 
(
	[bgtPhase_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetSteps]    Script Date: 9/10/2018 4:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetSteps](
	[bgtSteps_ID] [int] IDENTITY(1,1) NOT NULL,
	[bgtSteps_Order] [int] NULL,
	[bgtSteps_JobCodeId] [int] NOT NULL,
	[bgtSteps_BillCodeId] [int] NOT NULL,
	[bgtSteps_PhaseId] [int] NULL,
	[bgtSteps_ActiveFlg] [bit] NULL,
	[bgtSteps_NameId] [int] NULL,
 CONSTRAINT [PK_Budget_Steps] PRIMARY KEY CLUSTERED 
(
	[bgtSteps_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetStepsTmpName]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetStepsTmpName](
	[bgtStepsTmpName_ID] [int] IDENTITY(1,1) NOT NULL,
	[bgtStepsTmpName_Order] [int] NULL,
	[bgtStepsTmpName_Name] [varchar](500) NOT NULL,
	[bgtStepsTmpName_CatId] [int] NULL,
	[bgtStepsTmpName_SubCatId] [int] NULL,
	[bgtStepsTmpName_PhaseId] [int] NULL,
	[bgtStepsTmpName_ActiveFlg] [bit] NULL,
 CONSTRAINT [PK_Budget_StepsTmpName] PRIMARY KEY CLUSTERED 
(
	[bgtStepsTmpName_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetSubCategory]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetSubCategory](
	[bgtSubCat_ID] [int] IDENTITY(1,1) NOT NULL,
	[bgtSubCat_order] [smallint] NULL,
	[bgtSubCat_Name] [varchar](50) NULL,
	[bgtSubCat_Desc] [nvarchar](500) NOT NULL,
	[bgtSubCat_activeFlg] [bit] NULL,
	[bgtSubCat_notes] [varchar](4000) NULL,
 CONSTRAINT [PK_BudgetSubCategory] PRIMARY KEY NONCLUSTERED 
(
	[bgtSubCat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[clt_ID] [int] NOT NULL,
	[clt_number] [nvarchar](15) NOT NULL,
	[clt_engagementCode] [nvarchar](15) NOT NULL,
	[clt_engagementYear] [nvarchar](50) NOT NULL,
	[clt_shortName] [nvarchar](15) NOT NULL,
	[clt_longName] [nvarchar](50) NOT NULL,
	[clt_addr1] [nvarchar](50) NULL,
	[clt_addr2] [nvarchar](50) NULL,
	[clt_city] [nvarchar](20) NULL,
	[clt_state] [nvarchar](2) NULL,
	[clt_ZIP] [nvarchar](12) NULL,
	[clt_country] [nvarchar](35) NULL,
	[clt_phone] [nvarchar](14) NULL,
	[clt_phoneExt] [nvarchar](4) NULL,
	[clt_countryCode] [nvarchar](4) NULL,
	[clt_fax] [nvarchar](14) NULL,
	[clt_sicCode] [int] NULL,
	[clt_accrualRate] [real] NULL,
	[clt_realizationRate] [real] NULL,
	[clt_revenueFlg] [bit] NOT NULL,
	[clt_recurring] [bit] NOT NULL,
	[clt_referral] [nvarchar](25) NULL,
	[clt_status] [nvarchar](8) NULL,
	[clt_clientlostdate] [datetime] NULL,
	[clt_clientAsOfDate] [datetime] NULL,
	[clt_fiscalYearEnd] [datetime] NULL,
	[clt_gal] [bit] NOT NULL,
	[clt_sec] [bit] NOT NULL,
	[clt_ots] [bit] NOT NULL,
	[clt_eas] [bit] NOT NULL,
	[clt_notes] [nvarchar](3000) NULL,
	[clt_industryTeam] [int] NULL,
	[clt_entityID] [int] NULL,
	[clt_typeOfWorkID] [int] NULL,
	[clt_Misc1] [nvarchar](50) NULL,
	[clt_Misc2] [nvarchar](50) NULL,
	[clt_Misc3] [nvarchar](50) NULL,
	[clt_Misc4] [nvarchar](50) NULL,
	[clt_url] [nvarchar](100) NULL,
	[clt_stockSymbol] [nvarchar](6) NULL,
	[clt_revenueTypeID] [int] NULL,
	[clt_regionID] [int] NULL,
	[clt_locationID] [int] NULL,
	[clt_deptID] [int] NULL,
	[clt_levelID] [int] NULL,
	[clt_divisionID] [int] NULL,
	[Clt_ImportID] [int] NULL,
	[clt_audMod] [bit] NOT NULL,
	[clt_TskMod] [bit] NOT NULL,
	[clt_Created] [smalldatetime] NOT NULL,
	[clt_EIN] [varchar](18) NULL,
	[clt_GroupId] [int] NULL,
	[clt_ParentGrp] [varchar](50) NULL,
	[clt_SaasImportAppId] [int] NULL,
	[clt_SaasImportId] [nvarchar](1000) NULL,
 CONSTRAINT [aaaaaClient_PK] PRIMARY KEY NONCLUSTERED 
(
	[clt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCategory]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCategory](
	[clc_ID] [int] NOT NULL,
	[clc_Desc] [nvarchar](50) NULL,
	[clc_Notes] [ntext] NULL,
 CONSTRAINT [aaaaaClientCategory_PK] PRIMARY KEY NONCLUSTERED 
(
	[clc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientContact]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientContact](
	[ccn_ID] [int] NOT NULL,
	[ccn_clientID] [int] NOT NULL,
	[ccn_lastName] [nvarchar](20) NULL,
	[ccn_firstName] [nvarchar](15) NULL,
	[ccn_MI] [nvarchar](1) NULL,
	[ccn_salutation] [nvarchar](15) NULL,
	[ccn_position] [nvarchar](35) NULL,
	[ccn_type] [nvarchar](35) NULL,
	[ccn_addr1] [nvarchar](30) NULL,
	[ccn_addr2] [nvarchar](30) NULL,
	[ccn_city] [nvarchar](20) NULL,
	[ccn_state] [nvarchar](2) NULL,
	[ccn_ZIP] [nvarchar](12) NULL,
	[ccn_country] [nvarchar](35) NULL,
	[ccn_phone] [nvarchar](14) NULL,
	[ccn_phoneExt] [nvarchar](4) NULL,
	[ccn_countryCode] [nvarchar](4) NULL,
	[ccn_fax] [nvarchar](14) NULL,
	[ccn_notes] [ntext] NULL,
	[ccn_email] [nvarchar](50) NULL,
	[ccn_ConID] [int] NULL,
 CONSTRAINT [aaaaaClientContact_PK] PRIMARY KEY NONCLUSTERED 
(
	[ccn_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientContactType]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientContactType](
	[con_ID] [int] NOT NULL,
	[con_order] [int] NULL,
	[con_desc] [nvarchar](50) NULL,
	[con_notes] [ntext] NULL,
 CONSTRAINT [aaaaaClientContactType_PK] PRIMARY KEY NONCLUSTERED 
(
	[con_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCustField]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCustField](
	[ccf_clientID] [int] NOT NULL,
	[ccf_custFieldID] [int] NOT NULL,
	[ccf_value] [nvarchar](60) NULL,
 CONSTRAINT [aaaaaClientCustField_PK] PRIMARY KEY NONCLUSTERED 
(
	[ccf_clientID] ASC,
	[ccf_custFieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCustFieldDefinition]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCustFieldDefinition](
	[cfd_ID] [int] NOT NULL,
	[cfd_name] [nvarchar](35) NOT NULL,
	[cfd_fieldType] [nvarchar](8) NOT NULL,
	[cfd_notes] [ntext] NULL,
 CONSTRAINT [aaaaaClientCustFieldDefinition_PK] PRIMARY KEY NONCLUSTERED 
(
	[cfd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDate]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDate](
	[cdt_clientID] [int] NOT NULL,
	[cdt_dateDefinitionID] [int] NOT NULL,
	[cdt_date] [datetime] NOT NULL,
	[cdt_notes] [ntext] NULL,
	[cdt_ExtDate] [datetime] NULL,
	[cdt_FinalDate] [datetime] NULL,
	[cdt_CompletedDate] [datetime] NULL,
	[cdt_CompletedFlag] [bit] NOT NULL,
	[cdt_Disposition] [nvarchar](50) NULL,
	[cdt_employeeID] [int] NULL,
	[cdt_StatusID] [int] NULL,
 CONSTRAINT [aaaaaClientDate_PK] PRIMARY KEY NONCLUSTERED 
(
	[cdt_clientID] ASC,
	[cdt_dateDefinitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDateDefinition]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDateDefinition](
	[cdd_ID] [int] NOT NULL,
	[cdd_desc] [nvarchar](50) NOT NULL,
	[cdd_notes] [ntext] NULL,
 CONSTRAINT [aaaaaClientDateDefinition_PK] PRIMARY KEY NONCLUSTERED 
(
	[cdd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDateTracker]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDateTracker](
	[cdt_ID] [int] NOT NULL,
	[cdt_clientID] [int] NULL,
	[cdt_dateDefinitionID] [int] NULL,
	[cdt_taskTypeID] [int] NULL,
	[cdt_taxYear] [nvarchar](4) NULL,
	[cdt_description] [nvarchar](50) NULL,
	[cdt_recurrenceType] [int] NULL,
	[cdt_recurrenceCount] [int] NULL,
	[cdt_loginDate] [datetime] NULL,
	[cdt_startDate] [datetime] NULL,
	[cdt_dueDate] [datetime] NULL,
	[cdt_extension1] [datetime] NULL,
	[cdt_extension2] [datetime] NULL,
	[cdt_extension3] [datetime] NULL,
	[cdt_completedDate] [datetime] NULL,
	[cdt_completedFlag] [bit] NULL,
	[cdt_currentExtension] [int] NULL,
	[cdt_typeID] [int] NULL,
	[cdt_inchargeID] [int] NULL,
	[cdt_statusID] [int] NULL,
	[cdt_disposition] [nvarchar](50) NULL,
	[cdt_engLetterOnFile] [bit] NULL,
	[cdt_electronicFiling] [bit] NULL,
	[cdt_recurringFlag] [bit] NULL,
	[cdt_difficultyCode] [int] NULL,
	[cdt_notes] [nvarchar](4000) NULL,
	[cdt_lastUpdate] [datetime] NULL,
	[cdt_lastUpdatedBy] [nvarchar](20) NULL,
 CONSTRAINT [PK_xxxDanTest] PRIMARY KEY CLUSTERED 
(
	[cdt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDateTrackerDetail]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDateTrackerDetail](
	[cdd_ID] [int] NOT NULL,
	[cdd_trackerID] [int] NULL,
	[cdd_trackerOrder] [smallint] NULL,
	[cdd_jobCodeID] [int] NULL,
	[cdd_trackerTemplateTaskID] [int] NULL,
	[cdd_clientID] [int] NULL,
	[cdd_employeeID] [int] NULL,
	[cdd_employeeLevelID] [int] NULL,
	[cdd_employeeDeptID] [int] NULL,
	[cdd_employeeDivID] [int] NULL,
	[cdd_targetStartDateTime] [datetime] NULL,
	[cdd_actualStartDateTime] [datetime] NULL,
	[cdd_dueDateTime] [datetime] NULL,
	[cdd_completedDateTime] [datetime] NULL,
	[cdd_completedFlag] [bit] NULL,
	[cdd_budgetedHours] [real] NULL,
	[cdd_actualHours] [real] NULL,
	[cdd_billRate] [money] NULL,
	[cdd_lastUpdate] [datetime] NULL,
	[cdd_lastUpdatedBy] [nvarchar](20) NULL,
	[cdd_employeeRegionID] [int] NULL,
	[cdd_employeeLocationID] [int] NULL,
 CONSTRAINT [PK_ClientDateTrackerDetail] PRIMARY KEY CLUSTERED 
(
	[cdd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDateTrackerGroups]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDateTrackerGroups](
	[ctg_clientID] [int] NOT NULL,
	[ctg_templateGroupID] [int] NOT NULL,
 CONSTRAINT [PK_ClientDateTrackerGroups] PRIMARY KEY CLUSTERED 
(
	[ctg_clientID] ASC,
	[ctg_templateGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDateTrackerStatus]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDateTrackerStatus](
	[cts_ID] [int] NOT NULL,
	[cts_desc] [nvarchar](50) NULL,
	[cts_notes] [ntext] NULL,
 CONSTRAINT [PK_ClientDateTrackerStatus] PRIMARY KEY CLUSTERED 
(
	[cts_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDateTrackerTaskType]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDateTrackerTaskType](
	[ctt_ID] [int] NOT NULL,
	[ctt_desc] [nvarchar](50) NULL,
	[ctt_notes] [ntext] NULL,
 CONSTRAINT [PK_ClientDateTrackerTaskType] PRIMARY KEY CLUSTERED 
(
	[ctt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDateTrackerTemplate]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDateTrackerTemplate](
	[ctt_clientID] [int] NOT NULL,
	[ctt_templateID] [int] NOT NULL,
 CONSTRAINT [PK_ClientDateTrackerTemplate] PRIMARY KEY CLUSTERED 
(
	[ctt_clientID] ASC,
	[ctt_templateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientEntity]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientEntity](
	[ent_ID] [int] NOT NULL,
	[ent_desc] [nvarchar](50) NULL,
	[ent_notes] [ntext] NULL,
 CONSTRAINT [aaaaaClientEntity_PK] PRIMARY KEY NONCLUSTERED 
(
	[ent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientIndustry]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientIndustry](
	[cin_industryID] [int] NOT NULL,
	[cin_clientID] [int] NOT NULL,
 CONSTRAINT [aaaaaClientIndustry_PK] PRIMARY KEY NONCLUSTERED 
(
	[cin_industryID] ASC,
	[cin_clientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientNotes]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientNotes](
	[cnt_id] [int] NOT NULL,
	[cnt_ClientID] [int] NULL,
	[cnt_Note] [ntext] NULL,
	[cnt_user] [nvarchar](20) NULL,
	[cnt_lastupdate] [datetime] NULL,
 CONSTRAINT [aaaaaClientNotes_PK] PRIMARY KEY NONCLUSTERED 
(
	[cnt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientOLE]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientOLE](
	[col_ID] [int] NOT NULL,
	[col_clientID] [int] NOT NULL,
	[col_desc] [nvarchar](50) NOT NULL,
	[col_OLEData] [image] NOT NULL,
	[col_lastUpdate] [datetime] NOT NULL,
 CONSTRAINT [aaaaaClientOLE_PK] PRIMARY KEY NONCLUSTERED 
(
	[col_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientWork]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientWork](
	[wrk_ID] [int] NOT NULL,
	[wrk_desc] [nvarchar](50) NULL,
	[wrk_notes] [ntext] NULL,
 CONSTRAINT [aaaaaClientWork_PK] PRIMARY KEY NONCLUSTERED 
(
	[wrk_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodeTableNames]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeTableNames](
	[CodeTableName] [varchar](50) NOT NULL,
	[CodeTableValue] [int] NULL,
	[CodeTableForm] [varchar](50) NULL,
	[ModConnected] [int] NULL,
	[TableName] [varchar](50) NULL,
 CONSTRAINT [PK_CodeTableNames] PRIMARY KEY NONCLUSTERED 
(
	[CodeTableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Cmpn_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Cmpn_Order] [smallint] NOT NULL,
	[Cmpn_Active] [bit] NOT NULL,
	[Cmpn_Name] [varchar](50) NOT NULL,
	[Cmpn_Notes] [varchar](256) NULL,
	[Cmpn_Updated] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Cmpn_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControlFile]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControlFile](
	[UnqId] [int] IDENTITY(1,1) NOT NULL,
	[Information] [ntext] NOT NULL,
	[MergeTask] [bit] NOT NULL,
	[SMTPServerName] [varchar](256) NULL,
	[ActDirServerName] [varchar](64) NULL,
	[RollJobCodes] [tinyint] NOT NULL,
	[SMTPAuth] [varchar](75) NULL,
	[SchStartTime] [datetime] NULL,
	[AllDayEvent] [bit] NOT NULL,
	[UseSMTPForEmail] [bit] NOT NULL,
	[SerializeFlag] [bit] NOT NULL,
	[ExchCommStatus] [tinyint] NOT NULL,
	[SchAddCourse] [bit] NOT NULL,
	[SchEditChangeHour] [bit] NOT NULL,
	[MaxSessionTimeOut] [smallint] NOT NULL,
	[SchedDefaultMode] [smallint] NOT NULL,
	[IsNTAutoLogon] [bit] NOT NULL,
	[SMTPAuthEmail] [varchar](100) NULL,
	[SMTPAuthDispName] [varchar](50) NULL,
	[canMgrEditMgmt] [tinyint] NOT NULL,
	[canMgrEditFilter] [bit] NOT NULL,
	[ConfigUTF16] [bit] NOT NULL,
	[DistUnits] [tinyint] NOT NULL,
	[EmpSelField] [varchar](50) NOT NULL,
	[CltSelField] [varchar](50) NOT NULL,
	[JobFilterSet] [bit] NOT NULL,
	[LockTimeSheet] [smallint] NOT NULL,
	[IsTskSchReq] [bit] NOT NULL,
	[DomainAdminAuth] [varchar](75) NULL,
	[CltGrpOption] [tinyint] NOT NULL,
	[bgt_AutoRefRate] [bit] NOT NULL,
	[calApt_ShowSubj] [bit] NOT NULL,
	[SMTPAuthPorts] [varchar](20) NULL,
	[SmtpIsSSL] [bit] NOT NULL,
	[Aud_ExchParams] [varchar](1250) NULL,
	[Tsk_ExchParams] [varchar](1250) NULL,
	[AllStaffShowUtil] [bit] NOT NULL,
	[LastVersionUpdate] [datetime] NOT NULL,
	[DocServerAccountNumber] [varchar](100) NULL,
	[DocServerName] [varchar](100) NULL,
	[CCHAxcessAccountNumber] [varchar](100) NULL,
	[CCHAxcessUserID] [varchar](100) NULL,
	[CCHAxcessPassword] [varchar](50) NULL,
	[CCHAxcessIPAddress] [varchar](50) NULL,
	[DocServerUseADAuth] [bit] NOT NULL,
	[DocServerHosted] [bit] NOT NULL,
 CONSTRAINT [PK_ControlFile] PRIMARY KEY CLUSTERED 
(
	[UnqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCategory]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCategory](
	[CCat_ID] [int] NOT NULL,
	[CCat_Desc] [nvarchar](50) NULL,
	[CCat_Notes] [ntext] NULL,
 CONSTRAINT [aaaaaCourseCategory_PK] PRIMARY KEY NONCLUSTERED 
(
	[CCat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseQualifyFormat]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseQualifyFormat](
	[Cqf_ID] [int] NOT NULL,
	[Cqf_Desc] [nvarchar](50) NULL,
	[Cqf_Notes] [ntext] NULL,
 CONSTRAINT [aaaaaCourseQualifyFormat_PK] PRIMARY KEY NONCLUSTERED 
(
	[Cqf_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPE_Batch]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPE_Batch](
	[Bt_CourseID] [int] IDENTITY(1,1) NOT NULL,
	[Bt_CourseNum] [varchar](255) NOT NULL,
	[Bt_CourseName] [varchar](255) NOT NULL,
	[Bt_CourseStartDate] [datetime] NOT NULL,
	[Bt_CourseEndDate] [datetime] NOT NULL,
	[Bt_CourseCreditHrs] [real] NOT NULL,
	[Bt_CourseCost] [money] NOT NULL,
	[Bt_CourseSponsorId] [varchar](255) NULL,
	[Bt_CourseSponsorName] [varchar](255) NULL,
	[Bt_CourseLocation] [varchar](255) NULL,
	[Bt_CourseCatID] [int] NOT NULL,
	[Bt_cqf_ID] [int] NOT NULL,
	[Bt_CourseInstructor] [varchar](255) NULL,
	[Bt_CourseApprv] [bit] NOT NULL,
	[Bt_CourseCompletedEvd] [bit] NOT NULL,
	[Bt_CourseNotes] [varchar](4000) NULL,
	[Bt_OwnerId] [int] NOT NULL,
	[Bt_lastUpdate] [datetime] NOT NULL,
	[Bt_lastUpdatedBy] [varchar](255) NOT NULL,
 CONSTRAINT [PK_CPE_Batch] PRIMARY KEY NONCLUSTERED 
(
	[Bt_CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPE_Batch_LicCourse]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPE_Batch_LicCourse](
	[Bt_LcCrs_Id] [int] IDENTITY(1,1) NOT NULL,
	[Bt_CrsKey_Id] [int] NOT NULL,
	[Bt_Lic_Id] [int] NOT NULL,
 CONSTRAINT [PK_CPE_Batch_LicCourse] PRIMARY KEY CLUSTERED 
(
	[Bt_LcCrs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_CPE_Batch_LicCourse] UNIQUE NONCLUSTERED 
(
	[Bt_CrsKey_Id] ASC,
	[Bt_Lic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CritCategory]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CritCategory](
	[crtCat_Id] [int] IDENTITY(1,1) NOT NULL,
	[crtCat_HeaderId] [int] NOT NULL,
	[crtCat_FilterCatId] [int] NOT NULL,
	[crtCat_createdDate] [smalldatetime] NOT NULL,
	[crtCat_createdBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CritCategory] PRIMARY KEY CLUSTERED 
(
	[crtCat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_CritCategory] UNIQUE NONCLUSTERED 
(
	[crtCat_HeaderId] ASC,
	[crtCat_FilterCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriteriaHeader]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriteriaHeader](
	[crt_Id] [int] IDENTITY(1,1) NOT NULL,
	[crt_setupName] [nvarchar](200) NOT NULL,
	[crt_tableId] [tinyint] NOT NULL,
	[crt_OwnerId] [int] NULL,
	[crt_public] [bit] NOT NULL,
	[crt_created] [smalldatetime] NOT NULL,
	[crt_createdBy] [varchar](50) NOT NULL,
	[crt_lastUpdated] [smalldatetime] NOT NULL,
	[crt_lastUpdatedBy] [nvarchar](50) NOT NULL,
	[crt_MatchIds] [varchar](max) NULL,
 CONSTRAINT [PK_CriteriaHeader] PRIMARY KEY CLUSTERED 
(
	[crt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriteriaSelection]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriteriaSelection](
	[crt_lineNumber] [smallint] NOT NULL,
	[crt_joinOper] [nvarchar](3) NULL,
	[crt_leftParen] [nvarchar](1) NULL,
	[crt_fieldName] [nvarchar](200) NOT NULL,
	[crt_operator] [nvarchar](50) NOT NULL,
	[crt_compareStr] [ntext] NULL,
	[crt_compareLiteral] [ntext] NULL,
	[crt_rightParen] [nvarchar](1) NULL,
	[crt_DetailId] [int] IDENTITY(1,1) NOT NULL,
	[crt_HeaderId] [int] NOT NULL,
 CONSTRAINT [PK_CriteriaSelection] PRIMARY KEY CLUSTERED 
(
	[crt_DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriteriaTableSrc]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriteriaTableSrc](
	[crt_TblId] [tinyint] NOT NULL,
	[crt_tableName] [varchar](50) NOT NULL,
	[crt_tableDesc] [varchar](75) NOT NULL,
	[crt_module] [tinyint] NOT NULL,
	[crt_Active] [bit] NOT NULL,
 CONSTRAINT [PK_CriteriaTableSrc] PRIMARY KEY CLUSTERED 
(
	[crt_TblId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomFields]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomFields](
	[fld_Id] [tinyint] NOT NULL,
	[fld_PageId] [tinyint] NOT NULL,
	[fld_Sql] [nvarchar](500) NULL,
	[fld_Value] [tinyint] NOT NULL,
	[fld_Active] [bit] NOT NULL,
 CONSTRAINT [PK_CustomFields] PRIMARY KEY CLUSTERED 
(
	[fld_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomSecurity]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomSecurity](
	[CustSecId] [int] IDENTITY(1,1) NOT NULL,
	[BudAppNeeded] [bit] NOT NULL,
	[BudRollBackToModify] [bit] NOT NULL,
	[BudRollBackToSched] [bit] NOT NULL,
	[ArchiveIntervalDate] [smalldatetime] NOT NULL,
	[ArchiveWaitWeeks] [smallint] NOT NULL,
	[ArchiveIntervalWeeks] [smallint] NOT NULL,
	[ImportDataSource] [smallint] NULL,
	[Login_Threshold] [smallint] NOT NULL,
	[Login_Fail_Block] [bit] NOT NULL,
	[Login_Fail_SendMail] [bit] NOT NULL,
	[ExMB_Threshold] [smallint] NOT NULL,
	[ExMB_Fail_Block] [bit] NOT NULL,
	[ExMB_Fail_SendMail] [bit] NOT NULL,
	[Ex_Comm_Threshold] [smallint] NOT NULL,
	[Ex_Comm_DisLink] [bit] NOT NULL,
	[Ex_Comm_SendMail] [bit] NOT NULL,
	[AdminEmail] [varchar](100) NULL,
	[RevAdminEmail] [varchar](512) NULL,
	[useEmailForHelp] [bit] NOT NULL,
	[ExchUserDomain] [varchar](50) NULL,
	[Ex_Mbx_Retry_InaDay] [tinyint] NOT NULL,
	[Ex_Mbx_Retry_NoDays] [tinyint] NOT NULL,
	[Ex_AptFail_EmailAdmin] [bit] NOT NULL,
	[Ex_AptFail_EmailStaff] [bit] NOT NULL,
	[Ex_Include_MgmTeam] [bit] NOT NULL,
	[Allow_DupEmail] [bit] NOT NULL,
	[MgrEditAllClientTasks] [bit] NOT NULL,
	[mgrViewAllStaff] [bit] NOT NULL,
	[ExchDefaultIsBusy] [tinyint] NOT NULL,
	[def_TaskSchedulerId] [int] NULL,
	[monthsKeepTransLog] [tinyint] NOT NULL,
	[ReportViewerUrl] [varchar](100) NULL,
	[ExchBackOfficeDomain] [varchar](50) NULL,
	[ExchOrgPwd] [varchar](50) NULL,
	[Clt_Plugin_Fld] [varchar](50) NOT NULL,
	[pg_DefMaximize] [tinyint] NOT NULL,
	[bgt_DfAddMode] [bit] NOT NULL,
	[bgt_makeTermedReq] [bit] NOT NULL,
	[bgt_dsbAddEdit] [tinyint] NOT NULL,
	[mbxFolderPref] [tinyint] NOT NULL,
	[aptFormatPref] [tinyint] NOT NULL,
	[sysWriteBackSet] [tinyint] NOT NULL,
	[Is_StaffNumAD] [bit] NOT NULL,
	[sch_DelConfirm] [bit] NOT NULL,
 CONSTRAINT [PK_CustomSecurity] PRIMARY KEY CLUSTERED 
(
	[CustSecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Data_HideWeek]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data_HideWeek](
	[hide_Id] [int] IDENTITY(1,1) NOT NULL,
	[hide_dataVwId] [tinyint] NOT NULL,
	[hide_RecId] [int] NULL,
	[hide_dataTmpId] [smallint] NULL,
	[hide_BegWk] [datetime] NOT NULL,
	[hide_EndWk] [datetime] NULL,
	[hide_Order] [tinyint] NOT NULL,
 CONSTRAINT [PK_Data_HideWeek] PRIMARY KEY CLUSTERED 
(
	[hide_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_Data_HideWeek_Order] UNIQUE NONCLUSTERED 
(
	[hide_dataVwId] ASC,
	[hide_RecId] ASC,
	[hide_dataTmpId] ASC,
	[hide_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataView_Screen]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataView_Screen](
	[data_Id] [int] IDENTITY(1,1) NOT NULL,
	[data_VwId] [tinyint] NOT NULL,
	[data_OwnerId] [int] NOT NULL,
	[data_SecGrpId] [smallint] NULL,
	[data_tskGrpId] [smallint] NULL,
	[data_SelUserId] [int] NULL,
	[data_BegDate] [datetime] NULL,
	[data_NoCols] [tinyint] NOT NULL,
	[data_PgRecs] [smallint] NOT NULL,
	[data_LvlIDs] [varchar](200) NULL,
	[data_DptIDs] [varchar](200) NULL,
	[data_DivIDs] [varchar](200) NULL,
	[data_LocIDs] [varchar](200) NULL,
	[data_RegIDs] [varchar](200) NULL,
	[data_ShowAlways] [bit] NOT NULL,
	[data_DataSort] [varchar](40) NULL,
	[data_dspNonEdits] [tinyint] NOT NULL,
	[data_HltShare] [tinyint] NOT NULL,
	[data_miscFld1] [int] NOT NULL,
	[data_miscFld2] [int] NOT NULL,
	[data_miscFlg1] [bit] NOT NULL,
	[data_miscFlg2] [bit] NOT NULL,
	[data_autoExpand] [bit] NOT NULL,
	[data_Public] [bit] NOT NULL,
	[data_LastUpdated] [datetime] NOT NULL,
	[data_LastUpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DataView_Screen] PRIMARY KEY CLUSTERED 
(
	[data_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_DataView_Screen] UNIQUE NONCLUSTERED 
(
	[data_OwnerId] ASC,
	[data_SecGrpId] ASC,
	[data_tskGrpId] ASC,
	[data_VwId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataViews]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataViews](
	[dataVw_Id] [tinyint] NOT NULL,
	[dataVw_Desc] [varchar](50) NOT NULL,
	[dataVw_Active] [bit] NOT NULL,
 CONSTRAINT [PK_DataViews] PRIMARY KEY CLUSTERED 
(
	[dataVw_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataVw_Filters]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataVw_Filters](
	[flt_Id] [int] IDENTITY(1,1) NOT NULL,
	[flt_UserId] [int] NOT NULL,
	[flt_tskSecGrpId] [smallint] NULL,
	[flt_DataVwId] [tinyint] NOT NULL,
	[flt_Mode] [tinyint] NOT NULL,
	[flt_openPar1] [varchar](1) NULL,
	[filterId1] [int] NULL,
	[flt_SchJoinOper] [varchar](3) NULL,
	[flt_openPar2] [varchar](1) NULL,
	[filterId2] [int] NULL,
	[flt_closePar1] [varchar](1) NULL,
	[flt_CltJoinOper] [varchar](3) NULL,
	[flt_openPar3] [varchar](1) NULL,
	[filterId3] [int] NULL,
	[flt_MgmtTeam] [bit] NOT NULL,
	[flt_closePar2] [varchar](1) NULL,
	[flt_Color] [varchar](15) NULL,
	[flt_Order] [tinyint] NOT NULL,
	[flt_Enabled] [bit] NOT NULL,
	[flt_LastUpdated] [datetime] NOT NULL,
	[flt_LastUpdatedBy] [varchar](50) NOT NULL,
	[flt_CatId1] [tinyint] NULL,
	[flt_CatId2] [tinyint] NULL,
	[flt_CatId3] [tinyint] NULL,
	[flt_DataScrnId] [int] NULL,
	[flt_audSecGrpId] [smallint] NULL,
	[flt_TemplateId] [smallint] NULL,
	[flt4_JoinOper] [varchar](3) NULL,
	[flt_openPar4] [varchar](1) NULL,
	[filterId4] [int] NULL,
	[flt_CatId4] [tinyint] NULL,
	[flt_closePar3] [varchar](1) NULL,
 CONSTRAINT [PK_DataVw_Filters] PRIMARY KEY CLUSTERED 
(
	[flt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_DataVw_Filters] UNIQUE NONCLUSTERED 
(
	[flt_UserId] ASC,
	[flt_DataVwId] ASC,
	[flt_Mode] ASC,
	[flt_audSecGrpId] ASC,
	[flt_tskSecGrpId] ASC,
	[flt_TemplateId] ASC,
	[flt_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefOrg_Scheduler]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefOrg_Scheduler](
	[DefSch_Id] [int] IDENTITY(1,1) NOT NULL,
	[DefSch_OrgId] [int] NOT NULL,
	[DefSch_SchId] [int] NOT NULL,
	[DefSch_Order] [tinyint] NOT NULL,
 CONSTRAINT [PK_DefOrg_Scheduler] PRIMARY KEY CLUSTERED 
(
	[DefSch_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_DefOrg_Scheduler_Order] UNIQUE NONCLUSTERED 
(
	[DefSch_OrgId] ASC,
	[DefSch_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_DefOrg_Scheduler_User] UNIQUE NONCLUSTERED 
(
	[DefSch_OrgId] ASC,
	[DefSch_SchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefSch_Org]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefSch_Org](
	[def_Id] [int] IDENTITY(1,1) NOT NULL,
	[def_EmpId] [int] NULL,
	[def_LvlId] [int] NULL,
	[def_DptId] [int] NULL,
	[def_DivId] [int] NULL,
	[def_LocId] [int] NULL,
	[def_RegId] [int] NULL,
	[def_Order] [smallint] NOT NULL,
	[def_LastUpdated] [datetime] NOT NULL,
	[def_LastUpdatedBy] [varchar](50) NOT NULL,
	[def_EmpFltId] [int] NULL,
 CONSTRAINT [PK_DefSch_Org] PRIMARY KEY CLUSTERED 
(
	[def_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_DefSch_Org] UNIQUE NONCLUSTERED 
(
	[def_EmpId] ASC,
	[def_EmpFltId] ASC,
	[def_LvlId] ASC,
	[def_DptId] ASC,
	[def_DivId] ASC,
	[def_LocId] ASC,
	[def_RegId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[dpt_ID] [int] NOT NULL,
	[dpt_order] [smallint] NULL,
	[dpt_name] [nvarchar](35) NOT NULL,
	[dpt_notes] [ntext] NULL,
	[dpt_active] [bit] NOT NULL,
 CONSTRAINT [aaaaaDepartment_PK] PRIMARY KEY NONCLUSTERED 
(
	[dpt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DisplayFormat]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisplayFormat](
	[dspFmt_Id] [int] IDENTITY(1,1) NOT NULL,
	[dspFmt_Mode] [tinyint] NOT NULL,
	[dspFmt_Category] [tinyint] NOT NULL,
	[dspFmt_FieldName] [varchar](50) NOT NULL,
	[dspFmt_Separator] [varchar](2) NULL,
	[dspFmt_Order] [tinyint] NOT NULL,
	[dspFmt_Created] [datetime] NOT NULL,
	[dspFmt_CreatedBy] [varchar](50) NOT NULL,
	[dspFmt_Updated] [datetime] NOT NULL,
	[dspFmt_UpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DisplayFormat] PRIMARY KEY CLUSTERED 
(
	[dspFmt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division](
	[div_ID] [int] NOT NULL,
	[div_order] [smallint] NULL,
	[div_name] [nvarchar](35) NOT NULL,
	[div_notes] [ntext] NULL,
	[div_active] [bit] NOT NULL,
 CONSTRAINT [aaaaaDivision_PK] PRIMARY KEY NONCLUSTERED 
(
	[div_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[edu_ID] [int] NOT NULL,
	[edu_name] [nvarchar](35) NOT NULL,
	[edu_notes] [ntext] NULL,
	[edu_courseHours] [real] NULL,
 CONSTRAINT [aaaaaEducation_PK] PRIMARY KEY NONCLUSTERED 
(
	[edu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailAlertCase]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAlertCase](
	[Alert_ID] [int] IDENTITY(1,1) NOT NULL,
	[Alert_CaseID] [tinyint] NOT NULL,
	[Alert_TemplateID] [int] NULL,
	[Alert_To] [varchar](512) NULL,
	[Alert_CC] [varchar](512) NULL,
	[Alert_Subj] [varchar](250) NULL,
	[Alert_Body] [varchar](5120) NULL,
	[Alert_Enable] [bit] NOT NULL,
	[Alert_ObjRoleID] [int] NOT NULL,
 CONSTRAINT [PK_EmailAlertCase] PRIMARY KEY CLUSTERED 
(
	[Alert_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailStore]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailStore](
	[Email_ID] [int] IDENTITY(1,1) NOT NULL,
	[Email_Cat] [tinyint] NOT NULL,
	[Email_CatID] [int] NULL,
	[Email_Rec] [datetime] NOT NULL,
	[Email_To] [varchar](512) NULL,
	[Email_Priority] [tinyint] NOT NULL,
	[Email_HtmlFormat] [bit] NOT NULL,
	[Email_From] [varchar](80) NULL,
	[Email_DispName] [varchar](50) NULL,
	[Email_CC] [varchar](512) NULL,
	[Email_Subj] [varchar](192) NULL,
	[Email_Body] [varchar](max) NULL,
	[Email_Reply] [varchar](100) NULL,
	[Email_AppID] [int] NULL,
	[Email_AlertCase] [tinyint] NULL,
	[Email_ErrMsg] [varchar](300) NULL,
	[Email_fetchDateTime] [datetime] NULL,
	[Email_ErrTime] [datetime] NULL,
	[Email_GmId] [int] NULL,
	[Email_DetId] [int] NULL,
	[Email_BCC] [varchar](512) NULL,
 CONSTRAINT [PK_EmailStore] PRIMARY KEY CLUSTERED 
(
	[Email_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailStore_History]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailStore_History](
	[Email_ID] [int] IDENTITY(1,1) NOT NULL,
	[Email_Cat] [tinyint] NOT NULL,
	[Email_CatID] [int] NULL,
	[Email_SentOn] [datetime] NOT NULL,
	[Email_To] [varchar](512) NULL,
	[Email_Priority] [tinyint] NOT NULL,
	[Email_From] [varchar](100) NULL,
	[Email_DispName] [varchar](50) NULL,
	[Email_CC] [varchar](512) NULL,
	[Email_Subj] [varchar](192) NULL,
	[Email_Body] [varchar](max) NULL,
	[Email_Reply] [varchar](100) NULL,
	[Email_AppID] [int] NULL,
	[Email_AlertCase] [tinyint] NULL,
	[Email_ErrMsg] [varchar](300) NULL,
	[Email_GmId] [int] NULL,
	[Email_DetId] [int] NULL,
	[Email_BCC] [varchar](512) NULL,
PRIMARY KEY CLUSTERED 
(
	[Email_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[emp_ID] [int] NOT NULL,
	[emp_number] [nvarchar](12) NOT NULL,
	[emp_SSN] [nvarchar](11) NULL,
	[emp_lastName] [nvarchar](20) NOT NULL,
	[emp_firstName] [nvarchar](15) NULL,
	[emp_MI] [nvarchar](1) NULL,
	[emp_salutation] [nvarchar](15) NULL,
	[emp_addr1] [nvarchar](50) NULL,
	[emp_addr2] [nvarchar](50) NULL,
	[emp_city] [nvarchar](20) NULL,
	[emp_state] [nvarchar](2) NULL,
	[emp_ZIP] [nvarchar](12) NULL,
	[emp_country] [nvarchar](35) NULL,
	[emp_DOB] [datetime] NULL,
	[emp_phone] [nvarchar](14) NULL,
	[emp_phone_ext] [nvarchar](4) NULL,
	[emp_sex] [nvarchar](10) NULL,
	[emp_ethnic] [nvarchar](20) NULL,
	[emp_marriedFlg] [bit] NOT NULL,
	[emp_spouseName] [nvarchar](35) NULL,
	[emp_hireDate] [datetime] NULL,
	[emp_termDate] [datetime] NULL,
	[emp_status] [nvarchar](10) NULL,
	[emp_type] [nvarchar](8) NULL,
	[emp_region] [int] NULL,
	[emp_locationID] [int] NULL,
	[emp_divisionID] [int] NULL,
	[emp_levelID] [int] NULL,
	[emp_deptID] [int] NULL,
	[emp_notes] [varchar](500) NULL,
	[emp_supervEmplID] [int] NULL,
	[emp_mentorEmplID] [int] NULL,
	[emp_prevEmployer] [nvarchar](35) NULL,
	[emp_prevPosition] [nvarchar](35) NULL,
	[emp_userName] [nvarchar](20) NOT NULL,
	[emp_Email] [varchar](75) NULL,
	[emp_Misc1] [nvarchar](50) NULL,
	[emp_Misc2] [nvarchar](50) NULL,
	[emp_Misc3] [nvarchar](50) NULL,
	[emp_Misc4] [varchar](100) NULL,
	[emp_workHourType] [int] NULL,
	[emp_initials] [nvarchar](6) NULL,
	[emp_groupLeaderId] [int] NULL,
	[emp_carCounsID] [int] NULL,
	[emp_promDate] [datetime] NULL,
	[emp_Created] [smalldatetime] NOT NULL,
	[emp_CmpnId] [smallint] NULL,
	[emp_WorkAreaId] [smallint] NULL,
	[emp_netWrkAdrs1] [varchar](100) NULL,
	[emp_netWrkAdrs2] [varchar](100) NULL,
	[emp_CreateSrc] [tinyint] NOT NULL,
	[emp_Updated] [smalldatetime] NOT NULL,
	[emp_UpdatedBy] [varchar](35) NOT NULL,
	[emp_StaffOrg1] [smallint] NULL,
	[emp_StaffOrg2] [smallint] NULL,
	[emp_ImportId] [int] NULL,
	[emp_SaasImportAppId] [int] NULL,
	[emp_SaasImportId] [nvarchar](1000) NULL,
 CONSTRAINT [aaaaaEmployee_PK] PRIMARY KEY NONCLUSTERED 
(
	[emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [emp_number] UNIQUE NONCLUSTERED 
(
	[emp_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Employee_UserName] UNIQUE NONCLUSTERED 
(
	[emp_userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeBillRate]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeBillRate](
	[ebr_employeeID] [int] NOT NULL,
	[ebr_startDate] [datetime] NOT NULL,
	[ebr_billRate] [money] NULL,
	[ebr_billRate2] [money] NULL,
	[ebr_billRate3] [money] NULL,
	[ebr_billRate4] [money] NULL,
	[ebr_billRate5] [money] NULL,
	[ebr_billRate6] [money] NULL,
	[ebr_reason] [nvarchar](50) NULL,
	[ebr_notes] [ntext] NULL,
	[ebr_cost] [money] NULL,
 CONSTRAINT [aaaaaEmployeeBillRate_PK] PRIMARY KEY NONCLUSTERED 
(
	[ebr_employeeID] ASC,
	[ebr_startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeBillRateDesc]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeBillRateDesc](
	[ebd_rateTypeID] [int] NOT NULL,
	[ebd_rateDesc] [char](20) NULL,
 CONSTRAINT [PK_EmployeeBillRateDesc] PRIMARY KEY NONCLUSTERED 
(
	[ebd_rateTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeBudget]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeBudget](
	[ebt_ID] [int] IDENTITY(1,1) NOT NULL,
	[ebt_fiscalYear] [int] NOT NULL,
	[ebt_employeeID] [int] NOT NULL,
	[ebt_desc] [varchar](100) NOT NULL,
	[ebt_committedHours] [real] NOT NULL,
	[ebt_realization] [real] NOT NULL,
	[ebt_chargeableHours] [real] NOT NULL,
	[ebt_nonChargeableHours] [real] NOT NULL,
	[ebt_notes] [varchar](512) NULL,
	[ebt_isActive] [bit] NOT NULL,
	[ebt_Created] [datetime] NOT NULL,
	[ebt_CreatedBy] [varchar](50) NOT NULL,
	[ebt_LastUpdated] [datetime] NOT NULL,
	[ebt_LastUpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeBudget] PRIMARY KEY CLUSTERED 
(
	[ebt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeBudgetDetail]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeBudgetDetail](
	[ebd_ID] [int] IDENTITY(1,1) NOT NULL,
	[ebd_budgetID] [int] NOT NULL,
	[ebd_fromDateTime] [datetime] NOT NULL,
	[ebd_toDateTime] [datetime] NOT NULL,
	[ebd_chargeableHours] [real] NOT NULL,
	[ebd_nonchargeableHours] [real] NOT NULL,
	[ebd_billRateType] [int] NOT NULL,
	[ebd_Notes] [varchar](512) NULL,
	[ebd_MarkFlag] [bit] NOT NULL,
	[ebd_LastUpdated] [datetime] NOT NULL,
	[ebd_LastUpdatedBy] [varchar](50) NOT NULL,
	[ebd_empBudHrsID] [int] NULL,
 CONSTRAINT [PK_EmployeeBudgetDetail] PRIMARY KEY CLUSTERED 
(
	[ebd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeCourse]    Script Date: 9/10/2018 4:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCourse](
	[Ec_CourseID] [int] NOT NULL,
	[Ec_emp_ID] [int] NULL,
	[Ec_CourseNum] [nvarchar](255) NULL,
	[Ec_CourseName] [nvarchar](255) NULL,
	[Ec_CourseStartDate] [datetime] NULL,
	[Ec_CourseEndDate] [datetime] NULL,
	[Ec_CourseCreditHrs] [real] NULL,
	[Ec_CourseCost] [money] NULL,
	[Ec_CourseSponsorId] [nvarchar](255) NULL,
	[Ec_CourseSponsorName] [nvarchar](255) NULL,
	[Ec_CourseLocation] [nvarchar](255) NULL,
	[Ec_CourseCatID] [int] NULL,
	[Ec_cqf_ID] [int] NULL,
	[Ec_CourseInstructor] [nvarchar](255) NULL,
	[Ec_CourseApprv] [bit] NULL,
	[Ec_CourseCompletedEvd] [bit] NULL,
	[Ec_CourseNotes] [nvarchar](4000) NULL,
	[Ec_lastUpdate] [datetime] NULL,
	[Ec_lastUpdatedBy] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaEmployeeCourse_PK] PRIMARY KEY NONCLUSTERED 
(
	[Ec_CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeCustField]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCustField](
	[ecf_employeeID] [int] NOT NULL,
	[ecf_custFieldID] [int] NOT NULL,
	[ecf_value] [nvarchar](60) NULL,
 CONSTRAINT [aaaaaEmployeeCustField_PK] PRIMARY KEY NONCLUSTERED 
(
	[ecf_employeeID] ASC,
	[ecf_custFieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeCustFieldDefinition]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCustFieldDefinition](
	[ecd_ID] [int] NOT NULL,
	[ecd_name] [nvarchar](35) NOT NULL,
	[ecd_fieldType] [nvarchar](8) NOT NULL,
	[ecd_notes] [ntext] NULL,
 CONSTRAINT [aaaaaEmployeeCustFieldDefinition_PK] PRIMARY KEY NONCLUSTERED 
(
	[ecd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeEducation]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeEducation](
	[eed_employeeID] [int] NOT NULL,
	[eed_educationID] [int] NOT NULL,
	[eed_dateTaken] [datetime] NOT NULL,
	[eed_passFailFlg] [bit] NOT NULL,
	[eed_degree] [nvarchar](35) NULL,
	[eed_timesTaken] [smallint] NULL,
	[eed_grade] [nvarchar](15) NULL,
	[eed_notes] [ntext] NULL,
 CONSTRAINT [aaaaaEmployeeEducation_PK] PRIMARY KEY NONCLUSTERED 
(
	[eed_employeeID] ASC,
	[eed_dateTaken] ASC,
	[eed_educationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeLicenseCertificates]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeLicenseCertificates](
	[elc_employeeId] [int] NOT NULL,
	[elc_LicenseCertificateID] [int] NOT NULL,
	[elc_stateCode] [nvarchar](50) NULL,
	[elc_CPAStatusFlg] [bit] NOT NULL,
	[elc_certificateNumber] [nvarchar](50) NULL,
	[elc_licenseNumber] [nvarchar](50) NULL,
	[elc_LicenseExpireDate] [datetime] NULL,
	[elc_auditpass] [bit] NOT NULL,
	[elc_auditdate] [datetime] NULL,
	[elc_nonfinpass] [bit] NOT NULL,
	[elc_nonfindate] [datetime] NULL,
	[elc_finpass] [bit] NOT NULL,
	[elc_findate] [datetime] NULL,
	[elc_lawpass] [bit] NOT NULL,
	[elc_lawdate] [datetime] NULL,
 CONSTRAINT [aaaaaEmployeeLicenseCertificates_PK] PRIMARY KEY NONCLUSTERED 
(
	[elc_employeeId] ASC,
	[elc_LicenseCertificateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeLicenseCourse]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeLicenseCourse](
	[Elc_Ec_CourseID] [int] NOT NULL,
	[Elc_Ld_ID] [int] NOT NULL,
	[Elc_Emp_ID] [int] NOT NULL,
 CONSTRAINT [aaaaaEmployeeLicenseCourse_PK] PRIMARY KEY NONCLUSTERED 
(
	[Elc_Ec_CourseID] ASC,
	[Elc_Ld_ID] ASC,
	[Elc_Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeLicenseDetail]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeLicenseDetail](
	[Ld_ID] [int] NOT NULL,
	[Ld_Emp_ID] [int] NULL,
	[Ld_Lic_ID] [int] NULL,
	[Ld_MemberNum] [nvarchar](255) NULL,
	[Ld_AcquiredDate] [datetime] NULL,
	[Ld_StartDate] [datetime] NULL,
	[Ld_EndDate] [datetime] NULL,
	[Ld_Reqhrs] [real] NULL,
	[Ld_Remarks] [ntext] NULL,
	[Ld_RenewalDt] [datetime] NULL,
	[Ld_Cbo] [int] NULL,
	[Ld_Misc1] [nvarchar](100) NULL,
	[Ld_Misc2] [nvarchar](100) NULL,
 CONSTRAINT [aaaaaEmployeeLicenseDetail_PK] PRIMARY KEY NONCLUSTERED 
(
	[Ld_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeNotes]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeNotes](
	[ent_id] [int] NOT NULL,
	[ent_employeeID] [int] NULL,
	[ent_Note] [ntext] NULL,
	[ent_user] [nvarchar](20) NULL,
	[ent_lastupdate] [datetime] NULL,
 CONSTRAINT [aaaaaEmployeeNotes_PK] PRIMARY KEY NONCLUSTERED 
(
	[ent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeOLE]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeOLE](
	[eol_ID] [int] NOT NULL,
	[eol_employeeID] [int] NOT NULL,
	[eol_desc] [nvarchar](50) NOT NULL,
	[eol_OLEData] [image] NOT NULL,
	[eol_lastUpdate] [datetime] NOT NULL,
 CONSTRAINT [aaaaaEmployeeOLE_PK] PRIMARY KEY NONCLUSTERED 
(
	[eol_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePhone]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePhone](
	[eph_employeeID] [int] NOT NULL,
	[eph_phoneTypeID] [int] NOT NULL,
	[eph_phone] [nvarchar](14) NULL,
	[eph_phoneExt] [nvarchar](4) NULL,
	[eph_countryCode] [nvarchar](4) NULL,
	[eph_desc] [nvarchar](50) NULL,
	[eph_notes] [ntext] NULL,
 CONSTRAINT [aaaaaEmployeePhone_PK] PRIMARY KEY NONCLUSTERED 
(
	[eph_employeeID] ASC,
	[eph_phoneTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeShiftPref]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeShiftPref](
	[esp_employeeID] [int] NOT NULL,
	[esp_shiftID] [int] NOT NULL,
	[esp_preference] [smallint] NOT NULL,
 CONSTRAINT [aaaaaEmployeeShiftPref_PK] PRIMARY KEY NONCLUSTERED 
(
	[esp_employeeID] ASC,
	[esp_shiftID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSkill]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkill](
	[esk_employeeID] [int] NOT NULL,
	[esk_skillID] [int] NOT NULL,
	[esk_yearsExp] [real] NULL,
	[esk_level] [smallint] NULL,
	[esk_interestFlg] [bit] NOT NULL,
	[esk_notes] [varchar](6000) NULL,
	[esk_CategoryID] [int] NULL,
	[esk_SubCategoryID] [int] NULL,
	[esk_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_EmployeeSkill] PRIMARY KEY CLUSTERED 
(
	[esk_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_EmployeeSkill] UNIQUE NONCLUSTERED 
(
	[esk_employeeID] ASC,
	[esk_skillID] ASC,
	[esk_CategoryID] ASC,
	[esk_SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpOrgHistory]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpOrgHistory](
	[Org_HistID] [int] IDENTITY(1,1) NOT NULL,
	[OrgHist_EmpID] [int] NOT NULL,
	[OrgHist_EmpLevelID] [int] NULL,
	[OrgHist_EmpDptID] [int] NULL,
	[OrgHist_EmpDivID] [int] NULL,
	[OrgHist_EmpLocID] [int] NULL,
	[OrgHist_EmpRegID] [int] NULL,
	[OrgHist_WorkHourID] [int] NULL,
	[OrgHist_MentorID] [int] NULL,
	[OrgHist_SupervisorID] [int] NULL,
	[OrgHist_GroupLeaderID] [int] NULL,
	[OrgHist_CarCounsID] [int] NULL,
	[OrgHist_EffDate] [datetime] NOT NULL,
	[OrgHist_LastUpdate] [datetime] NOT NULL,
	[OrgHist_LastUpdatedBy] [varchar](50) NOT NULL,
	[OrgHist_CmpnId] [smallint] NULL,
	[OrgHist_WrkAreaId] [smallint] NULL,
	[OrgHist_termDate] [smalldatetime] NULL,
	[OrgHist_StfOrg1] [smallint] NULL,
	[OrgHist_StfOrg2] [smallint] NULL,
 CONSTRAINT [PK_EmpOrgHistory] PRIMARY KEY CLUSTERED 
(
	[Org_HistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpSetProperties]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpSetProperties](
	[stg_empID] [int] NOT NULL,
	[stg_ExchStatus] [tinyint] NOT NULL,
	[stg_ExchMsg] [varchar](512) NULL,
	[stg_ActDirStatus] [tinyint] NOT NULL,
	[stg_ActDirMsg] [varchar](512) NULL,
	[stg_EmailStatus] [tinyint] NOT NULL,
	[stg_EmailMsg] [varchar](512) NULL,
	[stg_lastUpdated] [datetime] NOT NULL,
	[stg_lastUpdatedBy] [varchar](50) NOT NULL,
	[stg_ExchReqDateTime] [datetime] NULL,
	[stg_EmailReqDateTime] [datetime] NULL,
	[stg_ADReqDateTime] [datetime] NULL,
	[stg_EmailAttempts] [tinyint] NOT NULL,
	[stg_ADAttempts] [tinyint] NOT NULL,
	[stg_ExchAttempts] [tinyint] NOT NULL,
 CONSTRAINT [PK_EmpAutoSetProperty] PRIMARY KEY CLUSTERED 
(
	[stg_empID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eval_CertCategory]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eval_CertCategory](
	[CertCat_Id] [int] IDENTITY(1,1) NOT NULL,
	[CertCat_Order] [tinyint] NOT NULL,
	[CertCat_Desc] [varchar](50) NOT NULL,
	[CertCat_LastUpdatedBy] [varchar](50) NOT NULL,
	[CertCat_LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Eval_CertCategory] PRIMARY KEY CLUSTERED 
(
	[CertCat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eval_Certification]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eval_Certification](
	[Cert_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cert_Order] [smallint] NOT NULL,
	[Cert_CatId] [int] NOT NULL,
	[Cert_Abrv] [varchar](5) NOT NULL,
	[Cert_Desc] [varchar](250) NOT NULL,
	[Cert_InActive] [datetime] NULL,
	[Cert_Created] [datetime] NOT NULL,
	[Cert_LastUpdatedBy] [varchar](50) NOT NULL,
	[Cert_LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Eval_Certification] PRIMARY KEY CLUSTERED 
(
	[Cert_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eval_CertStatus]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eval_CertStatus](
	[crtSts_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[crtSts_Order] [tinyint] NOT NULL,
	[crtSts_Desc] [varchar](50) NOT NULL,
	[crtSts_Active] [bit] NOT NULL,
 CONSTRAINT [PK_Eval_CertStatus] PRIMARY KEY CLUSTERED 
(
	[crtSts_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exch_MapData]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exch_MapData](
	[ExchMap_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[ExchMap_SrcNm] [varchar](100) NOT NULL,
	[ExchMap_TrgId] [smallint] NOT NULL,
 CONSTRAINT [PK_Exch_MapData] PRIMARY KEY CLUSTERED 
(
	[ExchMap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_Exch_MapData] UNIQUE NONCLUSTERED 
(
	[ExchMap_SrcNm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExchangeData]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeData](
	[Exch_SvrID] [smallint] IDENTITY(1,1) NOT NULL,
	[Exch_SvrName] [varchar](100) NOT NULL,
	[Exch_SSL] [bit] NOT NULL,
	[Exch_FBA] [bit] NOT NULL,
	[Exch_Disabled] [bit] NOT NULL,
	[Exch_Fail_Attempts] [smallint] NOT NULL,
	[Exch_TimeOutMins] [smallint] NOT NULL,
	[Exch_SessionData] [varchar](150) NULL,
	[Exch_CookieData] [varchar](200) NULL,
	[Exch_ExpiryDateTime] [datetime] NULL,
	[Exch_MbxUserName] [varchar](4000) NULL,
	[Exch_MbxUserPwd] [varchar](50) NULL,
	[Exch_useLogonName] [tinyint] NOT NULL,
	[Exch_Version] [tinyint] NOT NULL,
	[Exch_GMTDiff] [smallint] NOT NULL,
	[Exch_DSTEnb] [bit] NOT NULL,
	[Exch_IsHosted] [bit] NOT NULL,
 CONSTRAINT [PK_ExchangeData] PRIMARY KEY CLUSTERED 
(
	[Exch_SvrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ExchangeName] UNIQUE NONCLUSTERED 
(
	[Exch_SvrName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExchangeSync]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeSync](
	[sch_ExchId] [int] IDENTITY(1,1) NOT NULL,
	[sch_Id] [int] NOT NULL,
	[sch_empId] [int] NULL,
	[sch_Mode] [tinyint] NOT NULL,
	[sch_Attmpts] [tinyint] NOT NULL,
	[sch_LogTime] [datetime] NOT NULL,
	[sch_ErrMsg] [varchar](2048) NULL,
 CONSTRAINT [PK_ExchangeSync] PRIMARY KEY CLUSTERED 
(
	[sch_ExchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Excl_Schedules]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excl_Schedules](
	[Excl_SchId] [int] NOT NULL,
 CONSTRAINT [PK_Excl_Schedules] PRIMARY KEY CLUSTERED 
(
	[Excl_SchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExcludeByObj]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExcludeByObj](
	[Excl_ID] [int] IDENTITY(1,1) NOT NULL,
	[Excl_Obj] [tinyint] NOT NULL,
	[Excl_filterType] [tinyint] NOT NULL,
	[Excl_filter] [varchar](1024) NULL,
	[Excl_order] [tinyint] NOT NULL,
 CONSTRAINT [PK_ExcludeObject] PRIMARY KEY CLUSTERED 
(
	[Excl_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpenseType]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseType](
	[Exp_Id] [int] NOT NULL,
	[Exp_Order] [int] NULL,
	[Exp_Desc] [varchar](50) NOT NULL,
	[Exp_Note] [varchar](250) NULL,
 CONSTRAINT [PK_ExpenseType] PRIMARY KEY NONCLUSTERED 
(
	[Exp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilterCategory]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterCategory](
	[fltCat_Id] [int] NOT NULL,
	[fltCat_Desc] [varchar](50) NOT NULL,
	[fltCat_Module] [tinyint] NOT NULL,
 CONSTRAINT [PK_FilterCategory] PRIMARY KEY CLUSTERED 
(
	[fltCat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FirmHoliday]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirmHoliday](
	[hol_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[hol_FiscalYearId] [int] NOT NULL,
	[hol_ClientId] [int] NOT NULL,
	[hol_SchDate] [smalldatetime] NOT NULL,
	[hol_SchHrs] [real] NOT NULL,
	[hol_SchJobCode] [int] NOT NULL,
	[hol_SchBillCode] [int] NULL,
	[hol_EmpFltId] [int] NULL,
	[hol_Notes] [varchar](300) NULL,
	[hol_Active] [bit] NOT NULL,
	[hol_Updated] [smalldatetime] NOT NULL,
	[hol_UpdatedBy] [varchar](50) NOT NULL,
	[hol_sendExch] [bit] NOT NULL,
 CONSTRAINT [PK_FirmHoliday] PRIMARY KEY CLUSTERED 
(
	[hol_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_FirmHoliday_Fields] UNIQUE NONCLUSTERED 
(
	[hol_FiscalYearId] ASC,
	[hol_ClientId] ASC,
	[hol_SchDate] ASC,
	[hol_SchJobCode] ASC,
	[hol_EmpFltId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FiscalYear]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FiscalYear](
	[fiscal_Id] [int] IDENTITY(1,1) NOT NULL,
	[fiscal_Desc] [varchar](50) NOT NULL,
	[fiscal_StartDate] [datetime] NOT NULL,
	[fiscal_EndDate] [datetime] NOT NULL,
	[fiscal_Notes] [varchar](512) NULL,
	[fiscal_Active] [bit] NOT NULL,
	[fiscal_Current] [bit] NOT NULL,
	[fiscal_Order] [tinyint] NOT NULL,
	[fiscal_LastUpdated] [datetime] NOT NULL,
	[fiscal_LastUpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FiscalYear] PRIMARY KEY CLUSTERED 
(
	[fiscal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormNames]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormNames](
	[UnqID] [int] IDENTITY(1,1) NOT NULL,
	[MainFormNumber] [nvarchar](50) NULL,
	[SubFormNumber] [nvarchar](50) NULL,
	[SubFormName] [nvarchar](50) NULL,
	[UserLevel] [int] NULL,
 CONSTRAINT [PK_FormNames] PRIMARY KEY CLUSTERED 
(
	[UnqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenerateMails]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenerateMails](
	[gm_Id] [int] IDENTITY(-2147483648,1) NOT NULL,
	[gm_ObjType] [tinyint] NOT NULL,
	[gm_CatId] [int] NOT NULL,
	[gm_CatId1] [int] NULL,
	[gm_CatId2] [int] NULL,
	[gm_CatId3] [int] NULL,
	[gm_CaseNum] [tinyint] NOT NULL,
	[gm_AlertTmpId] [smallint] NULL,
	[gm_needCheck] [bit] NOT NULL,
	[gm_Rcvd] [datetime] NOT NULL,
	[gm_prcsBeg] [datetime] NULL,
	[gm_prcsEnd] [datetime] NULL,
	[gm_prcError] [varchar](250) NULL,
 CONSTRAINT [PK_GenerateMails] PRIMARY KEY CLUSTERED 
(
	[gm_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMT]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMT](
	[GMTID] [int] IDENTITY(1,1) NOT NULL,
	[GMTZoneNm] [varchar](200) NOT NULL,
	[GMTDiff] [real] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupLabel]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupLabel](
	[Group_ID] [varchar](50) NOT NULL,
	[Group_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_GroupLabel] PRIMARY KEY CLUSTERED 
(
	[Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HourType]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HourType](
	[Hour_ID] [int] NOT NULL,
	[Hour_PlanID] [int] NULL,
	[Hour_Code] [nvarchar](50) NULL,
	[Hour_Desc] [nvarchar](50) NULL,
	[Hour_notes] [ntext] NULL,
 CONSTRAINT [aaaaaHourType_PK] PRIMARY KEY NONCLUSTERED 
(
	[Hour_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import_Source]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import_Source](
	[Imp_DataSrcID] [smallint] NOT NULL,
	[Imp_DataSrcType] [varchar](50) NOT NULL,
	[Imp_Src_Order] [smallint] NOT NULL,
 CONSTRAINT [PK_Import_Source] PRIMARY KEY CLUSTERED 
(
	[Imp_DataSrcID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industry]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industry](
	[ind_ID] [int] NOT NULL,
	[ind_name] [nvarchar](35) NOT NULL,
	[ind_SICCode] [nvarchar](10) NULL,
	[ind_notes] [ntext] NULL,
 CONSTRAINT [aaaaaIndustry_PK] PRIMARY KEY NONCLUSTERED 
(
	[ind_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndustryTeam]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndustryTeam](
	[int_ID] [int] NOT NULL,
	[int_teamDesc] [nvarchar](35) NULL,
	[int_notes] [ntext] NULL,
 CONSTRAINT [aaaaaIndustryTeam_PK] PRIMARY KEY NONCLUSTERED 
(
	[int_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCode]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCode](
	[job_ID] [int] NOT NULL,
	[job_order] [smallint] NULL,
	[job_jobCode] [varchar](15) NULL,
	[job_desc] [nvarchar](50) NOT NULL,
	[job_billRate] [money] NULL,
	[job_activeFlg] [bit] NULL,
	[job_notes] [varchar](500) NULL,
	[job_category] [varchar](30) NULL,
 CONSTRAINT [aaaaaJobCode_PK] PRIMARY KEY NONCLUSTERED 
(
	[job_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobLocation]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobLocation](
	[job_LocId] [int] NOT NULL,
	[job_LocOrder] [smallint] NULL,
	[job_LocName] [nvarchar](50) NOT NULL,
	[job_LocNotes] [ntext] NULL,
	[job_showTime] [smallint] NOT NULL,
 CONSTRAINT [PK_JobLocation] PRIMARY KEY NONCLUSTERED 
(
	[job_LocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobStatus]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobStatus](
	[Status_Id] [int] NOT NULL,
	[Status_Order] [smallint] NULL,
	[Status_Desc] [nvarchar](50) NOT NULL,
	[Status_Notes] [nvarchar](250) NULL,
	[Status_active] [bit] NOT NULL,
 CONSTRAINT [PK_JobStatus] PRIMARY KEY NONCLUSTERED 
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[lvl_ID] [int] NOT NULL,
	[lvl_order] [smallint] NULL,
	[lvl_desc] [nvarchar](50) NOT NULL,
	[lvl_defBillRate] [money] NOT NULL,
	[lvl_costRate] [money] NOT NULL,
	[lvl_notes] [varchar](1024) NULL,
	[lvl_promOrder] [tinyint] NOT NULL,
	[lvl_GroupId] [smallint] NULL,
	[lvl_active] [bit] NOT NULL,
 CONSTRAINT [aaaaaLevel_PK] PRIMARY KEY NONCLUSTERED 
(
	[lvl_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level_History]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level_History](
	[Hst_ID] [int] IDENTITY(1,1) NOT NULL,
	[Hst_lvlID] [int] NOT NULL,
	[Hst_AsOfDate] [datetime] NOT NULL,
	[Hst_lvlDesc] [varchar](50) NOT NULL,
	[Hst_lvlBillRate] [money] NOT NULL,
	[Hst_lvlCostRate] [money] NOT NULL,
	[Hst_lvlLastUpdated] [datetime] NOT NULL,
	[Hst_lvlLastUpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Level_History] PRIMARY KEY CLUSTERED 
(
	[Hst_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LevelGroup]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LevelGroup](
	[lvlGrp_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[lvlGrp_Order] [smallint] NOT NULL,
	[lvlGrp_Name] [varchar](35) NOT NULL,
	[lvlGrp_Desc] [varchar](100) NULL,
	[lvlGrp_isActive] [bit] NOT NULL,
	[lvlGrp_Updated] [datetime] NOT NULL,
	[lvlGrp_UpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LevelGroup] PRIMARY KEY CLUSTERED 
(
	[lvlGrp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[License]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License](
	[Lic_ID] [int] NOT NULL,
	[Lic_Description] [nvarchar](50) NULL,
	[Lic_Reqhrs] [real] NULL,
	[Lic_Notes] [ntext] NULL,
	[Lic_Rule] [ntext] NULL,
	[Lic_YrPeriod] [smallint] NULL,
	[Lic_MinHrsPerYear] [smallint] NULL,
	[MiscCboDesc] [nvarchar](50) NULL,
	[MiscDesc1] [nvarchar](50) NULL,
	[MiscDesc2] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaLicense_PK] PRIMARY KEY NONCLUSTERED 
(
	[Lic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicenseAlerts]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseAlerts](
	[lcsAl_Id] [tinyint] NOT NULL,
	[lcsAl_ModuleName] [varchar](100) NULL,
	[lcsAl_ModulePresent] [bit] NOT NULL,
	[lcsAl_AlertEnabled] [bit] NOT NULL,
	[lcsAl_Threshold] [smallint] NOT NULL,
	[lcsAl_ThresholdType] [tinyint] NOT NULL,
	[lcsAl_AlertFrequency] [tinyint] NOT NULL,
	[lcsAl_LastEmailSent] [datetime] NULL,
	[lcsAl_LastUpdated] [datetime] NOT NULL,
	[lcsAl_LastUpdatedBy] [varchar](50) NOT NULL,
	[lcsAl_ProStaffEmail] [varchar](250) NULL,
 CONSTRAINT [PK_LicenseAlerts] PRIMARY KEY CLUSTERED 
(
	[lcsAl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicenseValueList]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseValueList](
	[Lv_List_ID] [int] NOT NULL,
	[Lv_List_Lic_ID] [int] NOT NULL,
	[Lv_List_Code] [nvarchar](25) NULL,
	[Lv_List_Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_LicenseValueList] PRIMARY KEY NONCLUSTERED 
(
	[Lv_List_ID] ASC,
	[Lv_List_Lic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalErrorLog]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalErrorLog](
	[le_errorTime] [datetime] NOT NULL,
	[le_localLoginID] [char](20) NULL,
	[le_moduleName] [char](50) NULL,
	[le_functionName] [char](50) NULL,
	[le_errorNumber] [int] NULL,
	[le_errorMessage] [varchar](1000) NULL,
	[le_numberOfOpenForms] [real] NULL,
	[le_numberOfOpenReport] [real] NULL,
	[le_currentForm] [char](50) NULL,
	[le_currentControl] [char](50) NULL,
	[le_currentDirectory] [char](50) NULL,
	[le_freeMemory] [char](10) NULL,
 CONSTRAINT [PK_LocalErrorLog] PRIMARY KEY NONCLUSTERED 
(
	[le_errorTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[loc_ID] [int] NOT NULL,
	[loc_order] [smallint] NULL,
	[loc_name] [nvarchar](35) NOT NULL,
	[loc_notes] [ntext] NULL,
	[loc_active] [bit] NOT NULL,
 CONSTRAINT [aaaaaLocation_PK] PRIMARY KEY NONCLUSTERED 
(
	[loc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_History]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_History](
	[Login_Id] [int] IDENTITY(1,1) NOT NULL,
	[Login_UserNm] [varchar](20) NOT NULL,
	[Login_IpAdrs] [varchar](50) NOT NULL,
	[Login_Time] [datetime] NOT NULL,
	[Login_success] [bit] NOT NULL,
	[LogoutTime] [datetime] NULL,
	[Manual_Logout] [bit] NOT NULL,
	[Login_WebSesnId] [varchar](20) NULL,
	[Login_RptSesnId] [varchar](20) NULL,
 CONSTRAINT [PK_Log_History] PRIMARY KEY NONCLUSTERED 
(
	[Login_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginType]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginType](
	[Login_Id] [smallint] NOT NULL,
	[Login_Order] [int] NOT NULL,
	[Login_Desc] [varchar](50) NOT NULL,
	[Login_Notes] [varchar](250) NULL,
 CONSTRAINT [PK_LoginType] PRIMARY KEY CLUSTERED 
(
	[Login_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_LoginType_Desc] UNIQUE NONCLUSTERED 
(
	[Login_Desc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_LoginType_order] UNIQUE NONCLUSTERED 
(
	[Login_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManageAlerts]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManageAlerts](
	[AlertObj_ID] [tinyint] NOT NULL,
	[AlertObj_index] [tinyint] NOT NULL,
	[AlertObj_Name] [varchar](64) NOT NULL,
	[AlertObj_priority] [tinyint] NOT NULL,
	[AlertObj_isEnabled] [bit] NOT NULL,
	[AlertObj_bufferSize] [smallint] NOT NULL,
	[AlertObj_histPeriod] [smallint] NOT NULL,
 CONSTRAINT [PK_ManageAlerts] PRIMARY KEY CLUSTERED 
(
	[AlertObj_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ManageAlerts_Unique_Index] UNIQUE NONCLUSTERED 
(
	[AlertObj_index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManagementTeam]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagementTeam](
	[mtm_employeeID] [int] NOT NULL,
	[mtm_clientID] [int] NOT NULL,
	[mtm_titleID] [int] NOT NULL,
	[mtm_StartDate] [datetime] NULL,
	[mtm_BgtApproval] [bit] NOT NULL,
	[mtm_RevEvaluator] [bit] NOT NULL,
 CONSTRAINT [aaaaaManagementTeam_PK] PRIMARY KEY NONCLUSTERED 
(
	[mtm_employeeID] ASC,
	[mtm_clientID] ASC,
	[mtm_titleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarkRecordsByObj]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarkRecordsByObj](
	[mrk_Id] [int] IDENTITY(1,1) NOT NULL,
	[mrk_ssnId] [int] NOT NULL,
	[mrk_tblId] [tinyint] NOT NULL,
	[mrk_keyId] [int] NOT NULL,
 CONSTRAINT [PK_MarkRecordsByObj] PRIMARY KEY CLUSTERED 
(
	[mrk_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NonChr_Details]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonChr_Details](
	[Nc_DetailId] [int] IDENTITY(1,1) NOT NULL,
	[Nc_NonChrId] [int] NOT NULL,
	[Nc_Order] [smallint] NOT NULL,
	[Nc_ClientId] [int] NULL,
	[Nc_JobCode] [int] NULL,
	[Nc_BillCode] [int] NULL,
 CONSTRAINT [PK_NonChr_Details] PRIMARY KEY CLUSTERED 
(
	[Nc_DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_NonChr_Clt_Job_Bill] UNIQUE NONCLUSTERED 
(
	[Nc_ClientId] ASC,
	[Nc_JobCode] ASC,
	[Nc_BillCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NonChrgCategory]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonChrgCategory](
	[nonChrCat_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[nonChrCat_Order] [smallint] NOT NULL,
	[nonChrCat_Desc] [varchar](50) NOT NULL,
	[nonChrCat_Active] [bit] NOT NULL,
	[nonChrCat_Notes] [varchar](512) NULL,
 CONSTRAINT [PK_NonChrgCategory] PRIMARY KEY CLUSTERED 
(
	[nonChrCat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NonChrgTime]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonChrgTime](
	[NonChr_Id] [int] IDENTITY(1,1) NOT NULL,
	[NonChr_Order] [tinyint] NOT NULL,
	[NonChr_Desc] [varchar](50) NOT NULL,
	[NonChr_Active] [bit] NOT NULL,
	[NonChr_Notes] [varchar](512) NULL,
	[NonChr_modType] [tinyint] NOT NULL,
	[NonChr_CatId] [smallint] NULL,
 CONSTRAINT [PK_NonChrgTime] PRIMARY KEY CLUSTERED 
(
	[NonChr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgCombDetail]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrgCombDetail](
	[orgDet_Id] [int] IDENTITY(1,1) NOT NULL,
	[orgDet_GrpId] [int] NOT NULL,
	[orgDet_CodeType] [tinyint] NOT NULL,
	[orgDet_CodeVal] [int] NOT NULL,
 CONSTRAINT [PK_OrgCombDetail] PRIMARY KEY CLUSTERED 
(
	[orgDet_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgCombGroup]    Script Date: 9/10/2018 4:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrgCombGroup](
	[orGrp_Id] [int] IDENTITY(1,1) NOT NULL,
	[orGrp_Name] [varchar](75) NOT NULL,
	[orGrp_LvlXst] [bit] NOT NULL,
	[orGrp_DptXst] [bit] NOT NULL,
	[orGrp_DivXst] [bit] NOT NULL,
	[orGrp_LocXst] [bit] NOT NULL,
	[orGrp_RegXst] [bit] NOT NULL,
	[orGrp_Order] [tinyint] NOT NULL,
	[orGrp_Active] [bit] NOT NULL,
	[orGrp_LastUpdated] [datetime] NOT NULL,
	[orGrp_LastUpdatedBy] [varchar](30) NOT NULL,
 CONSTRAINT [PK_OrgCombGroup] PRIMARY KEY CLUSTERED 
(
	[orGrp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_OrgCombGroup_Name] UNIQUE NONCLUSTERED 
(
	[orGrp_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneType]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneType](
	[pht_ID] [int] NOT NULL,
	[pht_phoneType] [nvarchar](35) NOT NULL,
	[pht_desc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaPhoneType_PK] PRIMARY KEY NONCLUSTERED 
(
	[pht_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_Categorys]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_Categorys](
	[cat_reviewType_ID] [int] NOT NULL,
	[cat_Order] [int] NULL,
	[cat_Heading] [bit] NOT NULL,
	[cat_Description] [varchar](500) NULL,
	[cat_WeightedAvg] [real] NULL,
	[cat_Notes] [nvarchar](500) NULL,
	[cat_gradePresent] [bit] NULL,
	[cat_NotesPresent] [bit] NULL,
	[cat_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PR_Categorys] PRIMARY KEY CLUSTERED 
(
	[cat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_GradeCodes]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_GradeCodes](
	[grade_ID] [int] NOT NULL,
	[grade_Code] [nvarchar](5) NOT NULL,
	[grade_Value] [real] NOT NULL,
	[grade_Description] [varchar](250) NOT NULL,
	[GradeCode_Notes] [varchar](2000) NULL,
	[GradeType_ID] [int] NULL,
 CONSTRAINT [aaaaaPR_GradeCodes_PK] PRIMARY KEY NONCLUSTERED 
(
	[grade_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_GradesType]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_GradesType](
	[PRGrdType_ID] [int] NOT NULL,
	[PRGrdType_Desc] [varchar](100) NOT NULL,
	[PRGrdType_Notes] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRGrdType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_Misc_Reviews]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_Misc_Reviews](
	[Prms_ID] [int] NOT NULL,
	[Prms_InCompetency] [ntext] NULL,
	[Prms_Instruction] [ntext] NULL,
 CONSTRAINT [PK_PR_Misc_Reviews] PRIMARY KEY CLUSTERED 
(
	[Prms_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_ReviewApproval]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_ReviewApproval](
	[pra_userID] [int] NOT NULL,
	[pra_reviewID] [int] NOT NULL,
	[pra_AppLblID] [int] NOT NULL,
	[pra_titleID] [int] NOT NULL,
	[pra_createdBy] [varchar](50) NOT NULL,
	[pra_lastUpdatedBy] [varchar](50) NOT NULL,
	[pra_lastUpdatedTime] [datetime] NOT NULL,
	[pra_approvalDate] [datetime] NULL,
	[pra_ID] [int] IDENTITY(1,1) NOT NULL,
	[pra_Comments] [varchar](500) NULL,
	[pra_GrantAcsUserID] [int] NULL,
 CONSTRAINT [PR_ReviewApproval_PK] PRIMARY KEY CLUSTERED 
(
	[pra_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [PR_ReviewApproval_UniqueKey] UNIQUE NONCLUSTERED 
(
	[pra_userID] ASC,
	[pra_reviewID] ASC,
	[pra_AppLblID] ASC,
	[pra_titleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_ReviewGrades]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_ReviewGrades](
	[prg_reviewCategoryID] [int] NOT NULL,
	[prg_reviewGradeID] [int] NULL,
	[prg_Comments] [varchar](1024) NULL,
	[prg_ID] [int] IDENTITY(1,1) NOT NULL,
	[prg_RevAppID] [int] NOT NULL,
 CONSTRAINT [PK_PR_ReviewGrades] PRIMARY KEY CLUSTERED 
(
	[prg_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [PR_ReviewGrades_UniqueKey] UNIQUE NONCLUSTERED 
(
	[prg_RevAppID] ASC,
	[prg_reviewCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_Reviews]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_Reviews](
	[prs_ID] [int] NOT NULL,
	[prs_clientID] [int] NOT NULL,
	[prs_employeeID] [int] NOT NULL,
	[prs_reviewType] [int] NULL,
	[prs_jobCodeID] [int] NULL,
	[prs_gradeID] [int] NULL,
	[prs_evaluatorEmpID] [int] NULL,
	[prs_fromDateTime] [datetime] NULL,
	[prs_toDateTime] [datetime] NULL,
	[prs_dueDateTime] [datetime] NULL,
	[prs_completeDateTime] [datetime] NULL,
	[prs_discussDateTime] [datetime] NULL,
	[prs_reviewDateTime] [datetime] NULL,
	[prs_hours] [real] NULL,
	[prs_engagementHours] [real] NULL,
	[prs_status] [bit] NOT NULL,
	[prs_createDateTime] [datetime] NULL,
	[prs_lastUpdate] [datetime] NULL,
	[prs_lastUpdatedBy] [nvarchar](20) NULL,
	[prs_notes] [varchar](4000) NULL,
	[prs_effective] [bit] NOT NULL,
	[prs_timely] [bit] NOT NULL,
	[Misc1] [nvarchar](1000) NULL,
	[Misc2] [nvarchar](1000) NULL,
	[Misc3] [nvarchar](1000) NULL,
	[Misc4] [nvarchar](1000) NULL,
	[prs_createdBy] [varchar](50) NOT NULL,
 CONSTRAINT [aaaaaPR_Reviews_PK] PRIMARY KEY NONCLUSTERED 
(
	[prs_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_ReviewTypes]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_ReviewTypes](
	[prt_reviewType_ID] [int] NOT NULL,
	[prt_reviewType_levelID] [int] NOT NULL,
	[prt_reviewType_deptID] [int] NOT NULL,
	[prt_reviewType_date] [datetime] NULL,
	[prt_reviewType_desc] [nvarchar](50) NULL,
	[Prt_GradeTypeID] [int] NULL,
	[MiscDesc1] [nvarchar](200) NULL,
	[MiscDesc2] [nvarchar](200) NULL,
	[MiscDesc3] [nvarchar](200) NULL,
	[MiscDesc4] [nvarchar](200) NULL,
	[prt_isActive] [bit] NOT NULL,
	[prt_adminEdit] [bit] NOT NULL,
 CONSTRAINT [aaaaaPR_ReviewTypes_PK] PRIMARY KEY NONCLUSTERED 
(
	[prt_reviewType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectCode]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectCode](
	[prj_ID] [int] NOT NULL,
	[prj_code] [varchar](20) NOT NULL,
	[prj_desc] [nvarchar](50) NULL,
	[prj_Order] [int] NULL,
	[prj_isActive] [bit] NOT NULL,
	[prj_clientID] [int] NULL,
	[prj_Notes] [varchar](800) NULL,
	[prj_TypeId] [smallint] NULL,
	[prj_SaasImportAppId] [int] NULL,
	[prj_SaasImportId] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ProjectCode] PRIMARY KEY NONCLUSTERED 
(
	[prj_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectType]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectType](
	[prjType_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[prjType_Code] [varchar](25) NOT NULL,
	[prjType_Desc] [varchar](75) NULL,
	[prjType_Order] [smallint] NOT NULL,
	[prjType_Active] [bit] NOT NULL,
	[prjType_Created] [smalldatetime] NOT NULL,
	[prjType_UsedBgtTmp] [bit] NOT NULL,
 CONSTRAINT [PK_ProjectType] PRIMARY KEY CLUSTERED 
(
	[prjType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProStaffSecurity]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProStaffSecurity](
	[pss_userName] [nvarchar](20) NOT NULL,
	[pss_systemAccess] [smallint] NULL,
	[pss_employeeID] [int] NOT NULL,
	[pss_schedView] [int] NULL,
	[pss_schedWeeks] [smallint] NULL,
	[pss_empView] [smallint] NULL,
	[pss_empFilter] [nvarchar](50) NULL,
	[pss_cltView] [smallint] NULL,
	[pss_cltFilter] [nvarchar](50) NULL,
	[pss_lastUpdate] [datetime] NOT NULL,
	[pss_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[pss_group] [int] NULL,
	[pss_cltAdd] [bit] NULL,
	[pss_schedSelfEdit] [bit] NULL,
	[pss_viewSSN] [bit] NULL,
	[pss_EditPR] [smallint] NULL,
	[pss_EditBudgets] [int] NULL,
	[pss_userPassword] [nvarchar](20) NULL,
	[pss_schedDate] [datetime] NULL,
	[pss_schedCltView] [bit] NULL,
	[pss_ExchangeAccess] [bit] NOT NULL,
	[pss_DirActName] [varchar](64) NULL,
	[pss_ExchSvrID] [smallint] NULL,
	[pss_ExchAttempts] [smallint] NOT NULL,
	[pss_ConnAttempts] [smallint] NOT NULL,
	[pss_IsAutoLogon] [bit] NOT NULL,
	[pss_carryFilter] [tinyint] NOT NULL,
	[pss_sysAdmin] [bit] NOT NULL,
	[pss_PREmailRec] [bit] NOT NULL,
	[pss_TskEmailRec] [bit] NOT NULL,
	[pss_ViewCost] [tinyint] NOT NULL,
	[pss_editData] [bit] NOT NULL,
	[pss_reqSchChange] [bit] NOT NULL,
	[pss_ExchBlocked] [bit] NOT NULL,
	[pss_EmpEditFlt] [int] NULL,
	[pss_ManageFilters] [bit] NOT NULL,
 CONSTRAINT [ProStaffSecurity_PrimKey] PRIMARY KEY NONCLUSTERED 
(
	[pss_employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_PsUserName] UNIQUE NONCLUSTERED 
(
	[pss_userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProStaffSecurity_Backup]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProStaffSecurity_Backup](
	[pss_employeeID] [int] NOT NULL,
	[pss_schedView] [int] NULL,
	[pss_schedWeeks] [smallint] NULL,
	[pss_schedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRScan]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRScan](
	[prs_ID] [int] IDENTITY(1,1) NOT NULL,
	[prs_clientID] [int] NULL,
	[prs_employeeID] [int] NULL,
	[prs_reviewType] [int] NULL,
	[prs_jobCodeID] [int] NULL,
	[prs_evaluatorEmpID] [int] NULL,
	[prs_fromDateTime] [datetime] NULL,
	[prs_toDateTime] [datetime] NULL,
	[prs_dueDateTime] [datetime] NULL,
	[prs_hours] [real] NULL,
	[prs_createDateTime] [datetime] NOT NULL,
	[prs_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[FullName] [nvarchar](35) NULL,
	[ShortName] [nvarchar](50) NULL,
	[ReviewType] [nvarchar](50) NULL,
	[Evaluator] [nvarchar](35) NULL,
 CONSTRAINT [PK_aPRScan] PRIMARY KEY NONCLUSTERED 
(
	[prs_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PSLinkImportLog]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PSLinkImportLog](
	[ImpRun_Id] [int] IDENTITY(-2147483648,1) NOT NULL,
	[ImpRun_Date] [smalldatetime] NOT NULL,
	[ImpRun_PackageType] [tinyint] NOT NULL,
	[ImpRun_RecsAdded] [int] NOT NULL,
	[ImpRun_RecsUpdated] [int] NOT NULL,
	[ImpRun_RecsDeleted] [int] NOT NULL,
	[ImpRun_ErrMsg] [varchar](350) NULL,
	[ImpRun_ErrNum] [int] NULL,
 CONSTRAINT [PK_PSLinkImportLog] PRIMARY KEY CLUSTERED 
(
	[ImpRun_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recurrence]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recurrence](
	[Rec_headerID] [int] IDENTITY(2,2) NOT NULL,
	[Rec_clientID] [int] NOT NULL,
	[Rec_employeeID] [int] NULL,
	[Rec_employeeLevelID] [int] NOT NULL,
	[Rec_employeeDeptID] [int] NULL,
	[Rec_employeeDivisionID] [int] NULL,
	[Rec_employeeRegionID] [int] NULL,
	[Rec_employeeLocationID] [int] NULL,
	[Rec_jobCodeID] [int] NULL,
	[Rec_fromDateTime] [datetime] NOT NULL,
	[Rec_toDateTime] [datetime] NOT NULL,
	[Rec_hours] [real] NOT NULL,
	[Rec_conflictFlg] [bit] NOT NULL,
	[Rec_billRateTypeID] [int] NULL,
	[Rec_billRate] [money] NULL,
	[Rec_lastUpdate] [datetime] NOT NULL,
	[Rec_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[Rec_billingCodeID] [int] NULL,
	[Rec_AddMode] [int] NULL,
	[Rec_duration] [int] NULL,
	[Rec_WeekEndFlag] [bit] NULL,
	[Rec_job_LocId] [int] NULL,
	[Rec_Notes] [nvarchar](250) NULL,
	[Rec_Status] [int] NULL,
	[Rec_fromTime] [datetime] NULL,
	[Rec_toTime] [datetime] NULL,
	[Rec_AllDayEvent] [bit] NOT NULL,
	[RecrType] [int] NULL,
	[Rec_Frequency] [int] NULL,
	[Rec_RecDuration] [int] NULL,
	[Rec_Cycle] [int] NULL,
	[Rec_Occurrences] [int] NULL,
	[Rec_EndDate] [datetime] NULL,
	[Rec_monday] [datetime] NULL,
	[Rec_LocalTime] [bit] NULL,
 CONSTRAINT [Reccurence_PrimKey] PRIMARY KEY NONCLUSTERED 
(
	[Rec_headerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[reg_ID] [int] NOT NULL,
	[reg_order] [smallint] NULL,
	[reg_name] [nvarchar](35) NOT NULL,
	[reg_notes] [ntext] NULL,
	[reg_active] [bit] NOT NULL,
 CONSTRAINT [aaaaaRegion_PK] PRIMARY KEY NONCLUSTERED 
(
	[reg_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportParameter]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportParameter](
	[Param_Id] [int] IDENTITY(1,1) NOT NULL,
	[Param_UserId] [int] NOT NULL,
	[Param_RepId] [int] NOT NULL,
	[Param_RepData] [varchar](4096) NULL,
	[Param_LastUpdate] [datetime] NOT NULL,
 CONSTRAINT [PK_ReportParameter] PRIMARY KEY CLUSTERED 
(
	[Param_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportSections]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportSections](
	[RepCat_Id] [int] IDENTITY(1,1) NOT NULL,
	[RepCat_Name] [varchar](100) NOT NULL,
	[RepCat_StaffClt] [smallint] NOT NULL,
	[RepCat_Order] [int] NOT NULL,
	[RepCat_Active] [bit] NOT NULL,
	[RepCat_LastModified] [datetime] NOT NULL,
	[RepCat_LastModifiedBy] [varchar](50) NULL,
 CONSTRAINT [PK_ReportSections] PRIMARY KEY CLUSTERED 
(
	[RepCat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rev_AlertApprovalList]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rev_AlertApprovalList](
	[Rv_alertApprID] [int] IDENTITY(1,1) NOT NULL,
	[Rv_AlertID] [int] NOT NULL,
	[Rv_ApprovalID] [int] NOT NULL,
 CONSTRAINT [PK_Rev_AlertApprovalList] PRIMARY KEY NONCLUSTERED 
(
	[Rv_alertApprID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rev_AlertFrequency]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rev_AlertFrequency](
	[RvAl_FreqID] [int] IDENTITY(1,1) NOT NULL,
	[RvAl_RevTemplateID] [int] NOT NULL,
	[RvAl_AlertID] [int] NOT NULL,
	[Rev_DayOfWeek] [tinyint] NOT NULL,
	[Rev_TimeOfDay] [datetime] NOT NULL,
 CONSTRAINT [PK_Rev_AlertFrequency] PRIMARY KEY CLUSTERED 
(
	[RvAl_FreqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rev_Form_AuditTrial]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rev_Form_AuditTrial](
	[RvTemp_AuditID] [int] IDENTITY(1,1) NOT NULL,
	[Rv_TmpApprovalD] [int] NOT NULL,
	[Rv_LastUpdatedBy] [varchar](50) NOT NULL,
	[Rv_LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Rev_Form_AuditTrial] PRIMARY KEY CLUSTERED 
(
	[RvTemp_AuditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rev_FormApproval]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rev_FormApproval](
	[Rev_ApprovalID] [int] IDENTITY(1,1) NOT NULL,
	[Rev_AppRevID] [int] NOT NULL,
	[Rev_ApproverID] [int] NULL,
	[Rev_AppLabel] [varchar](100) NOT NULL,
	[Rev_TtlFirstCmpOper] [varchar](3) NULL,
	[Rev_TtlFirstCompID] [int] NULL,
	[Rev_TtlJoinOper] [varchar](3) NULL,
	[Rev_TtlSecCmpOper] [varchar](3) NULL,
	[Rev_TtlSecCompID] [int] NULL,
	[Rev_EmpFltJoinOper] [varchar](3) NULL,
	[Rev_EmpFIlter] [varchar](50) NULL,
	[Rev_IsAppScoring] [bit] NOT NULL,
	[Rev_IsAppComment] [bit] NOT NULL,
	[Rev_IsAppSign] [bit] NOT NULL,
	[Rev_DisplayOrder] [tinyint] NOT NULL,
	[Rev_IsTriggerCompleted] [bit] NOT NULL,
	[Rev_IsMandatory] [bit] NOT NULL,
	[Rev_IsAddApprover] [bit] NOT NULL,
	[Rev_IsShareRec] [tinyint] NOT NULL,
	[Rev_LastUpdatedBy] [varchar](50) NOT NULL,
	[Rev_Viewtype] [tinyint] NOT NULL,
 CONSTRAINT [PK_Rev_FormApproval] PRIMARY KEY CLUSTERED 
(
	[Rev_ApprovalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_AppForm_Order] UNIQUE NONCLUSTERED 
(
	[Rev_AppRevID] ASC,
	[Rev_DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_Form_AppLabel] UNIQUE NONCLUSTERED 
(
	[Rev_AppRevID] ASC,
	[Rev_AppLabel] ASC,
	[Rev_DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RevAlertTemplate]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RevAlertTemplate](
	[Rt_AlertID] [int] IDENTITY(1,1) NOT NULL,
	[Rt_AlertName] [varchar](100) NOT NULL,
	[Rt_AlertBeginNoDays] [smallint] NOT NULL,
	[Rt_AlertEndNoDays] [smallint] NOT NULL,
	[Rt_AlertWkFreq] [tinyint] NOT NULL,
	[Rt_AlertDesc] [varchar](500) NULL,
 CONSTRAINT [PK_RevTmpAlerts] PRIMARY KEY CLUSTERED 
(
	[Rt_AlertID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_AlertName] UNIQUE NONCLUSTERED 
(
	[Rt_AlertName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RouteEmpClt]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteEmpClt](
	[route_Id] [tinyint] NOT NULL,
	[route_Type] [tinyint] NOT NULL,
	[route_Module] [tinyint] NOT NULL,
	[route_LvlNot] [bit] NOT NULL,
	[route_LvlId] [varchar](250) NULL,
	[route_DptNot] [bit] NOT NULL,
	[route_DptId] [varchar](250) NULL,
	[route_DivNot] [bit] NOT NULL,
	[route_DivId] [varchar](250) NULL,
	[route_LocNot] [bit] NOT NULL,
	[route_LocId] [varchar](250) NULL,
	[route_RegNot] [bit] NOT NULL,
	[route_RegId] [varchar](250) NULL,
	[route_EmpCltFlt] [varchar](75) NULL,
	[route_PrjFlt] [varchar](75) NULL,
	[route_ModEnbl] [bit] NOT NULL,
	[route_LastUpdated] [datetime] NOT NULL,
	[route_LastUpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RouteEmpClt] PRIMARY KEY CLUSTERED 
(
	[route_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_RouteEmpClt] UNIQUE NONCLUSTERED 
(
	[route_Type] ASC,
	[route_Module] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaaSImportAppInfo]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaaSImportAppInfo](
	[saasimp_Id] [int] NOT NULL,
	[saasimp_AppName] [nvarchar](100) NOT NULL,
	[saasimp_AppNotes] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[sch_ID] [int] NOT NULL,
	[sch_headerID] [int] NULL,
	[sch_clientID] [int] NOT NULL,
	[sch_employeeID] [int] NULL,
	[sch_employeeLevelID] [int] NOT NULL,
	[sch_employeeDeptID] [int] NULL,
	[sch_employeeDivisionID] [int] NULL,
	[sch_employeeRegionID] [int] NULL,
	[sch_employeeLocationID] [int] NULL,
	[sch_jobCodeID] [int] NOT NULL,
	[sch_fromDateTime] [datetime] NOT NULL,
	[sch_toDateTime] [datetime] NOT NULL,
	[sch_hours] [real] NOT NULL,
	[sch_conflictFlg] [bit] NOT NULL,
	[sch_billRateTypeID] [int] NULL,
	[sch_billRate] [money] NULL,
	[sch_lastUpdate] [datetime] NOT NULL,
	[sch_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[sch_billingCodeID] [int] NULL,
	[sch_AddMode] [tinyint] NOT NULL,
	[sch_duration] [tinyint] NOT NULL,
	[sch_WeekEndFlag] [bit] NOT NULL,
	[sch_job_LocId] [int] NULL,
	[sch_Notes] [nvarchar](250) NULL,
	[sch_Status] [int] NULL,
	[sch_fromTime] [datetime] NULL,
	[sch_toTime] [datetime] NULL,
	[sch_AllDayEvent] [bit] NOT NULL,
	[sch_skillID] [int] NULL,
	[sch_CreateDateTime] [datetime] NOT NULL,
	[sch_CreatedBy] [varchar](50) NOT NULL,
	[sch_Monday] [datetime] NULL,
	[sch_ProjectId] [int] NULL,
	[sch_IsLocalTime] [bit] NOT NULL,
 CONSTRAINT [aaaaaSchedule_PK] PRIMARY KEY NONCLUSTERED 
(
	[sch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule_Archive]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule_Archive](
	[sch_ArchId] [int] IDENTITY(1,1) NOT NULL,
	[sch_ID] [int] NOT NULL,
	[sch_headerID] [int] NULL,
	[sch_clientID] [int] NOT NULL,
	[sch_employeeID] [int] NULL,
	[sch_employeeLevelID] [int] NOT NULL,
	[sch_employeeDeptID] [int] NULL,
	[sch_employeeDivisionID] [int] NULL,
	[sch_employeeRegionID] [int] NULL,
	[sch_employeeLocationID] [int] NULL,
	[sch_jobCodeID] [int] NULL,
	[sch_fromDateTime] [datetime] NULL,
	[sch_toDateTime] [datetime] NULL,
	[sch_hours] [real] NOT NULL,
	[sch_conflictFlg] [bit] NOT NULL,
	[sch_billRateTypeID] [int] NULL,
	[sch_billRate] [money] NULL,
	[sch_lastUpdate] [datetime] NOT NULL,
	[sch_lastUpdatedBy] [nvarchar](20) NOT NULL,
	[sch_billingCodeID] [int] NULL,
	[sch_AddMode] [int] NULL,
	[sch_duration] [int] NULL,
	[sch_WeekEndFlag] [bit] NULL,
	[sch_job_LocId] [int] NULL,
	[sch_Notes] [nvarchar](250) NULL,
	[sch_Status] [int] NULL,
	[sch_fromTime] [datetime] NULL,
	[sch_toTime] [datetime] NULL,
	[sch_AllDayEvent] [bit] NOT NULL,
	[sch_monday] [datetime] NULL,
	[sch_skillID] [int] NULL,
 CONSTRAINT [Schedule_Archive_PK] PRIMARY KEY NONCLUSTERED 
(
	[sch_ArchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchFltColor]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchFltColor](
	[aptClr_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[aptClr_GrpId] [smallint] NOT NULL,
	[aptClr_CltFltId] [int] NULL,
	[aptClr_JoinAnd] [tinyint] NOT NULL,
	[aptClr_SchFltId] [int] NULL,
	[aptClr_Order] [smallint] NOT NULL,
	[aptClr_Color] [varchar](20) NOT NULL,
	[aptClr_Created] [datetime] NOT NULL,
	[aptClr_CreatedBy] [varchar](20) NOT NULL,
	[aptClr_LastUpdated] [datetime] NOT NULL,
	[aptClr_LastUpdatedBy] [varchar](20) NOT NULL,
	[aptClr_DepFldLastChg] [datetime] NOT NULL,
	[aptClr_InActiveAsOf] [datetime] NULL,
 CONSTRAINT [PK_SchFltColor] PRIMARY KEY CLUSTERED 
(
	[aptClr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_SchFltColor_Order] UNIQUE NONCLUSTERED 
(
	[aptClr_GrpId] ASC,
	[aptClr_Color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchFltGroup]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchFltGroup](
	[aptGrp_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[aptGrp_Module] [tinyint] NOT NULL,
	[aptGrp_Name] [varchar](50) NOT NULL,
	[aptGrp_EmpFltId] [int] NOT NULL,
	[aptGrp_Order] [smallint] NOT NULL,
	[aptGrp_Active] [bit] NOT NULL,
	[aptGrp_Created] [datetime] NOT NULL,
	[aptGrp_CreatedBy] [varchar](20) NOT NULL,
	[aptGrp_LastUpdated] [datetime] NOT NULL,
	[aptGrp_LastUpdatedBy] [varchar](20) NOT NULL,
	[aptGrp_DataFltId] [int] NULL,
 CONSTRAINT [PK_SchFltGroup] PRIMARY KEY CLUSTERED 
(
	[aptGrp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_SchFltGroup_Name] UNIQUE NONCLUSTERED 
(
	[aptGrp_Module] ASC,
	[aptGrp_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_SchFltGroup_Order] UNIQUE NONCLUSTERED 
(
	[aptGrp_Module] ASC,
	[aptGrp_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchRestrict]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchRestrict](
	[SchRst_Id] [int] IDENTITY(1,1) NOT NULL,
	[SchRst_Order] [smallint] NOT NULL,
	[SchRst_EmpId] [int] NOT NULL,
	[SchRst_ClientId] [int] NULL,
	[SchRst_CltFltId] [int] NULL,
	[SchRst_JobId] [int] NULL,
	[SchRst_BillId] [int] NULL,
	[SchRst_Start] [smalldatetime] NULL,
	[SchRst_End] [smalldatetime] NULL,
	[SchRst_Notes] [varchar](300) NULL,
	[SchRst_Active] [bit] NOT NULL,
	[SchRst_Created] [smalldatetime] NOT NULL,
	[SchRst_Updated] [smalldatetime] NOT NULL,
	[SchRst_UpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SchRestrict] PRIMARY KEY CLUSTERED 
(
	[SchRst_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchSource]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchSource](
	[link_Id] [int] IDENTITY(1,1) NOT NULL,
	[link_Type] [tinyint] NOT NULL,
	[link_SchId] [int] NOT NULL,
	[link_SrcId] [int] NOT NULL,
	[link_mode] [tinyint] NULL,
	[link_Created] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_SchSource] PRIMARY KEY CLUSTERED 
(
	[link_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_SchSource] UNIQUE NONCLUSTERED 
(
	[link_Type] ASC,
	[link_SchId] ASC,
	[link_SrcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenParameter]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenParameter](
	[Param_Id] [int] IDENTITY(1,1) NOT NULL,
	[Param_UserId] [int] NOT NULL,
	[Param_ScrId] [tinyint] NOT NULL,
	[Param_ScrData] [varchar](4096) NULL,
	[Param_LastUpdate] [datetime] NOT NULL,
	[Param_VarId] [int] NULL,
	[Param_Name] [varchar](100) NULL,
 CONSTRAINT [PK_ScreenParameter] PRIMARY KEY CLUSTERED 
(
	[Param_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_ScreenParameter_Data] UNIQUE NONCLUSTERED 
(
	[Param_UserId] ASC,
	[Param_ScrId] ASC,
	[Param_VarId] ASC,
	[Param_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenTable]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenTable](
	[screen_Id] [tinyint] NOT NULL,
	[screen_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ScreenTable] PRIMARY KEY CLUSTERED 
(
	[screen_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecRepFavorites]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecRepFavorites](
	[FavRep_ID] [int] IDENTITY(1,1) NOT NULL,
	[FavRep_UserID] [int] NOT NULL,
	[Fav_ReportID] [int] NOT NULL,
	[Fav_RepAlias] [varchar](150) NOT NULL,
 CONSTRAINT [PK_SecRepFavorites] PRIMARY KEY CLUSTERED 
(
	[FavRep_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_User_Rpt] UNIQUE NONCLUSTERED 
(
	[FavRep_UserID] ASC,
	[Fav_ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityInfo]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityInfo](
	[sec_question] [varchar](100) NOT NULL,
	[sec_answer] [varchar](100) NOT NULL,
	[sec_userFirstName] [varchar](50) NOT NULL,
	[sec_userLastName] [varchar](50) NOT NULL,
	[sec_pssUserID] [int] NOT NULL,
	[sec_pssuserEmail] [varchar](100) NULL,
	[sec_LastUpdate] [datetime] NOT NULL,
	[sec_LastUpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SecurityInfo] PRIMARY KEY CLUSTERED 
(
	[sec_pssUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityMainformTable]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityMainformTable](
	[UnqID] [int] IDENTITY(1,1) NOT NULL,
	[MainFormNumber] [nvarchar](50) NULL,
	[MainFormName] [nvarchar](50) NULL,
	[UserLevel] [nvarchar](15) NULL,
 CONSTRAINT [PK_SecurityMainformTable] PRIMARY KEY CLUSTERED 
(
	[UnqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityReportDisplay]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityReportDisplay](
	[UnqID] [int] IDENTITY(1,1) NOT NULL,
	[ReportNumber] [int] NULL,
	[SecUserGroup] [smallint] NULL,
	[secEmpView] [smallint] NULL,
	[secCltView] [smallint] NULL,
	[secScdView] [smallint] NULL,
 CONSTRAINT [PK_SecurityReportDisplay] PRIMARY KEY CLUSTERED 
(
	[UnqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityReportTab]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityReportTab](
	[ReportNum] [int] NOT NULL,
	[ReportName] [nvarchar](100) NULL,
	[ContainModule] [smallint] NULL,
	[SourceRef] [varchar](150) NULL,
	[CategoryNumber] [varchar](3) NOT NULL,
	[Report_ID] [int] IDENTITY(1,1) NOT NULL,
	[Admin_IsPageEnabled] [bit] NOT NULL,
	[Sch_IsPageEnabled] [bit] NOT NULL,
	[Mgr_IsPageEnabled] [bit] NOT NULL,
	[Staff_IsPageEnabled] [bit] NOT NULL,
	[Description] [varchar](500) NULL,
	[SectionId] [int] NULL,
	[Mgr_LevelAccess] [int] NULL,
 CONSTRAINT [PKey_SecurityReportTab] PRIMARY KEY CLUSTERED 
(
	[Report_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_ReportCatNum] UNIQUE NONCLUSTERED 
(
	[ReportNum] ASC,
	[CategoryNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecuritySubformTab]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecuritySubformTab](
	[UnqID] [int] IDENTITY(1,1) NOT NULL,
	[MainFormNumber] [nvarchar](50) NULL,
	[SubFormNumber] [nvarchar](50) NULL,
	[SubFormName] [nvarchar](50) NULL,
	[UserLevel] [nvarchar](30) NULL,
	[SourceRef] [varchar](150) NULL,
	[IsPageEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_SecuritySubformTab] PRIMARY KEY CLUSTERED 
(
	[UnqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionKey]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionKey](
	[Sesn_Id] [int] IDENTITY(1,1) NOT NULL,
	[Sesn_Created] [datetime] NOT NULL,
 CONSTRAINT [PK_SessionKey] PRIMARY KEY CLUSTERED 
(
	[Sesn_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[shf_ID] [int] NOT NULL,
	[shf_desc] [nvarchar](50) NOT NULL,
	[shf_start] [datetime] NOT NULL,
	[shf_end] [datetime] NOT NULL,
	[shf_hours] [real] NOT NULL,
	[shf_notes] [ntext] NULL,
 CONSTRAINT [aaaaaShift_PK] PRIMARY KEY NONCLUSTERED 
(
	[shf_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShowTimeAs]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowTimeAs](
	[ShowTime_ID] [smallint] NOT NULL,
	[ShowTime_Desc] [varchar](20) NOT NULL,
	[ShowTime_Notes] [varchar](50) NULL,
	[ShowTime_Order] [smallint] NOT NULL,
 CONSTRAINT [PK_ShowTimeAs] PRIMARY KEY CLUSTERED 
(
	[ShowTime_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[skl_ID] [int] NOT NULL,
	[skl_desc] [nvarchar](50) NOT NULL,
	[skl_notes] [ntext] NULL,
	[skl_order] [int] NOT NULL,
	[skl_active] [bit] NOT NULL,
 CONSTRAINT [aaaaaSkill_PK] PRIMARY KEY NONCLUSTERED 
(
	[skl_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillCategory]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillCategory](
	[sklCat_Id] [int] IDENTITY(1,1) NOT NULL,
	[sklCat_Code] [varchar](50) NOT NULL,
	[sklCat_Desc] [varchar](150) NULL,
	[sklCat_Order] [smallint] NOT NULL,
	[sklCat_Active] [smalldatetime] NULL,
	[sklCat_Created] [smalldatetime] NOT NULL,
	[sklCat_CreatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SkillCategory] PRIMARY KEY CLUSTERED 
(
	[sklCat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillCategoryDepend]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillCategoryDepend](
	[sbCatDpd_Id] [int] IDENTITY(1,1) NOT NULL,
	[sbCatDpd_CatId] [int] NOT NULL,
	[sbCatDpd_SubCatId] [int] NOT NULL,
	[sbCatDpd_SkillId] [int] NULL,
	[sbCatDpd_Created] [smalldatetime] NOT NULL,
	[sbCatDpd_CreatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SkillCategoryDepend] PRIMARY KEY CLUSTERED 
(
	[sbCatDpd_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillLevel]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillLevel](
	[sklLvl_Id] [smallint] IDENTITY(0,1) NOT NULL,
	[sklLvl_Name] [varchar](50) NOT NULL,
	[sklLvl_Desc] [varchar](100) NULL,
	[sklLvl_Order] [smallint] NOT NULL,
	[sklLvl_Created] [smalldatetime] NOT NULL,
	[sklLvl_CreateBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SkillLevel] PRIMARY KEY CLUSTERED 
(
	[sklLvl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillSubCategory]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillSubCategory](
	[sklSubCat_Id] [int] IDENTITY(1,1) NOT NULL,
	[sklSubCat_Code] [varchar](125) NOT NULL,
	[sklSubCat_Desc] [varchar](150) NULL,
	[sklSubCat_Order] [smallint] NOT NULL,
	[sklSubCat_Active] [smalldatetime] NULL,
	[sklSubCat_Created] [smalldatetime] NOT NULL,
	[sklSubCat_CreatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SkillSubCategory] PRIMARY KEY CLUSTERED 
(
	[sklSubCat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillSubCategoryDepend]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillSubCategoryDepend](
	[sbSubCatDpd_SubCatId] [int] NOT NULL,
	[sbSubCatDpd_SkillId] [int] NULL,
	[sbSubCatDpd_Created] [smalldatetime] NOT NULL,
	[sbSubCatDpd_CreatedBy] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Utilization]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Utilization](
	[Util_Id] [int] IDENTITY(1,1) NOT NULL,
	[Util_SrcType] [tinyint] NOT NULL,
	[Util_SrcId] [int] NOT NULL,
	[Util_RecType] [tinyint] NOT NULL,
	[Util_StartDate] [datetime] NOT NULL,
	[Util_EndDate] [datetime] NOT NULL,
	[Util_NonChrType] [int] NOT NULL,
	[Util_NonChrHrs] [real] NOT NULL,
 CONSTRAINT [PK_Staff_Utilization] PRIMARY KEY CLUSTERED 
(
	[Util_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffOrg1]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffOrg1](
	[org1_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[org1_Name] [varchar](50) NOT NULL,
	[org1_Desc] [varchar](100) NULL,
	[org1_Order] [smallint] NOT NULL,
	[org1_Active] [bit] NOT NULL,
	[org1_LastUpdated] [datetime] NOT NULL,
	[org1_LastUpdatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StaffOrg1] PRIMARY KEY CLUSTERED 
(
	[org1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_StaffOrg1] UNIQUE NONCLUSTERED 
(
	[org1_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffOrg2]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffOrg2](
	[org2_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[org2_Name] [varchar](50) NOT NULL,
	[org2_Desc] [varchar](100) NULL,
	[org2_Order] [smallint] NOT NULL,
	[org2_Active] [bit] NOT NULL,
	[org2_LastUpdated] [datetime] NOT NULL,
	[org2_LastUpdatedBy] [varchar](50) NOT NULL,
	[org2_LnkLvlId] [int] NULL,
 CONSTRAINT [PK_StaffOrg2] PRIMARY KEY CLUSTERED 
(
	[org2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_StaffOrg2] UNIQUE NONCLUSTERED 
(
	[org2_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateCodes]    Script Date: 9/10/2018 4:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateCodes](
	[StateCode] [nvarchar](2) NOT NULL,
	[StateDescription] [nvarchar](30) NULL,
 CONSTRAINT [aaaaaStateCodes_PK] PRIMARY KEY NONCLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableID]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableID](
	[tab_tableName] [nvarchar](31) NOT NULL,
	[tab_lastID] [int] NULL,
	[tab_idName] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaTableID_PK] PRIMARY KEY NONCLUSTERED 
(
	[tab_tableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task_Difficulty]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task_Difficulty](
	[diff_Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[diff_Desc] [varchar](50) NOT NULL,
	[diff_Order] [tinyint] NOT NULL,
	[diff_Active] [bit] NOT NULL,
 CONSTRAINT [PK_Task_Difficulty] PRIMARY KEY CLUSTERED 
(
	[diff_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskBatchEdit]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskBatchEdit](
	[TskBat_ID] [int] NOT NULL,
	[TskBat_CltID] [int] NULL,
	[TskBat_EmpID] [int] NULL,
	[TskBat_JobID] [int] NULL,
	[TskBat_DueDate] [datetime] NULL,
	[TskBat_FromDate] [datetime] NULL,
	[TskBat_ToDate] [datetime] NULL,
	[TskBat_hours] [real] NULL,
	[TskBat_LvlID] [int] NULL,
	[TskBat_DptID] [int] NULL,
	[TskBat_DivID] [int] NULL,
	[TskBat_Applied] [bit] NULL,
	[TskBat_Priority] [smallint] NULL,
	[TskBat_Notes] [varchar](4000) NULL,
	[TskBat_workHourType] [int] NULL,
	[TskBat_Duration] [int] NULL,
	[TskBat_AddMode] [int] NULL,
	[TskBat_WeekEndFlg] [bit] NULL,
	[TskBat_billingCodeID] [int] NULL,
	[TskBat_jobLocation] [int] NULL,
	[TskBat_CltSource] [bit] NULL,
	[TskBat_EmpName] [varchar](40) NULL,
	[TskBat_CltName] [varchar](50) NULL,
	[TskBat_Level] [varchar](50) NULL,
	[TskBat_Dept] [varchar](50) NULL,
	[TskBat_Div] [varchar](50) NULL,
	[TskBat_JobCode] [varchar](50) NULL,
	[TskBat_Owner] [varchar](50) NOT NULL,
	[TskBat_EditFlag] [bit] NULL,
	[TskBat_LocID] [int] NULL,
	[TskBat_RegID] [int] NULL,
	[TskBat_StatusID] [int] NULL,
	[TskBat_SkillID] [int] NULL,
	[TskBat_SchedulerID] [int] NULL,
	[TskBat_ProjectId] [int] NULL,
	[TskBat_ProjectCode] [varchar](100) NULL,
 CONSTRAINT [PK_TaskBatchEdit] PRIMARY KEY CLUSTERED 
(
	[TskBat_ID] ASC,
	[TskBat_Owner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskList]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskList](
	[TaskID] [int] NOT NULL,
	[Task_CltID] [int] NULL,
	[Task_EmpID] [int] NULL,
	[Task_JobID] [int] NULL,
	[Task_DueDate] [datetime] NULL,
	[Task_FromDate] [datetime] NULL,
	[Task_ToDate] [datetime] NULL,
	[Task_hours] [real] NULL,
	[Task_LvlID] [int] NULL,
	[Task_DptID] [int] NULL,
	[Task_DivID] [int] NULL,
	[Task_Applied] [bit] NULL,
	[Task_Priority] [smallint] NULL,
	[Task_Notes] [nvarchar](1000) NULL,
	[Task_LastUpdated] [datetime] NOT NULL,
	[Task_LastUpdatedBy] [varchar](50) NOT NULL,
	[Task_workHourType] [int] NULL,
	[Task_Duration] [int] NULL,
	[Task_AddMode] [int] NULL,
	[Task_WeekEndFlg] [bit] NULL,
	[Task_billingCodeID] [int] NULL,
	[Task_jobLocation] [int] NULL,
	[Task_CltSource] [bit] NOT NULL,
	[Task_LocID] [int] NULL,
	[Task_RegID] [int] NULL,
	[Task_CreatedBy] [varchar](50) NOT NULL,
	[Task_Created] [datetime] NOT NULL,
	[Task_StatusID] [int] NULL,
	[Task_SchedulerID] [int] NULL,
	[Task_SkillID] [int] NULL,
	[Task_SchReqID] [int] NULL,
	[Task_SchReqMode] [tinyint] NOT NULL,
	[Task_OrgSchChg] [bit] NOT NULL,
	[Task_ProjectId] [int] NULL,
 CONSTRAINT [PK_TaskList] PRIMARY KEY NONCLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCriteriaFields]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCriteriaFields](
	[SourceName] [nvarchar](50) NOT NULL,
	[FieldName] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[IncludeField] [bit] NOT NULL,
	[ShowValues] [bit] NOT NULL,
	[DataType] [nvarchar](1) NULL,
	[SQLShowVal] [nvarchar](800) NULL,
	[SQLGetSortVal] [nvarchar](800) NULL,
	[SQLGetPrintVal] [nvarchar](800) NULL,
	[SQLGetMgmtID] [nvarchar](800) NULL,
	[fldAlias] [varchar](2) NULL,
 CONSTRAINT [aaaaatblCriteriaFields_PK] PRIMARY KEY NONCLUSTERED 
(
	[SourceName] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamTitle]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamTitle](
	[ttl_ID] [int] NOT NULL,
	[ttl_name] [nvarchar](35) NOT NULL,
	[ttl_desc] [nvarchar](50) NULL,
	[ttl_order] [int] NULL,
 CONSTRAINT [aaaaaTeamTitle_PK] PRIMARY KEY NONCLUSTERED 
(
	[ttl_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_StoreId]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_StoreId](
	[SsnTmp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Sesn_KeyId] [int] NOT NULL,
	[Sesn_VarId] [int] NOT NULL,
	[Sesn_VarType] [tinyint] NULL,
	[Sesn_HltClr] [varchar](15) NULL,
 CONSTRAINT [PK_Temp_StoreId] PRIMARY KEY CLUSTERED 
(
	[SsnTmp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unq_Temp_StoreId_VarId] UNIQUE NONCLUSTERED 
(
	[Sesn_KeyId] ASC,
	[Sesn_VarId] ASC,
	[Sesn_VarType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempuserlist]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempuserlist](
	[userid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackerTemplate]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackerTemplate](
	[ttd_ID] [int] NOT NULL,
	[ttd_dateDefinitionID] [int] NULL,
	[ttd_description] [nvarchar](50) NULL,
	[ttd_recurrenceType] [smallint] NULL,
	[ttd_taskTypeID] [int] NULL,
	[ttd_yearEndType] [nvarchar](50) NULL,
	[ttd_duedateMonths] [int] NULL,
	[ttd_duedateDays] [int] NULL,
	[ttd_startWorkMonths] [int] NULL,
	[ttd_startWorkDays] [int] NULL,
	[ttd_extension1Months] [int] NULL,
	[ttd_extension1Days] [int] NULL,
	[ttd_extension2Months] [int] NULL,
	[ttd_extension2Days] [int] NULL,
	[ttd_extension3Months] [int] NULL,
	[ttd_extension3Days] [int] NULL,
	[ttd_notes] [ntext] NULL,
	[ttd_lastUpdate] [datetime] NULL,
	[ttd_lastUpdatedBy] [nvarchar](20) NULL,
 CONSTRAINT [PK_TrackerTemplate] PRIMARY KEY CLUSTERED 
(
	[ttd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackerTemplateGroupDetail]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackerTemplateGroupDetail](
	[ttd_templateGroupID] [int] NOT NULL,
	[ttd_templateID] [int] NOT NULL,
 CONSTRAINT [PK_TrackerTemplateGroupDetail] PRIMARY KEY CLUSTERED 
(
	[ttd_templateGroupID] ASC,
	[ttd_templateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackerTemplateGroups]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackerTemplateGroups](
	[ttg_ID] [int] NOT NULL,
	[ttg_desc] [nvarchar](50) NULL,
	[ttg_notes] [ntext] NULL,
 CONSTRAINT [PK_TrackerTemplateGroups] PRIMARY KEY CLUSTERED 
(
	[ttg_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackerTemplateTasks]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackerTemplateTasks](
	[ttt_ID] [int] NOT NULL,
	[ttt_templateID] [int] NULL,
	[ttt_dateDefinitionID] [int] NULL,
	[ttt_jobCodeID] [int] NULL,
	[ttt_description] [nvarchar](50) NULL,
	[ttt_taskOrder] [int] NULL,
	[ttt_taskType] [int] NULL,
	[ttt_taskDayOfWeek] [int] NULL,
	[ttt_taskHours] [real] NULL,
	[ttt_taskLevelID] [int] NULL,
	[ttt_taskDepartmentlID] [int] NULL,
	[ttt_taskDivisionID] [int] NULL,
	[ttt_taskRegionID] [int] NULL,
	[ttt_taskLocationID] [int] NULL,
	[ttt_taskMonthsAfterPriorTask] [int] NULL,
	[ttt_taskDaysAfterPriorTask] [int] NULL,
	[ttt_lastUpdate] [datetime] NULL,
	[ttt_lastUpdatedBy] [nvarchar](20) NULL,
 CONSTRAINT [PK_TrackerTemplateTasks] PRIMARY KEY CLUSTERED 
(
	[ttt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactHeader]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactHeader](
	[trx_Id] [int] IDENTITY(1,1) NOT NULL,
	[trx_ObjEvent] [smallint] NOT NULL,
	[trx_ObjId] [int] NOT NULL,
	[trx_Count] [int] NULL,
	[trx_StartTime] [datetime] NOT NULL,
	[trx_EndTime] [datetime] NULL,
	[trx_Message] [varchar](500) NULL,
	[trx_Created] [datetime] NOT NULL,
	[trx_CreatedBy] [varchar](50) NOT NULL,
	[trx_OperData] [varchar](6000) NULL,
 CONSTRAINT [PK_TransactHeader] PRIMARY KEY CLUSTERED 
(
	[trx_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionLog]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionLog](
	[trl_scheduleID] [int] NOT NULL,
	[trl_updateDateTime] [datetime] NOT NULL,
	[trl_updatedBy] [nvarchar](20) NOT NULL,
	[trl_oldClientID] [int] NULL,
	[trl_oldEmployeeID] [int] NULL,
	[trl_oldEmployeeLevelID] [int] NULL,
	[trl_oldEmployeeDeptID] [int] NULL,
	[trl_oldEmployeeDivID] [int] NULL,
	[trl_oldJobCodeID] [int] NULL,
	[trl_oldfromDateTime] [datetime] NULL,
	[trl_oldtoDateTime] [datetime] NULL,
	[trl_oldhours] [real] NULL,
	[trl_oldconflictFlg] [bit] NULL,
	[trl_newClientID] [int] NULL,
	[trl_newEmployeeID] [int] NULL,
	[trl_newEmployeeLevelID] [int] NULL,
	[trl_newEmployeeDeptID] [int] NULL,
	[trl_newEmployeeDivID] [int] NULL,
	[trl_newJobCodeID] [int] NULL,
	[trl_newfromDateTime] [datetime] NULL,
	[trl_newtoDateTime] [datetime] NULL,
	[trl_newhours] [real] NULL,
	[trl_newconflictFlg] [bit] NOT NULL,
	[trl_Action] [nvarchar](50) NULL,
	[trl_notes] [ntext] NULL,
	[trl_trackSchId] [int] NULL,
	[trl_Status] [int] NULL,
	[trl_SkillId] [int] NULL,
	[trl_ProjectId] [int] NULL,
	[trl_LocalTime] [bit] NULL,
 CONSTRAINT [aaaaaTransactionLog_PK] PRIMARY KEY NONCLUSTERED 
(
	[trl_scheduleID] ASC,
	[trl_updateDateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactObjects]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactObjects](
	[trxObj_Id] [smallint] NOT NULL,
	[trxObj_Desc] [varchar](50) NOT NULL,
	[trxObj_Notes] [varchar](250) NULL,
	[trxObj_HistPrsrv] [smallint] NOT NULL,
 CONSTRAINT [PK_TransactObjects] PRIMARY KEY CLUSTERED 
(
	[trxObj_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactObjEvents]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactObjEvents](
	[trxEvt_Id] [smallint] NOT NULL,
	[trxEvt_ObjId] [smallint] NOT NULL,
	[trxEvt_Desc] [varchar](75) NOT NULL,
	[trxEvt_Notes] [varchar](150) NULL,
 CONSTRAINT [PK_TransactObjEvents] PRIMARY KEY CLUSTERED 
(
	[trxEvt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_ExchSecurity]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_ExchSecurity](
	[eSec_UserId] [int] NOT NULL,
	[eSec_AptFormat] [bit] NOT NULL,
	[eSec_GMTDiff] [smallint] NULL,
	[eSec_TskIsAcs] [bit] NOT NULL,
	[eSec_TskIsBlocked] [bit] NOT NULL,
	[eSec_TskConAtmpts] [smallint] NOT NULL,
	[eSec_LastUpdated] [datetime] NOT NULL,
	[eSec_LastUpdatedBy] [varchar](20) NOT NULL,
	[eSec_MbxFolder] [tinyint] NOT NULL,
	[eSec_IsWriteBack] [tinyint] NULL,
	[eSec_CustomCal] [varchar](50) NULL,
	[eSec_CustomTsk] [varchar](50) NULL,
 CONSTRAINT [PK_Task_ExchSecurity] PRIMARY KEY CLUSTERED 
(
	[eSec_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkArea]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkArea](
	[WrkArea_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[WrkArea_Order] [smallint] NOT NULL,
	[WrkArea_Active] [bit] NOT NULL,
	[WrkArea_Name] [varchar](50) NOT NULL,
	[WrkArea_Notes] [varchar](256) NULL,
	[WrkArea_Updated] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_WorkArea] PRIMARY KEY CLUSTERED 
(
	[WrkArea_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkHours]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkHours](
	[whr_startDate] [datetime] NOT NULL,
	[whr_weekHours] [real] NOT NULL,
	[whr_ID] [int] NOT NULL,
	[whr_fteweekHours] [int] NOT NULL,
 CONSTRAINT [aaaaaWorkHours_PK] PRIMARY KEY NONCLUSTERED 
(
	[whr_ID] ASC,
	[whr_startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkHoursType]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkHoursType](
	[wht_ID] [int] NOT NULL,
	[wht_Desc] [nvarchar](50) NULL,
	[wht_Notes] [ntext] NULL,
	[wht_Active] [bit] NOT NULL,
	[wht_Order] [int] NOT NULL,
 CONSTRAINT [aaaaaWorkHoursType_PK] PRIMARY KEY NONCLUSTERED 
(
	[wht_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZipCodeEmailLog]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipCodeEmailLog](
	[ZipID] [int] IDENTITY(1,1) NOT NULL,
	[ZipCode] [varchar](20) NOT NULL,
	[Country] [varchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[EmailProcessed] [datetime] NULL,
 CONSTRAINT [PK_ZipCodeEmailLog] PRIMARY KEY CLUSTERED 
(
	[ZipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zipCodes]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zipCodes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zipCode] [varchar](20) NOT NULL,
	[cityName] [varchar](50) NULL,
	[county] [varchar](50) NULL,
	[stateName] [varchar](50) NULL,
	[stateAbrv] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
 CONSTRAINT [PK_zipCodes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zipCodesMaster]    Script Date: 9/10/2018 4:53:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zipCodesMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zipCode] [varchar](20) NOT NULL,
	[cityName] [varchar](50) NULL,
	[county] [varchar](50) NULL,
	[stateName] [varchar](50) NULL,
	[stateAbrv] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
 CONSTRAINT [PK_zipCodesMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
