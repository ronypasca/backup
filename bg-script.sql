USE [BIGTRONS]
GO
/****** Object:  Table [dbo].[CMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMenuAction](
	[MenuID] [varchar](50) NOT NULL,
	[ActionID] [varchar](30) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_CMenuAction] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC,
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMenuObject](
	[MenuID] [varchar](50) NOT NULL,
	[ObjectID] [varchar](30) NOT NULL,
	[ObjectDesc] [varchar](30) NOT NULL,
	[ObjectLongDesc] [varchar](255) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_CMenuObject] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC,
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBudgetPlanTemplateStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBudgetPlanTemplateStructure](
	[BudgetPlanTemplateID] [varchar](3) NOT NULL,
	[ItemID] [varchar](20) NOT NULL,
	[Version] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[ParentItemID] [varchar](20) NULL,
	[ParentVersion] [int] NULL,
	[ParentSequence] [int] NULL,
	[IsDefault] [bit] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DBudgetPlanTemplateStructure] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanTemplateID] ASC,
	[ItemID] ASC,
	[Version] ASC,
	[Sequence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBudgetPlanVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBudgetPlanVersion](
	[BudgetPlanID] [varchar](20) NOT NULL,
	[BudgetPlanVersion] [int] NOT NULL,
	[Description] [varchar](40) NOT NULL,
	[Area] [decimal](10, 4) NOT NULL,
	[Unit] [decimal](10, 4) NOT NULL,
	[FeePercentage] [decimal](6, 2) NOT NULL,
	[StatusID] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DBudgetPlanVersion] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanID] ASC,
	[BudgetPlanVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBudgetPlanVersionAdditional]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBudgetPlanVersionAdditional](
	[BudgetPlanVersionAdditionalID] [varchar](32) NOT NULL,
	[BudgetPlanVersionVendorID] [varchar](32) NOT NULL,
	[ItemID] [varchar](20) NOT NULL,
	[Version] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[ParentItemID] [varchar](20) NULL,
	[ParentVersion] [int] NULL,
	[ParentSequence] [int] NULL,
	[Info] [varchar](1000) NOT NULL,
	[Volume] [decimal](8, 4) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DBudgetPlanVersionAdditional] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanVersionAdditionalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_DBudgetPlanVersionAdditional] UNIQUE NONCLUSTERED 
(
	[BudgetPlanVersionVendorID] ASC,
	[ItemID] ASC,
	[Version] ASC,
	[Sequence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBudgetPlanVersionAssignment]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBudgetPlanVersionAssignment](
	[BudgetPlanVersionStructureID] [varchar](32) NOT NULL,
	[VendorID] [varchar](10) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DBudgetPlanVersionAssignment_1] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanVersionStructureID] ASC,
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBudgetPlanVersionEntry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBudgetPlanVersionEntry](
	[BudgetPlanVersionVendorID] [varchar](32) NOT NULL,
	[BudgetPlanVersionStructureID] [varchar](32) NOT NULL,
	[Info] [varchar](1000) NOT NULL,
	[Volume] [decimal](8, 4) NULL,
	[MaterialAmount] [decimal](14, 4) NULL,
	[WageAmount] [decimal](14, 4) NULL,
	[MiscAmount] [decimal](14, 4) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DBudgetPlanVersionEntry_1] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanVersionVendorID] ASC,
	[BudgetPlanVersionStructureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBudgetPlanVersionPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBudgetPlanVersionPeriod](
	[BudgetPlanVersionPeriodID] [varchar](32) NOT NULL,
	[BudgetPlanID] [varchar](20) NOT NULL,
	[BudgetPlanVersion] [int] NOT NULL,
	[PeriodVersion] [int] NOT NULL,
	[BudgetPlanPeriodID] [varchar](2) NOT NULL,
	[StatusID] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DBudgetPlanVersionPeriod] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanVersionPeriodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_DBudgetPlanVersionPeriod] UNIQUE NONCLUSTERED 
(
	[BudgetPlanID] ASC,
	[BudgetPlanVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBudgetPlanVersionStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBudgetPlanVersionStructure](
	[BudgetPlanVersionStructureID] [varchar](32) NOT NULL,
	[BudgetPlanID] [varchar](20) NOT NULL,
	[BudgetPlanVersion] [int] NOT NULL,
	[ItemID] [varchar](20) NOT NULL,
	[Version] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[ParentItemID] [varchar](20) NULL,
	[ParentVersion] [int] NULL,
	[ParentSequence] [int] NULL,
	[ItemVersionChildID] [varchar](8) NULL,
	[Specification] [varchar](1000) NOT NULL,
	[Volume] [decimal](12, 4) NULL,
	[MaterialAmount] [decimal](14, 4) NULL,
	[WageAmount] [decimal](14, 4) NULL,
	[MiscAmount] [decimal](14, 4) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DBudgetPlanVersionStructure] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanVersionStructureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_DBudgetPlanVersionStructure] UNIQUE NONCLUSTERED 
(
	[BudgetPlanID] ASC,
	[BudgetPlanVersion] ASC,
	[ItemID] ASC,
	[Version] ASC,
	[Sequence] ASC,
	[ParentItemID] ASC,
	[ParentVersion] ASC,
	[ParentSequence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBudgetPlanVersionVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBudgetPlanVersionVendor](
	[BudgetPlanVersionVendorID] [varchar](32) NOT NULL,
	[BudgetPlanVersionPeriodID] [varchar](32) NOT NULL,
	[VendorID] [varchar](10) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[FeePercentage] [decimal](6, 4) NOT NULL,
	[StatusID] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DBudgetPlanVersionVendor_1] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanVersionVendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_DBudgetPlanVersionVendor] UNIQUE NONCLUSTERED 
(
	[BudgetPlanVersionPeriodID] ASC,
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemGroupParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemGroupParameter](
	[ItemGroupID] [varchar](3) NOT NULL,
	[ParameterID] [varchar](3) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemGroupParameter] PRIMARY KEY CLUSTERED 
(
	[ItemGroupID] ASC,
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemParameter](
	[ItemID] [varchar](20) NOT NULL,
	[ItemGroupID] [varchar](3) NOT NULL,
	[ParameterID] [varchar](3) NOT NULL,
	[Value] [varchar](100) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemParameter] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC,
	[ItemGroupID] ASC,
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemPrice]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemPrice](
	[ItemPriceID] [varchar](32) NOT NULL,
	[ItemID] [varchar](20) NOT NULL,
	[RegionID] [varchar](3) NOT NULL,
	[ProjectID] [varchar](4) NOT NULL,
	[ClusterID] [varchar](3) NOT NULL,
	[UnitTypeID] [varchar](5) NOT NULL,
	[PriceTypeID] [varchar](3) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemPrice] PRIMARY KEY CLUSTERED 
(
	[ItemPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_DItemPrice] UNIQUE NONCLUSTERED 
(
	[ItemID] ASC,
	[RegionID] ASC,
	[ProjectID] ASC,
	[ClusterID] ASC,
	[UnitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemPriceVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemPriceVendor](
	[ItemPriceID] [varchar](32) NOT NULL,
	[VendorID] [varchar](10) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemPriceVendor] PRIMARY KEY CLUSTERED 
(
	[ItemPriceID] ASC,
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemPriceVendorPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemPriceVendorPeriod](
	[ItemPriceID] [varchar](32) NOT NULL,
	[VendorID] [varchar](10) NOT NULL,
	[ValidFrom] [datetime2](7) NOT NULL,
	[ValidTo] [datetime2](7) NOT NULL,
	[CurrencyID] [varchar](3) NOT NULL,
	[Amount] [decimal](15, 4) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemPriceVendorPeriod] PRIMARY KEY CLUSTERED 
(
	[ItemPriceID] ASC,
	[VendorID] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemVersion](
	[ItemID] [varchar](20) NOT NULL,
	[Version] [int] NOT NULL,
	[VersionDesc] [varchar](100) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemVersion] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC,
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemVersionChild]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemVersionChild](
	[ItemVersionChildID] [varchar](8) NOT NULL,
	[ItemID] [varchar](20) NOT NULL,
	[Version] [int] NOT NULL,
	[ChildItemID] [varchar](20) NOT NULL,
	[ChildVersion] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemVersionChild] PRIMARY KEY CLUSTERED 
(
	[ItemVersionChildID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_DItemVersionChild] UNIQUE NONCLUSTERED 
(
	[ItemID] ASC,
	[Version] ASC,
	[ChildItemID] ASC,
	[ChildVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemVersionChildAlt]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemVersionChildAlt](
	[ItemVersionChildID] [varchar](8) NOT NULL,
	[ItemID] [varchar](20) NOT NULL,
	[Version] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemVersionChildAlt] PRIMARY KEY CLUSTERED 
(
	[ItemVersionChildID] ASC,
	[ItemID] ASC,
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DItemVersionChildFormula]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DItemVersionChildFormula](
	[ItemVersionChildID] [varchar](8) NOT NULL,
	[Coefficient] [decimal](7, 4) NOT NULL,
	[Formula] [varchar](1000) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DItemVersionChildFormula] PRIMARY KEY CLUSTERED 
(
	[ItemVersionChildID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DPackageList]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DPackageList](
	[PackageID] [varchar](20) NOT NULL,
	[BudgetPlanID] [varchar](20) NOT NULL,
	[BudgetPlanVersion] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DPackageList] PRIMARY KEY CLUSTERED 
(
	[PackageID] ASC,
	[BudgetPlanID] ASC,
	[BudgetPlanVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DRoleMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DRoleMenuAction](
	[RoleID] [varchar](8) NOT NULL,
	[MenuID] [varchar](50) NOT NULL,
	[ActionID] [varchar](30) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DRoleMenuAction] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[MenuID] ASC,
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DRoleMenuAction_temp]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DRoleMenuAction_temp](
	[RoleID] [varchar](8) NOT NULL,
	[MenuID] [varchar](50) NOT NULL,
	[ActionID] [varchar](30) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DRoleMenuAction_tempQA]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DRoleMenuAction_tempQA](
	[RoleID] [varchar](8) NOT NULL,
	[MenuID] [varchar](50) NOT NULL,
	[ActionID] [varchar](30) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DRoleMenuActionbackup]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DRoleMenuActionbackup](
	[RoleID] [varchar](8) NOT NULL,
	[MenuID] [varchar](50) NOT NULL,
	[ActionID] [varchar](30) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DRoleMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DRoleMenuObject](
	[RoleID] [varchar](8) NOT NULL,
	[MenuID] [varchar](50) NOT NULL,
	[ObjectID] [varchar](30) NOT NULL,
	[Value] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_DRoleMenuObject] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[MenuID] ASC,
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MBudgetPlanTemplate]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MBudgetPlanTemplate](
	[BudgetPlanTemplateID] [varchar](3) NOT NULL,
	[BudgetPlanTemplateDesc] [varchar](10) NOT NULL,
	[BudgetPlanTypeID] [varchar](3) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MBudgetPlanTemplate] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MBudgetPlanType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MBudgetPlanType](
	[BudgetPlanTypeID] [varchar](3) NOT NULL,
	[BudgetPlanTypeDesc] [varchar](40) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MBudgetPlanType] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MCluster]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MCluster](
	[ClusterID] [varchar](3) NOT NULL,
	[ClusterDesc] [varchar](20) NOT NULL,
	[ProjectID] [varchar](4) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MCluster] PRIMARY KEY CLUSTERED 
(
	[ClusterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MCompany]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MCompany](
	[CompanyID] [varchar](4) NOT NULL,
	[CompanyDesc] [varchar](50) NOT NULL,
	[CountryID] [varchar](3) NOT NULL,
	[City] [varchar](25) NOT NULL,
	[Street] [varchar](255) NOT NULL,
	[Postal] [varchar](6) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MCompany] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MCountry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MCountry](
	[CountryID] [varchar](3) NOT NULL,
	[CountryDesc] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MCountry] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MCurrency]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MCurrency](
	[CurrencyID] [varchar](3) NOT NULL,
	[CurrencyDesc] [varchar](40) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MCurrency] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MDivision]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MDivision](
	[DivisionID] [varchar](4) NOT NULL,
	[DivisionDesc] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MDivision] PRIMARY KEY CLUSTERED 
(
	[DivisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MItem]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MItem](
	[ItemID] [varchar](20) NOT NULL,
	[ItemDesc] [varchar](100) NOT NULL,
	[ItemGroupID] [varchar](3) NOT NULL,
	[UoMID] [varchar](3) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MItem] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MItemGroup]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MItemGroup](
	[ItemGroupID] [varchar](3) NOT NULL,
	[ItemGroupDesc] [varchar](50) NOT NULL,
	[ItemTypeID] [varchar](3) NOT NULL,
	[HasParameter] [bit] NOT NULL,
	[HasPrice] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MItemGroup] PRIMARY KEY CLUSTERED 
(
	[ItemGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MItemType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MItemType](
	[ItemTypeID] [varchar](3) NOT NULL,
	[ItemTypeDesc] [varchar](40) NOT NULL,
	[ItemTypeParentID] [varchar](3) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MItemType] PRIMARY KEY CLUSTERED 
(
	[ItemTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MLocation]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MLocation](
	[LocationID] [varchar](3) NOT NULL,
	[LocationDesc] [varchar](20) NOT NULL,
	[RegionID] [varchar](3) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MLocation] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MParameter](
	[ParameterID] [varchar](3) NOT NULL,
	[ParameterDesc] [varchar](40) NOT NULL,
	[DataType] [varchar](10) NOT NULL,
	[Length] [int] NOT NULL,
	[Precision] [int] NOT NULL,
	[Scale] [int] NOT NULL,
	[RefTable] [varchar](40) NOT NULL,
	[RefIDColumn] [varchar](40) NOT NULL,
	[RefDescColumn] [varchar](40) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MParameter] PRIMARY KEY CLUSTERED 
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MPriceType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MPriceType](
	[PriceTypeID] [varchar](3) NOT NULL,
	[PriceTypeDesc] [varchar](40) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MPriceType] PRIMARY KEY CLUSTERED 
(
	[PriceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MProject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MProject](
	[ProjectID] [varchar](4) NOT NULL,
	[ProjectDesc] [varchar](50) NOT NULL,
	[CompanyID] [varchar](4) NOT NULL,
	[DivisionID] [varchar](4) NOT NULL,
	[LocationID] [varchar](3) NOT NULL,
	[City] [varchar](25) NOT NULL,
	[Street] [varchar](255) NOT NULL,
	[Postal] [varchar](6) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MProject] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MRegion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MRegion](
	[RegionID] [varchar](3) NOT NULL,
	[RegionDesc] [varchar](20) NOT NULL,
	[CountryID] [varchar](3) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MRegion] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MRole]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MRole](
	[RoleID] [varchar](8) NOT NULL,
	[RoleDesc] [varchar](255) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MRole] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MStatus]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MStatus](
	[TableName] [varchar](80) NOT NULL,
	[StatusID] [int] NOT NULL,
	[StatusDesc] [varchar](20) NOT NULL,
	[Visible] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MStatus] PRIMARY KEY CLUSTERED 
(
	[TableName] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MUnitType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MUnitType](
	[UnitTypeID] [varchar](5) NOT NULL,
	[UnitTypeDesc] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MUnitType] PRIMARY KEY CLUSTERED 
(
	[UnitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MUoM]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MUoM](
	[UoMID] [varchar](3) NOT NULL,
	[UoMDesc] [varchar](25) NOT NULL,
	[DimensionID] [varchar](6) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MUoM] PRIMARY KEY CLUSTERED 
(
	[UoMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MUser]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MUser](
	[UserID] [nvarchar](20) NOT NULL,
	[RoleID] [varchar](8) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[VendorID] [varchar](10) NULL,
	[LastLogin] [datetime] NOT NULL,
	[HostIP] [nvarchar](40) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MVendor](
	[VendorID] [varchar](10) NOT NULL,
	[FirstName] [varchar](35) NOT NULL,
	[LastName] [varchar](35) NOT NULL,
	[VendorSubcategoryID] [varchar](4) NOT NULL,
	[City] [varchar](25) NOT NULL,
	[Street] [varchar](255) NOT NULL,
	[Postal] [varchar](6) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](128) NOT NULL,
	[IDNo] [varchar](20) NOT NULL,
	[NPWP] [varchar](20) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MVendor] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MVendorCategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MVendorCategory](
	[VendorCategoryID] [varchar](4) NOT NULL,
	[VendorCategoryDesc] [varchar](40) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MVendorCategory] PRIMARY KEY CLUSTERED 
(
	[VendorCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MVendorSubcategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MVendorSubcategory](
	[VendorSubcategoryID] [varchar](4) NOT NULL,
	[VendorSubcategoryDesc] [varchar](40) NOT NULL,
	[VendorCategoryID] [varchar](4) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MVendorSubcategory] PRIMARY KEY CLUSTERED 
(
	[VendorSubcategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MWBS]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MWBS](
	[WBSID] [varchar](100) NOT NULL,
	[WBSDesc] [varchar](100) NOT NULL,
	[ProjectID] [varchar](4) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_MWBS] PRIMARY KEY CLUSTERED 
(
	[WBSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[new_MProject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[new_MProject](
	[ProjectID] [varchar](4) NOT NULL,
	[ProjectDesc] [varchar](50) NOT NULL,
	[CompanyID] [varchar](4) NOT NULL,
	[DivisionID] [varchar](4) NOT NULL,
	[LocationID] [varchar](3) NOT NULL,
	[City] [varchar](25) NOT NULL,
	[Street] [varchar](255) NOT NULL,
	[Postal] [varchar](6) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAction](
	[ActionID] [varchar](30) NOT NULL,
	[ActionDesc] [varchar](30) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_SAction] PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBudgetPlanPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBudgetPlanPeriod](
	[BudgetPlanPeriodID] [varchar](2) NOT NULL,
	[BudgetPlanPeriodDesc] [varchar](40) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_SBudgetPlanPeriod] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanPeriodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SDimension]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SDimension](
	[DimensionID] [varchar](6) NOT NULL,
	[DimensionDesc] [varchar](40) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_SDimension] PRIMARY KEY CLUSTERED 
(
	[DimensionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMenu]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMenu](
	[MenuID] [varchar](50) NOT NULL,
	[MenuHierarchy] [varchar](20) NOT NULL,
	[MenuDesc] [varchar](100) NOT NULL,
	[MenuIcon] [varchar](100) NOT NULL,
	[MenuUrl] [varchar](100) NOT NULL,
	[MenuVisible] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_SMenu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SReport]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SReport](
	[ReportID] [varchar](20) NOT NULL,
	[ReportDesc] [varchar](50) NOT NULL,
	[ReportViewName] [varchar](100) NOT NULL,
	[ReportVisible] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_SReport] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBudgetPlan]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBudgetPlan](
	[BudgetPlanID] [varchar](20) NOT NULL,
	[BudgetPlanTemplateID] [varchar](3) NOT NULL,
	[ProjectID] [varchar](4) NOT NULL,
	[ClusterID] [varchar](3) NULL,
	[UnitTypeID] [varchar](5) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_TBudgetPlan] PRIMARY KEY CLUSTERED 
(
	[BudgetPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMPMUser]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMPMUser](
	[UserID] [nvarchar](20) NOT NULL,
	[RoleID] [varchar](8) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[VendorID] [varchar](10) NULL,
	[LastLogin] [datetime] NOT NULL,
	[HostIP] [nvarchar](40) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedHost] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMPSMenu]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMPSMenu](
	[MenuID] [varchar](50) NOT NULL,
	[MenuHierarchy] [varchar](20) NOT NULL,
	[MenuDesc] [varchar](100) NOT NULL,
	[MenuIcon] [varchar](100) NOT NULL,
	[MenuUrl] [varchar](100) NOT NULL,
	[MenuVisible] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_TEMPSMenu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEventLog]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEventLog](
	[LogID] [varchar](32) NOT NULL,
	[MenuID] [varchar](50) NOT NULL,
	[ActionID] [varchar](30) NOT NULL,
	[DataID] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_TEventLog] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TNumbering]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TNumbering](
	[Header] [varchar](3) NOT NULL,
	[Year] [varchar](4) NOT NULL,
	[Month] [varchar](2) NOT NULL,
	[CompanyID] [varchar](4) NOT NULL,
	[ProjectID] [varchar](4) NOT NULL,
	[LastNo] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_TNumbering] PRIMARY KEY CLUSTERED 
(
	[Header] ASC,
	[Year] ASC,
	[Month] ASC,
	[CompanyID] ASC,
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPackage]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPackage](
	[PackageID] [varchar](20) NOT NULL,
	[PackageDesc] [varchar](40) NOT NULL,
	[StatusID] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedHost] [varchar](50) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedHost] [varchar](50) NULL,
 CONSTRAINT [PK_TPackage] PRIMARY KEY CLUSTERED 
(
	[PackageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UConfig]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UConfig](
	[Key1] [nvarchar](50) NOT NULL,
	[Key2] [nvarchar](50) NOT NULL,
	[Key3] [nvarchar](50) NOT NULL,
	[Key4] [nvarchar](50) NOT NULL,
	[Desc1] [nvarchar](1000) NOT NULL,
	[Desc2] [nvarchar](1000) NULL,
	[Desc3] [nvarchar](1000) NULL,
	[Desc4] [nvarchar](1000) NULL,
 CONSTRAINT [PK_UConfig] PRIMARY KEY CLUSTERED 
(
	[Key1] ASC,
	[Key2] ASC,
	[Key3] ASC,
	[Key4] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CMenuAction]  WITH CHECK ADD  CONSTRAINT [FK_CMenuAction_SAction] FOREIGN KEY([ActionID])
REFERENCES [dbo].[SAction] ([ActionID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CMenuAction] CHECK CONSTRAINT [FK_CMenuAction_SAction]
GO
ALTER TABLE [dbo].[CMenuAction]  WITH CHECK ADD  CONSTRAINT [FK_CMenuAction_SMenu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[SMenu] ([MenuID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CMenuAction] CHECK CONSTRAINT [FK_CMenuAction_SMenu]
GO
ALTER TABLE [dbo].[CMenuObject]  WITH CHECK ADD  CONSTRAINT [FK_CMenuObject_SMenu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[SMenu] ([MenuID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CMenuObject] CHECK CONSTRAINT [FK_CMenuObject_SMenu]
GO
ALTER TABLE [dbo].[DBudgetPlanTemplateStructure]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanTemplateStructure_DItemVersion] FOREIGN KEY([ItemID], [Version])
REFERENCES [dbo].[DItemVersion] ([ItemID], [Version])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanTemplateStructure] CHECK CONSTRAINT [FK_DBudgetPlanTemplateStructure_DItemVersion]
GO
ALTER TABLE [dbo].[DBudgetPlanTemplateStructure]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanTemplateStructure_MBudgetPlanTemplate] FOREIGN KEY([BudgetPlanTemplateID])
REFERENCES [dbo].[MBudgetPlanTemplate] ([BudgetPlanTemplateID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanTemplateStructure] CHECK CONSTRAINT [FK_DBudgetPlanTemplateStructure_MBudgetPlanTemplate]
GO
ALTER TABLE [dbo].[DBudgetPlanVersion]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersion_TBudgetPlan] FOREIGN KEY([BudgetPlanID])
REFERENCES [dbo].[TBudgetPlan] ([BudgetPlanID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersion] CHECK CONSTRAINT [FK_DBudgetPlanVersion_TBudgetPlan]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionAdditional]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionAdditional_DBudgetPlanVersionVendor] FOREIGN KEY([BudgetPlanVersionVendorID])
REFERENCES [dbo].[DBudgetPlanVersionVendor] ([BudgetPlanVersionVendorID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionAdditional] CHECK CONSTRAINT [FK_DBudgetPlanVersionAdditional_DBudgetPlanVersionVendor]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionAdditional]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionAdditional_DItemVersion] FOREIGN KEY([ItemID], [Version])
REFERENCES [dbo].[DItemVersion] ([ItemID], [Version])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionAdditional] CHECK CONSTRAINT [FK_DBudgetPlanVersionAdditional_DItemVersion]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionAssignment]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionAssignment_DBudgetPlanVersionStructure] FOREIGN KEY([BudgetPlanVersionStructureID])
REFERENCES [dbo].[DBudgetPlanVersionStructure] ([BudgetPlanVersionStructureID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionAssignment] CHECK CONSTRAINT [FK_DBudgetPlanVersionAssignment_DBudgetPlanVersionStructure]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionAssignment]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionAssignment_MVendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[MVendor] ([VendorID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionAssignment] CHECK CONSTRAINT [FK_DBudgetPlanVersionAssignment_MVendor]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionEntry]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionEntry_DBudgetPlanVersionVendor] FOREIGN KEY([BudgetPlanVersionVendorID])
REFERENCES [dbo].[DBudgetPlanVersionVendor] ([BudgetPlanVersionVendorID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionEntry] CHECK CONSTRAINT [FK_DBudgetPlanVersionEntry_DBudgetPlanVersionVendor]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionPeriod]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionPeriod_DBudgetPlanVersion] FOREIGN KEY([BudgetPlanID], [BudgetPlanVersion])
REFERENCES [dbo].[DBudgetPlanVersion] ([BudgetPlanID], [BudgetPlanVersion])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionPeriod] CHECK CONSTRAINT [FK_DBudgetPlanVersionPeriod_DBudgetPlanVersion]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionPeriod]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionPeriod_SBudgetPlanPeriod] FOREIGN KEY([BudgetPlanPeriodID])
REFERENCES [dbo].[SBudgetPlanPeriod] ([BudgetPlanPeriodID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionPeriod] CHECK CONSTRAINT [FK_DBudgetPlanVersionPeriod_SBudgetPlanPeriod]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionVendor]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionVendor_DBudgetPlanVersionPeriod] FOREIGN KEY([BudgetPlanVersionPeriodID])
REFERENCES [dbo].[DBudgetPlanVersionPeriod] ([BudgetPlanVersionPeriodID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionVendor] CHECK CONSTRAINT [FK_DBudgetPlanVersionVendor_DBudgetPlanVersionPeriod]
GO
ALTER TABLE [dbo].[DBudgetPlanVersionVendor]  WITH CHECK ADD  CONSTRAINT [FK_DBudgetPlanVersionVendor_MVendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[MVendor] ([VendorID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DBudgetPlanVersionVendor] CHECK CONSTRAINT [FK_DBudgetPlanVersionVendor_MVendor]
GO
ALTER TABLE [dbo].[DItemGroupParameter]  WITH CHECK ADD  CONSTRAINT [FK_DItemGroupParameter_MItemGroup] FOREIGN KEY([ItemGroupID])
REFERENCES [dbo].[MItemGroup] ([ItemGroupID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DItemGroupParameter] CHECK CONSTRAINT [FK_DItemGroupParameter_MItemGroup]
GO
ALTER TABLE [dbo].[DItemGroupParameter]  WITH CHECK ADD  CONSTRAINT [FK_DItemGroupParameter_MParameter] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[MParameter] ([ParameterID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DItemGroupParameter] CHECK CONSTRAINT [FK_DItemGroupParameter_MParameter]
GO
ALTER TABLE [dbo].[DItemParameter]  WITH CHECK ADD  CONSTRAINT [FK_DItemParameter_MItem] FOREIGN KEY([ItemID])
REFERENCES [dbo].[MItem] ([ItemID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DItemParameter] CHECK CONSTRAINT [FK_DItemParameter_MItem]
GO
ALTER TABLE [dbo].[DItemPrice]  WITH CHECK ADD  CONSTRAINT [FK_DItemPrice_MItem] FOREIGN KEY([ItemID])
REFERENCES [dbo].[MItem] ([ItemID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DItemPrice] CHECK CONSTRAINT [FK_DItemPrice_MItem]
GO
ALTER TABLE [dbo].[DItemPrice]  WITH CHECK ADD  CONSTRAINT [FK_DItemPrice_MPriceType] FOREIGN KEY([PriceTypeID])
REFERENCES [dbo].[MPriceType] ([PriceTypeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DItemPrice] CHECK CONSTRAINT [FK_DItemPrice_MPriceType]
GO
ALTER TABLE [dbo].[DItemPriceVendor]  WITH CHECK ADD  CONSTRAINT [FK_DItemPriceVendor_DItemPrice] FOREIGN KEY([ItemPriceID])
REFERENCES [dbo].[DItemPrice] ([ItemPriceID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DItemPriceVendor] CHECK CONSTRAINT [FK_DItemPriceVendor_DItemPrice]
GO
ALTER TABLE [dbo].[DItemPriceVendorPeriod]  WITH CHECK ADD  CONSTRAINT [FK_DItemPriceVendorPeriod_DItemPriceVendor] FOREIGN KEY([ItemPriceID], [VendorID])
REFERENCES [dbo].[DItemPriceVendor] ([ItemPriceID], [VendorID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DItemPriceVendorPeriod] CHECK CONSTRAINT [FK_DItemPriceVendorPeriod_DItemPriceVendor]
GO
ALTER TABLE [dbo].[DItemPriceVendorPeriod]  WITH CHECK ADD  CONSTRAINT [FK_DItemPriceVendorPeriod_MCurrency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[MCurrency] ([CurrencyID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DItemPriceVendorPeriod] CHECK CONSTRAINT [FK_DItemPriceVendorPeriod_MCurrency]
GO
ALTER TABLE [dbo].[DItemVersion]  WITH CHECK ADD  CONSTRAINT [FK_DItemVersion_MItem] FOREIGN KEY([ItemID])
REFERENCES [dbo].[MItem] ([ItemID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DItemVersion] CHECK CONSTRAINT [FK_DItemVersion_MItem]
GO
ALTER TABLE [dbo].[DItemVersionChild]  WITH CHECK ADD  CONSTRAINT [FK_DItemVersionChild_DItemVersion] FOREIGN KEY([ItemID], [Version])
REFERENCES [dbo].[DItemVersion] ([ItemID], [Version])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DItemVersionChild] CHECK CONSTRAINT [FK_DItemVersionChild_DItemVersion]
GO
ALTER TABLE [dbo].[DItemVersionChildAlt]  WITH CHECK ADD  CONSTRAINT [FK_DItemVersionChildAlt_DItemVersionChild] FOREIGN KEY([ItemVersionChildID])
REFERENCES [dbo].[DItemVersionChild] ([ItemVersionChildID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DItemVersionChildAlt] CHECK CONSTRAINT [FK_DItemVersionChildAlt_DItemVersionChild]
GO
ALTER TABLE [dbo].[DItemVersionChildFormula]  WITH CHECK ADD  CONSTRAINT [FK_DItemVersionChildFormula_DItemVersionChild] FOREIGN KEY([ItemVersionChildID])
REFERENCES [dbo].[DItemVersionChild] ([ItemVersionChildID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DItemVersionChildFormula] CHECK CONSTRAINT [FK_DItemVersionChildFormula_DItemVersionChild]
GO
ALTER TABLE [dbo].[DPackageList]  WITH CHECK ADD  CONSTRAINT [FK_DPackageList_DBudgetPlanVersion] FOREIGN KEY([BudgetPlanID], [BudgetPlanVersion])
REFERENCES [dbo].[DBudgetPlanVersion] ([BudgetPlanID], [BudgetPlanVersion])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DPackageList] CHECK CONSTRAINT [FK_DPackageList_DBudgetPlanVersion]
GO
ALTER TABLE [dbo].[DPackageList]  WITH CHECK ADD  CONSTRAINT [FK_DPackageList_TPackage] FOREIGN KEY([PackageID])
REFERENCES [dbo].[TPackage] ([PackageID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DPackageList] CHECK CONSTRAINT [FK_DPackageList_TPackage]
GO
ALTER TABLE [dbo].[DRoleMenuAction]  WITH CHECK ADD  CONSTRAINT [FK_DRoleMenuAction_CMenuAction] FOREIGN KEY([MenuID], [ActionID])
REFERENCES [dbo].[CMenuAction] ([MenuID], [ActionID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DRoleMenuAction] CHECK CONSTRAINT [FK_DRoleMenuAction_CMenuAction]
GO
ALTER TABLE [dbo].[DRoleMenuAction]  WITH CHECK ADD  CONSTRAINT [FK_DRoleMenuAction_MRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[MRole] ([RoleID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DRoleMenuAction] CHECK CONSTRAINT [FK_DRoleMenuAction_MRole]
GO
ALTER TABLE [dbo].[DRoleMenuObject]  WITH CHECK ADD  CONSTRAINT [FK_DRoleMenuObject_CMenuObject] FOREIGN KEY([MenuID], [ObjectID])
REFERENCES [dbo].[CMenuObject] ([MenuID], [ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DRoleMenuObject] CHECK CONSTRAINT [FK_DRoleMenuObject_CMenuObject]
GO
ALTER TABLE [dbo].[DRoleMenuObject]  WITH CHECK ADD  CONSTRAINT [FK_DRoleMenuObject_MRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[MRole] ([RoleID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DRoleMenuObject] CHECK CONSTRAINT [FK_DRoleMenuObject_MRole]
GO
ALTER TABLE [dbo].[MBudgetPlanTemplate]  WITH CHECK ADD  CONSTRAINT [FK_MBudgetPlanTemplate_MBudgetPlanType] FOREIGN KEY([BudgetPlanTypeID])
REFERENCES [dbo].[MBudgetPlanType] ([BudgetPlanTypeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MBudgetPlanTemplate] CHECK CONSTRAINT [FK_MBudgetPlanTemplate_MBudgetPlanType]
GO
ALTER TABLE [dbo].[MCluster]  WITH CHECK ADD  CONSTRAINT [FK_MCluster_MProject] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[MProject] ([ProjectID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MCluster] CHECK CONSTRAINT [FK_MCluster_MProject]
GO
ALTER TABLE [dbo].[MCompany]  WITH CHECK ADD  CONSTRAINT [FK_MCompany_MCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[MCountry] ([CountryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MCompany] CHECK CONSTRAINT [FK_MCompany_MCountry]
GO
ALTER TABLE [dbo].[MItem]  WITH CHECK ADD  CONSTRAINT [FK_MItem_MItemGroup] FOREIGN KEY([ItemGroupID])
REFERENCES [dbo].[MItemGroup] ([ItemGroupID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MItem] CHECK CONSTRAINT [FK_MItem_MItemGroup]
GO
ALTER TABLE [dbo].[MItem]  WITH CHECK ADD  CONSTRAINT [FK_MItem_MUoM] FOREIGN KEY([UoMID])
REFERENCES [dbo].[MUoM] ([UoMID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MItem] CHECK CONSTRAINT [FK_MItem_MUoM]
GO
ALTER TABLE [dbo].[MItemGroup]  WITH CHECK ADD  CONSTRAINT [FK_MItemGroup_MItemType] FOREIGN KEY([ItemTypeID])
REFERENCES [dbo].[MItemType] ([ItemTypeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MItemGroup] CHECK CONSTRAINT [FK_MItemGroup_MItemType]
GO
ALTER TABLE [dbo].[MItemType]  WITH CHECK ADD  CONSTRAINT [FK_MItemType_MItemType] FOREIGN KEY([ItemTypeParentID])
REFERENCES [dbo].[MItemType] ([ItemTypeID])
GO
ALTER TABLE [dbo].[MItemType] CHECK CONSTRAINT [FK_MItemType_MItemType]
GO
ALTER TABLE [dbo].[MLocation]  WITH CHECK ADD  CONSTRAINT [FK_MLocation_MRegion] FOREIGN KEY([RegionID])
REFERENCES [dbo].[MRegion] ([RegionID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MLocation] CHECK CONSTRAINT [FK_MLocation_MRegion]
GO
ALTER TABLE [dbo].[MProject]  WITH CHECK ADD  CONSTRAINT [FK_MProject_MCompany] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[MCompany] ([CompanyID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MProject] CHECK CONSTRAINT [FK_MProject_MCompany]
GO
ALTER TABLE [dbo].[MProject]  WITH CHECK ADD  CONSTRAINT [FK_MProject_MDivision] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[MDivision] ([DivisionID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MProject] CHECK CONSTRAINT [FK_MProject_MDivision]
GO
ALTER TABLE [dbo].[MRegion]  WITH CHECK ADD  CONSTRAINT [FK_MRegion_MCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[MCountry] ([CountryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MRegion] CHECK CONSTRAINT [FK_MRegion_MCountry]
GO
ALTER TABLE [dbo].[MUoM]  WITH CHECK ADD  CONSTRAINT [FK_MUoM_SDimension] FOREIGN KEY([DimensionID])
REFERENCES [dbo].[SDimension] ([DimensionID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MUoM] CHECK CONSTRAINT [FK_MUoM_SDimension]
GO
ALTER TABLE [dbo].[MUser]  WITH CHECK ADD  CONSTRAINT [FK_MUser_MRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[MRole] ([RoleID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MUser] CHECK CONSTRAINT [FK_MUser_MRole]
GO
ALTER TABLE [dbo].[MUser]  WITH CHECK ADD  CONSTRAINT [FK_MUser_MVendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[MVendor] ([VendorID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MUser] CHECK CONSTRAINT [FK_MUser_MVendor]
GO
ALTER TABLE [dbo].[MVendor]  WITH CHECK ADD  CONSTRAINT [FK_MVendor_MVendorSubcategory] FOREIGN KEY([VendorSubcategoryID])
REFERENCES [dbo].[MVendorSubcategory] ([VendorSubcategoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MVendor] CHECK CONSTRAINT [FK_MVendor_MVendorSubcategory]
GO
ALTER TABLE [dbo].[MVendorSubcategory]  WITH CHECK ADD  CONSTRAINT [FK_MVendorSubcategory_MVendorCategory] FOREIGN KEY([VendorCategoryID])
REFERENCES [dbo].[MVendorCategory] ([VendorCategoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MVendorSubcategory] CHECK CONSTRAINT [FK_MVendorSubcategory_MVendorCategory]
GO
ALTER TABLE [dbo].[MWBS]  WITH CHECK ADD  CONSTRAINT [FK_MWBS_MProject] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[MProject] ([ProjectID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MWBS] CHECK CONSTRAINT [FK_MWBS_MProject]
GO
ALTER TABLE [dbo].[TBudgetPlan]  WITH CHECK ADD  CONSTRAINT [FK_TBudgetPlan_MBudgetPlanTemplate] FOREIGN KEY([BudgetPlanTemplateID])
REFERENCES [dbo].[MBudgetPlanTemplate] ([BudgetPlanTemplateID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBudgetPlan] CHECK CONSTRAINT [FK_TBudgetPlan_MBudgetPlanTemplate]
GO
ALTER TABLE [dbo].[TBudgetPlan]  WITH CHECK ADD  CONSTRAINT [FK_TBudgetPlan_MProject] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[MProject] ([ProjectID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBudgetPlan] CHECK CONSTRAINT [FK_TBudgetPlan_MProject]
GO
ALTER TABLE [dbo].[TBudgetPlan]  WITH CHECK ADD  CONSTRAINT [FK_TBudgetPlan_MUnitType] FOREIGN KEY([UnitTypeID])
REFERENCES [dbo].[MUnitType] ([UnitTypeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBudgetPlan] CHECK CONSTRAINT [FK_TBudgetPlan_MUnitType]
GO
ALTER TABLE [dbo].[TEventLog]  WITH CHECK ADD  CONSTRAINT [FK_TEventLog_SAction] FOREIGN KEY([ActionID])
REFERENCES [dbo].[SAction] ([ActionID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TEventLog] CHECK CONSTRAINT [FK_TEventLog_SAction]
GO
ALTER TABLE [dbo].[TEventLog]  WITH CHECK ADD  CONSTRAINT [FK_TEventLog_SMenu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[SMenu] ([MenuID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TEventLog] CHECK CONSTRAINT [FK_TEventLog_SMenu]
GO
ALTER TABLE [dbo].[TNumbering]  WITH NOCHECK ADD  CONSTRAINT [FK_TNumbering_MCompany] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[MCompany] ([CompanyID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[TNumbering] NOCHECK CONSTRAINT [FK_TNumbering_MCompany]
GO
ALTER TABLE [dbo].[TNumbering]  WITH NOCHECK ADD  CONSTRAINT [FK_TNumbering_MProject] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[MProject] ([ProjectID])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[TNumbering] NOCHECK CONSTRAINT [FK_TNumbering_MProject]
GO
/****** Object:  StoredProcedure [dbo].[del_CMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_CMenuAction]
(
	@in_MenuID VARCHAR (50),
	@in_ActionID VARCHAR (30),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[CMenuAction]
	WHERE
		MenuID = @in_MenuID AND
		ActionID = @in_ActionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_CMenuAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_CMenuAction_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[CMenuAction] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_CMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_CMenuObject]
(
	@in_MenuID VARCHAR (50),
	@in_ObjectID VARCHAR (30),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[CMenuObject]
	WHERE
		MenuID = @in_MenuID AND
		ObjectID = @in_ObjectID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_CMenuObject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_CMenuObject_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[CMenuObject] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanTemplateStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanTemplateStructure]
(
	@in_BudgetPlanTemplateID VARCHAR (3),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_Sequence INT,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DBudgetPlanTemplateStructure]
	WHERE
		BudgetPlanTemplateID = @in_BudgetPlanTemplateID AND
		ItemID = @in_ItemID AND
		Version = @in_Version AND
		Sequence = @in_Sequence
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanTemplateStructure_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanTemplateStructure_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DBudgetPlanTemplateStructure] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersion]
(
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DBudgetPlanVersion]
	WHERE
		BudgetPlanID = @in_BudgetPlanID AND
		BudgetPlanVersion = @in_BudgetPlanVersion
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersion_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DBudgetPlanVersion] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionAdditional]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.1
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Thursday, 08 Jun 2017, 01:48 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionAdditional]
(
	@in_BudgetPlanVersionAdditionalID VARCHAR (32),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DBudgetPlanVersionAdditional]
	WHERE
		BudgetPlanVersionAdditionalID = @in_BudgetPlanVersionAdditionalID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionAdditional_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Thursday, 08 Jun 2017, 01:48 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionAdditional_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DBudgetPlanVersionAdditional] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionAssignment]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.1
-- Created			: Tjhai, Thursday, 19 Oct 2017, 09:03 AM
-- Last Modified	: Tjhai, Thursday, 19 Oct 2017, 09:07 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionAssignment]
(
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DBudgetPlanVersionAssignment]
	WHERE
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID AND
		VendorID = @in_VendorID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionAssignment_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Thursday, 19 Oct 2017, 09:03 AM
-- Last Modified	: Tjhai, Thursday, 19 Oct 2017, 09:07 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionAssignment_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DBudgetPlanVersionAssignment] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionEntry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Monday, 29 May 2017, 04:16 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionEntry]
(
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_VendorID VARCHAR (10),
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DBudgetPlanVersionEntry]
	WHERE
		BudgetPlanID = @in_BudgetPlanID AND
		BudgetPlanVersion = @in_BudgetPlanVersion AND
		VendorID = @in_VendorID AND
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionEntry_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Monday, 29 May 2017, 04:16 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionEntry_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DBudgetPlanVersionEntry] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:21 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:21 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionPeriod]
(
	@in_BudgetPlanVersionPeriodID VARCHAR (32),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DBudgetPlanVersionPeriod]
	WHERE
		BudgetPlanVersionPeriodID = @in_BudgetPlanVersionPeriodID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:21 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:21 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionPeriod_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DBudgetPlanVersionPeriod] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.4
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 10:12 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionStructure]
(
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DBudgetPlanVersionStructure]
	WHERE
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionStructure_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.4
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 10:12 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionStructure_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DBudgetPlanVersionStructure] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionVendor]
(
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_VendorID VARCHAR (10),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DBudgetPlanVersionVendor]
	WHERE
		BudgetPlanID = @in_BudgetPlanID AND
		BudgetPlanVersion = @in_BudgetPlanVersion AND
		VendorID = @in_VendorID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DBudgetPlanVersionVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DBudgetPlanVersionVendor_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DBudgetPlanVersionVendor] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemGroupParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
-- Last Modified	: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemGroupParameter]
(
	@in_ItemGroupID VARCHAR (3),
	@in_ParameterID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemGroupParameter]
	WHERE
		ItemGroupID = @in_ItemGroupID AND
		ParameterID = @in_ParameterID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemGroupParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
-- Last Modified	: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemGroupParameter_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemGroupParameter] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemParameter]
(
	@in_ItemID VARCHAR (20),
	@in_ItemGroupID VARCHAR (3),
	@in_ParameterID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemParameter]
	WHERE
		ItemID = @in_ItemID AND
		ItemGroupID = @in_ItemGroupID AND
		ParameterID = @in_ParameterID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemParameter_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemParameter] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemPrice]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 08 May 2017, 10:22 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemPrice]
(
	@in_ItemPriceID VARCHAR (32),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemPrice]
	WHERE
		ItemPriceID = @in_ItemPriceID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemPrice_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemPrice_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemPrice] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemPriceVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemPriceVendor]
(
	@in_ItemPriceID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemPriceVendor]
	WHERE
		ItemPriceID = @in_ItemPriceID AND
		VendorID = @in_VendorID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemPriceVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemPriceVendor_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemPriceVendor] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemPriceVendorPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemPriceVendorPeriod]
(
	@in_ItemPriceID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_ValidFrom DATETIME2,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemPriceVendorPeriod]
	WHERE
		ItemPriceID = @in_ItemPriceID AND
		VendorID = @in_VendorID AND
		ValidFrom = @in_ValidFrom
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemPriceVendorPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemPriceVendorPeriod_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemPriceVendorPeriod] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemVersion]
(
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemVersion]
	WHERE
		ItemID = @in_ItemID AND
		Version = @in_Version
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemVersion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemVersion_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemVersion] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemVersionChild]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemVersionChild]
(
	@in_ItemVersionChildID VARCHAR (8),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemVersionChild]
	WHERE
		ItemVersionChildID = @in_ItemVersionChildID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemVersionChild_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemVersionChild_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemVersionChild] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemVersionChildAlt]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemVersionChildAlt]
(
	@in_ItemVersionChildID VARCHAR (8),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemVersionChildAlt]
	WHERE
		ItemVersionChildID = @in_ItemVersionChildID AND
		ItemID = @in_ItemID AND
		Version = @in_Version
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemVersionChildAlt_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemVersionChildAlt_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemVersionChildAlt] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemVersionChildFormula]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemVersionChildFormula]
(
	@in_ItemVersionChildID VARCHAR (8),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DItemVersionChildFormula]
	WHERE
		ItemVersionChildID = @in_ItemVersionChildID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DItemVersionChildFormula_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DItemVersionChildFormula_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DItemVersionChildFormula] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DPackageList]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DPackageList]
(
	@in_PackageID VARCHAR (20),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DPackageList]
	WHERE
		PackageID = @in_PackageID AND
		BudgetPlanID = @in_BudgetPlanID AND
		BudgetPlanVersion = @in_BudgetPlanVersion
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DPackageList_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DPackageList_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DPackageList] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DRoleMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DRoleMenuAction]
(
	@in_RoleID VARCHAR (8),
	@in_MenuID VARCHAR (50),
	@in_ActionID VARCHAR (30),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DRoleMenuAction]
	WHERE
		RoleID = @in_RoleID AND
		MenuID = @in_MenuID AND
		ActionID = @in_ActionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DRoleMenuAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DRoleMenuAction_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DRoleMenuAction] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DRoleMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DRoleMenuObject]
(
	@in_RoleID VARCHAR (8),
	@in_MenuID VARCHAR (50),
	@in_ObjectID VARCHAR (30),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[DRoleMenuObject]
	WHERE
		RoleID = @in_RoleID AND
		MenuID = @in_MenuID AND
		ObjectID = @in_ObjectID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_DRoleMenuObject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_DRoleMenuObject_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[DRoleMenuObject] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MBudgetPlanTemplate]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MBudgetPlanTemplate]
(
	@in_BudgetPlanTemplateID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MBudgetPlanTemplate]
	WHERE
		BudgetPlanTemplateID = @in_BudgetPlanTemplateID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MBudgetPlanTemplate_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MBudgetPlanTemplate_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MBudgetPlanTemplate] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MBudgetPlanType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 28 Apr 2017, 09:19 AM
-- Last Modified	: Tjhai, Friday, 28 Apr 2017, 09:19 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MBudgetPlanType]
(
	@in_BudgetPlanTypeID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MBudgetPlanType]
	WHERE
		BudgetPlanTypeID = @in_BudgetPlanTypeID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MBudgetPlanType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 28 Apr 2017, 09:19 AM
-- Last Modified	: Tjhai, Friday, 28 Apr 2017, 09:19 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MBudgetPlanType_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MBudgetPlanType] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MCluster]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MCluster]
(
	@in_ClusterID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MCluster]
	WHERE
		ClusterID = @in_ClusterID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MCluster_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MCluster_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MCluster] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MCompany]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MCompany]
(
	@in_CompanyID VARCHAR (4),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MCompany]
	WHERE
		CompanyID = @in_CompanyID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MCompany_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MCompany_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MCompany] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MCountry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MCountry]
(
	@in_CountryID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MCountry]
	WHERE
		CountryID = @in_CountryID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MCountry_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MCountry_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MCountry] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MCurrency]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MCurrency]
(
	@in_CurrencyID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MCurrency]
	WHERE
		CurrencyID = @in_CurrencyID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MCurrency_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MCurrency_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MCurrency] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MDivision]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MDivision]
(
	@in_DivisionID VARCHAR (4),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MDivision]
	WHERE
		DivisionID = @in_DivisionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MDivision_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MDivision_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MDivision] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MItem]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MItem]
(
	@in_ItemID VARCHAR (20),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MItem]
	WHERE
		ItemID = @in_ItemID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MItem_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MItem_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MItem] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MItemGroup]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MItemGroup]
(
	@in_ItemGroupID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MItemGroup]
	WHERE
		ItemGroupID = @in_ItemGroupID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MItemGroup_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MItemGroup_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MItemGroup] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MItemType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MItemType]
(
	@in_ItemTypeID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MItemType]
	WHERE
		ItemTypeID = @in_ItemTypeID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MItemType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MItemType_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MItemType] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MLocation]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MLocation]
(
	@in_LocationID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MLocation]
	WHERE
		LocationID = @in_LocationID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MLocation_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MLocation_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MLocation] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MParameter]
(
	@in_ParameterID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MParameter]
	WHERE
		ParameterID = @in_ParameterID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MParameter_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MParameter] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MPriceType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MPriceType]
(
	@in_PriceTypeID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MPriceType]
	WHERE
		PriceTypeID = @in_PriceTypeID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MPriceType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MPriceType_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MPriceType] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MProject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MProject]
(
	@in_ProjectID VARCHAR (4),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MProject]
	WHERE
		ProjectID = @in_ProjectID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MProject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MProject_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MProject] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MRegion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MRegion]
(
	@in_RegionID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MRegion]
	WHERE
		RegionID = @in_RegionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MRegion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MRegion_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MRegion] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MRole]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MRole]
(
	@in_RoleID VARCHAR (8),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MRole]
	WHERE
		RoleID = @in_RoleID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MRole_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MRole_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MRole] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MStatus]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 26 May 2017, 03:53 PM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 03:53 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MStatus]
(
	@in_TableName VARCHAR (80),
	@in_StatusID INT,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MStatus]
	WHERE
		TableName = @in_TableName AND
		StatusID = @in_StatusID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MStatus_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 26 May 2017, 03:53 PM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 03:53 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MStatus_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MStatus] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MUnitType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MUnitType]
(
	@in_UnitTypeID VARCHAR (5),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MUnitType]
	WHERE
		UnitTypeID = @in_UnitTypeID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MUnitType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MUnitType_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MUnitType] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MUoM]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
-- Last Modified	: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MUoM]
(
	@in_UoMID VARCHAR (3),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MUoM]
	WHERE
		UoMID = @in_UoMID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MUoM_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
-- Last Modified	: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MUoM_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MUoM] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MUser]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MUser]
(
	@in_UserID NVARCHAR (20),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MUser]
	WHERE
		UserID = @in_UserID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MUser_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MUser_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MUser] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MVendor]
(
	@in_VendorID VARCHAR (10),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MVendor]
	WHERE
		VendorID = @in_VendorID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MVendor_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MVendor] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MVendorCategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MVendorCategory]
(
	@in_VendorCategoryID VARCHAR (4),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MVendorCategory]
	WHERE
		VendorCategoryID = @in_VendorCategoryID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MVendorCategory_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MVendorCategory_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MVendorCategory] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MVendorSubcategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MVendorSubcategory]
(
	@in_VendorSubcategoryID VARCHAR (4),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MVendorSubcategory]
	WHERE
		VendorSubcategoryID = @in_VendorSubcategoryID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MVendorSubcategory_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MVendorSubcategory_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MVendorSubcategory] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MWBS]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 09:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 09:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MWBS]
(
	@in_WBSID VARCHAR (100),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[MWBS]
	WHERE
		WBSID = @in_WBSID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_MWBS_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 09:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 09:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_MWBS_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[MWBS] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 05:22 PM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 05:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SAction]
(
	@in_ActionID VARCHAR (30),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[SAction]
	WHERE
		ActionID = @in_ActionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 05:22 PM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 05:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SAction_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[SAction] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SBudgetPlanPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:22 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:22 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SBudgetPlanPeriod]
(
	@in_BudgetPlanPeriodID VARCHAR (2),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[SBudgetPlanPeriod]
	WHERE
		BudgetPlanPeriodID = @in_BudgetPlanPeriodID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SBudgetPlanPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:22 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:22 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SBudgetPlanPeriod_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[SBudgetPlanPeriod] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SDimension]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
-- Last Modified	: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SDimension]
(
	@in_DimensionID VARCHAR (6),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[SDimension]
	WHERE
		DimensionID = @in_DimensionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SDimension_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
-- Last Modified	: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SDimension_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[SDimension] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SMenu]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SMenu]
(
	@in_MenuID VARCHAR (50),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[SMenu]
	WHERE
		MenuID = @in_MenuID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SMenu_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SMenu_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[SMenu] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SReport]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
-- Last Modified	: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SReport]
(
	@in_ReportID VARCHAR (20),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[SReport]
	WHERE
		ReportID = @in_ReportID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_SReport_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
-- Last Modified	: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_SReport_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[SReport] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_TBudgetPlan]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_TBudgetPlan]
(
	@in_BudgetPlanID VARCHAR (20),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[TBudgetPlan]
	WHERE
		BudgetPlanID = @in_BudgetPlanID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_TBudgetPlan_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_TBudgetPlan_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[TBudgetPlan] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_TNumbering]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_TNumbering]
(
	@in_Header VARCHAR (3),
	@in_Year VARCHAR (4),
	@in_Month VARCHAR (2),
	@in_CompanyID VARCHAR (4),
	@in_ProjectID VARCHAR (4),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[TNumbering]
	WHERE
		Header = @in_Header AND
		Year = @in_Year AND
		Month = @in_Month AND
		CompanyID = @in_CompanyID AND
		ProjectID = @in_ProjectID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_TNumbering_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_TNumbering_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[TNumbering] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_TPackage]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_TPackage]
(
	@in_PackageID VARCHAR (20),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[TPackage]
	WHERE
		PackageID = @in_PackageID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_TPackage_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_TPackage_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[TPackage] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_UConfig]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_UConfig]
(
	@in_Key1 NVARCHAR (50),
	@in_Key2 NVARCHAR (50),
	@in_Key3 NVARCHAR (50),
	@in_Key4 NVARCHAR (50),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [dbo].[UConfig]
	WHERE
		Key1 = @in_Key1 AND
		Key2 = @in_Key2 AND
		Key3 = @in_Key3 AND
		Key4 = @in_Key4
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[del_UConfig_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[del_UConfig_BC]
(
	@in_Filter NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'DELETE FROM [dbo].[UConfig] ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_CMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_CMenuAction]
(
	@in_MenuID VARCHAR (50),
	@in_ActionID VARCHAR (30),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[CMenuAction]
	(
		MenuID,
		ActionID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_MenuID,
		@in_ActionID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_CMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_CMenuObject]
(
	@in_MenuID VARCHAR (50),
	@in_ObjectID VARCHAR (30),
	@in_ObjectDesc VARCHAR (30),
	@in_ObjectLongDesc VARCHAR (255),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[CMenuObject]
	(
		MenuID,
		ObjectID,
		ObjectDesc,
		ObjectLongDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_MenuID,
		@in_ObjectID,
		@in_ObjectDesc,
		@in_ObjectLongDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DBudgetPlanTemplateStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DBudgetPlanTemplateStructure]
(
	@in_BudgetPlanTemplateID VARCHAR (3),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_Sequence INT,
	@in_ParentItemID VARCHAR (20),
	@in_ParentVersion INT,
	@in_ParentSequence INT,
	@in_IsDefault BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DBudgetPlanTemplateStructure]
	(
		BudgetPlanTemplateID,
		ItemID,
		Version,
		Sequence,
		ParentItemID,
		ParentVersion,
		ParentSequence,
		IsDefault,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanTemplateID,
		@in_ItemID,
		@in_Version,
		@in_Sequence,
		@in_ParentItemID,
		@in_ParentVersion,
		@in_ParentSequence,
		@in_IsDefault,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DBudgetPlanVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.2
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Agus, Tuesday, 10 October 2017, 10:01 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DBudgetPlanVersion]
(
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_Description VARCHAR (40),
	@in_Area DECIMAL (10, 4),
	@in_Unit DECIMAL (10, 4),
	@in_FeePercentage DECIMAL (6, 2),
	@in_StatusID INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DBudgetPlanVersion]
	(
		BudgetPlanID,
		BudgetPlanVersion,
		Description,
		Area,
		Unit,
		FeePercentage,
		StatusID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanID,
		@in_BudgetPlanVersion,
		@in_Description,
		@in_Area,
		@in_Unit,
		@in_FeePercentage,
		@in_StatusID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DBudgetPlanVersionAdditional]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Thursday, 08 Jun 2017, 01:48 PM
-- Last Modified	: lendra, Tue, 08 Agst 2017, 03:43 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DBudgetPlanVersionAdditional]
(
	@in_BudgetPlanVersionAdditionalID VARCHAR (32),
	@in_BudgetPlanVersionVendorID VARCHAR (32),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_Sequence INT,
	@in_ParentItemID VARCHAR (20) = NULL,
	@in_ParentVersion INT = NULL,
	@in_ParentSequence INT = NULL,
	@in_Info VARCHAR (1000),
	@in_Volume DECIMAL (8, 4) = NULL,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DBudgetPlanVersionAdditional]
	(
		BudgetPlanVersionAdditionalID,
		BudgetPlanVersionVendorID,
		ItemID,
		Version,
		Sequence,
		ParentItemID,
		ParentVersion,
		ParentSequence,
		Info,
		Volume,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanVersionAdditionalID,
		@in_BudgetPlanVersionVendorID,
		@in_ItemID,
		@in_Version,
		@in_Sequence,
		@in_ParentItemID,
		@in_ParentVersion,
		@in_ParentSequence,
		@in_Info,
		@in_Volume,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DBudgetPlanVersionAssignment]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Thursday, 19 Oct 2017, 09:03 AM
-- Last Modified	: Tjhai, Thursday, 19 Oct 2017, 09:07 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DBudgetPlanVersionAssignment]
(
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DBudgetPlanVersionAssignment]
	(
		BudgetPlanVersionStructureID,
		VendorID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanVersionStructureID,
		@in_VendorID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DBudgetPlanVersionEntry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Lendra, Tue, 08 Agst 2017, 03:33 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DBudgetPlanVersionEntry]
(
	@in_BudgetPlanVersionVendorID VARCHAR (32),
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@in_Info VARCHAR (1000),
	@in_Volume DECIMAL (8, 4) = NULL,
	@in_MaterialAmount DECIMAL (14, 4) = NULL,
	@in_WageAmount DECIMAL (14, 4) = NULL,
	@in_MiscAmount DECIMAL (14, 4) = NULL,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DBudgetPlanVersionEntry]
	(
		BudgetPlanVersionVendorID,
		BudgetPlanVersionStructureID,
		Info,
		Volume,
		MaterialAmount,
		WageAmount,
		MiscAmount,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanVersionVendorID,
		@in_BudgetPlanVersionStructureID,
		@in_Info,
		@in_Volume,
		@in_MaterialAmount,
		@in_WageAmount,
		@in_MiscAmount,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DBudgetPlanVersionPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:21 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:21 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DBudgetPlanVersionPeriod]
(
	@in_BudgetPlanVersionPeriodID VARCHAR (32),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_PeriodVersion INT,
	@in_BudgetPlanPeriodID VARCHAR (2),
	@in_StatusID INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DBudgetPlanVersionPeriod]
	(
		BudgetPlanVersionPeriodID,
		BudgetPlanID,
		BudgetPlanVersion,
		PeriodVersion,
		BudgetPlanPeriodID,
		StatusID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanVersionPeriodID,
		@in_BudgetPlanID,
		@in_BudgetPlanVersion,
		@in_PeriodVersion,
		@in_BudgetPlanPeriodID,
		@in_StatusID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DBudgetPlanVersionStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.4
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 10:12 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DBudgetPlanVersionStructure]
(
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_Sequence INT,
	@in_ParentItemID VARCHAR (20),
	@in_ParentVersion INT,
	@in_ParentSequence INT,
	@in_ItemVersionChildID VARCHAR (8),
	@in_Specification VARCHAR (1000),
	@in_Volume DECIMAL (8, 4) = NULL,
	@in_MaterialAmount DECIMAL (14, 4) = NULL,
	@in_WageAmount DECIMAL (14, 4) = NULL,
	@in_MiscAmount DECIMAL (14, 4) = NULL,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DBudgetPlanVersionStructure]
	(
		BudgetPlanVersionStructureID,
		BudgetPlanID,
		BudgetPlanVersion,
		ItemID,
		Version,
		Sequence,
		ParentItemID,
		ParentVersion,
		ParentSequence,
		ItemVersionChildID,
		Specification,
		Volume,
		MaterialAmount,
		WageAmount,
		MiscAmount,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanVersionStructureID,
		@in_BudgetPlanID,
		@in_BudgetPlanVersion,
		@in_ItemID,
		@in_Version,
		@in_Sequence,
		@in_ParentItemID,
		@in_ParentVersion,
		@in_ParentSequence,
		@in_ItemVersionChildID,
		@in_Specification,
		@in_Volume,
		@in_MaterialAmount,
		@in_WageAmount,
		@in_MiscAmount,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DBudgetPlanVersionVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DBudgetPlanVersionVendor]
(
	@in_BudgetPlanVersionVendorID VARCHAR (32),
	@in_BudgetPlanVersionPeriodID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_StartDate DATETIME2,
	@in_EndDate DATETIME2,
	@in_FeePercentage DECIMAL(6,4),
	@in_StatusID INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DBudgetPlanVersionVendor]
	(
		BudgetPlanVersionVendorID,
		BudgetPlanVersionPeriodID,
		VendorID,
		StartDate,
		EndDate,
		FeePercentage,
		StatusID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanVersionVendorID,
		@in_BudgetPlanVersionPeriodID,
		@in_VendorID,
		@in_StartDate,
		@in_EndDate,
		@in_FeePercentage,
		@in_StatusID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemGroupParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
-- Last Modified	: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemGroupParameter]
(
	@in_ItemGroupID VARCHAR (3),
	@in_ParameterID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemGroupParameter]
	(
		ItemGroupID,
		ParameterID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemGroupID,
		@in_ParameterID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemParameter]
(
	@in_ItemID VARCHAR (20),
	@in_ItemGroupID VARCHAR (3),
	@in_ParameterID VARCHAR (3),
	@in_Value VARCHAR (100),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemParameter]
	(
		ItemID,
		ItemGroupID,
		ParameterID,
		Value,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemID,
		@in_ItemGroupID,
		@in_ParameterID,
		@in_Value,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemPrice]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 08 May 2017, 10:23 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemPrice]
(
	@in_ItemPriceID VARCHAR (32),
	@in_ItemID VARCHAR (20),
	@in_RegionID VARCHAR (3),
	@in_ProjectID VARCHAR (4),
	@in_ClusterID VARCHAR (3),
	@in_UnitTypeID VARCHAR (5),
	@in_PriceTypeID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemPrice]
	(
		ItemPriceID,
		ItemID,
		RegionID,
		ProjectID,
		ClusterID,
		UnitTypeID,
		PriceTypeID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemPriceID,
		@in_ItemID,
		@in_RegionID,
		@in_ProjectID,
		@in_ClusterID,
		@in_UnitTypeID,
		@in_PriceTypeID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemPriceVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemPriceVendor]
(
	@in_ItemPriceID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_IsDefault BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemPriceVendor]
	(
		ItemPriceID,
		VendorID,
		IsDefault,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemPriceID,
		@in_VendorID,
		@in_IsDefault,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemPriceVendorPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemPriceVendorPeriod]
(
	@in_ItemPriceID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_ValidFrom DATETIME2,
	@in_ValidTo DATETIME2,
	@in_CurrencyID VARCHAR (3),
	@in_Amount DECIMAL (15, 4),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemPriceVendorPeriod]
	(
		ItemPriceID,
		VendorID,
		ValidFrom,
		ValidTo,
		CurrencyID,
		Amount,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemPriceID,
		@in_VendorID,
		@in_ValidFrom,
		@in_ValidTo,
		@in_CurrencyID,
		@in_Amount,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemVersion]
(
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_VersionDesc VARCHAR (100),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemVersion]
	(
		ItemID,
		Version,
		VersionDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemID,
		@in_Version,
		@in_VersionDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemVersionChild]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Lendra, Wed, 10 May 2017, 04:58 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemVersionChild]
(
	@in_ItemVersionChildID VARCHAR (8),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_ChildItemID VARCHAR (20),
	@in_Sequence INT,
	@in_ChildVersion INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemVersionChild]
	(
		ItemVersionChildID,
		ItemID,
		Version,
		ChildItemID,
		Sequence,
		ChildVersion,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemVersionChildID,
		@in_ItemID,
		@in_Version,
		@in_ChildItemID,
		@in_Sequence,
		@in_ChildVersion,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemVersionChildAlt]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemVersionChildAlt]
(
	@in_ItemVersionChildID VARCHAR (8),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemVersionChildAlt]
	(
		ItemVersionChildID,
		ItemID,
		Version,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemVersionChildID,
		@in_ItemID,
		@in_Version,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DItemVersionChildFormula]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DItemVersionChildFormula]
(
	@in_ItemVersionChildID VARCHAR (8),
	@in_Coefficient DECIMAL (7, 4),
	@in_Formula VARCHAR (1000),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DItemVersionChildFormula]
	(
		ItemVersionChildID,
		Coefficient,
		Formula,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemVersionChildID,
		@in_Coefficient,
		@in_Formula,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DPackageList]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DPackageList]
(
	@in_PackageID VARCHAR (20),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DPackageList]
	(
		PackageID,
		BudgetPlanID,
		BudgetPlanVersion,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_PackageID,
		@in_BudgetPlanID,
		@in_BudgetPlanVersion,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DRoleMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DRoleMenuAction]
(
	@in_RoleID VARCHAR (8),
	@in_MenuID VARCHAR (50),
	@in_ActionID VARCHAR (30),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DRoleMenuAction]
	(
		RoleID,
		MenuID,
		ActionID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_RoleID,
		@in_MenuID,
		@in_ActionID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_DRoleMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_DRoleMenuObject]
(
	@in_RoleID VARCHAR (8),
	@in_MenuID VARCHAR (50),
	@in_ObjectID VARCHAR (30),
	@in_Value VARCHAR (50),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[DRoleMenuObject]
	(
		RoleID,
		MenuID,
		ObjectID,
		Value,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_RoleID,
		@in_MenuID,
		@in_ObjectID,
		@in_Value,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MBudgetPlanTemplate]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MBudgetPlanTemplate]
(
	@in_BudgetPlanTemplateID VARCHAR (3),
	@in_BudgetPlanTemplateDesc VARCHAR (10),
	@in_BudgetPlanTypeID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MBudgetPlanTemplate]
	(
		BudgetPlanTemplateID,
		BudgetPlanTemplateDesc,
		BudgetPlanTypeID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanTemplateID,
		@in_BudgetPlanTemplateDesc,
		@in_BudgetPlanTypeID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MBudgetPlanType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 28 Apr 2017, 09:19 AM
-- Last Modified	: Tjhai, Friday, 28 Apr 2017, 09:19 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MBudgetPlanType]
(
	@in_BudgetPlanTypeID VARCHAR (3),
	@in_BudgetPlanTypeDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MBudgetPlanType]
	(
		BudgetPlanTypeID,
		BudgetPlanTypeDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanTypeID,
		@in_BudgetPlanTypeDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MCluster]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MCluster]
(
	@in_ClusterID VARCHAR (3),
	@in_ClusterDesc VARCHAR (20),
	@in_ProjectID VARCHAR (4),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MCluster]
	(
		ClusterID,
		ClusterDesc,
		ProjectID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ClusterID,
		@in_ClusterDesc,
		@in_ProjectID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MCompany]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MCompany]
(
	@in_CompanyID VARCHAR (4),
	@in_CompanyDesc VARCHAR (50),
	@in_CountryID VARCHAR (3),
	@in_City VARCHAR (25),
	@in_Street VARCHAR (255),
	@in_Postal VARCHAR (6),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MCompany]
	(
		CompanyID,
		CompanyDesc,
		CountryID,
		City,
		Street,
		Postal,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_CompanyID,
		@in_CompanyDesc,
		@in_CountryID,
		@in_City,
		@in_Street,
		@in_Postal,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MCountry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MCountry]
(
	@in_CountryID VARCHAR (3),
	@in_CountryDesc VARCHAR (50),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MCountry]
	(
		CountryID,
		CountryDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_CountryID,
		@in_CountryDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MCurrency]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MCurrency]
(
	@in_CurrencyID VARCHAR (3),
	@in_CurrencyDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MCurrency]
	(
		CurrencyID,
		CurrencyDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_CurrencyID,
		@in_CurrencyDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MDivision]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MDivision]
(
	@in_DivisionID VARCHAR (4),
	@in_DivisionDesc VARCHAR (50),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MDivision]
	(
		DivisionID,
		DivisionDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_DivisionID,
		@in_DivisionDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MItem]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Rony, Tue, 2 Mei 2017, 4:29 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MItem]
(
	@in_ItemID VARCHAR (20) OUTPUT,
	@in_ItemDesc VARCHAR (100),
	@in_ItemGroupID VARCHAR (3),
	@in_UoMID VARCHAR (3),
	@in_IsActive BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @var_LastNo INT
	DECLARE @var_Year VARCHAR(4)
	DECLARE @var_Header VARCHAR(3)

	SET @var_Year = YEAR(GETDATE())
	SET @var_Header = 'ITM'
	UPDATE [TNumbering]
	SET LastNo = CONVERT (INT, LastNo) + 1,
		@var_LastNo = CONVERT (INT, LastNo) + 1
	WHERE Header = @var_Header AND Year = @var_Year
	IF (@@ROWCOUNT <= 0)
	BEGIN
		SET @var_LastNo = 1
		INSERT INTO [TNumbering] VALUES (@var_Header, @var_Year, '', '', '', @var_LastNo,
			@in_CreatedBy, @in_CreatedDate, @in_CreatedHost,
			@in_ModifiedBy, @in_ModifiedDate, @in_ModifiedHost)
	END
	SET @in_ItemID = @var_Header  +'-'+ @var_Year +'-'+ RIGHT('00000' + CONVERT (VARCHAR(5), @var_LastNo), 5)


	INSERT INTO [dbo].[MItem]
	(
		ItemID,
		ItemDesc,
		ItemGroupID,
		UoMID,
		IsActive,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemID,
		@in_ItemDesc,
		@in_ItemGroupID,
		@in_UoMID,
		@in_IsActive,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MItemGroup]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MItemGroup]
(
	@in_ItemGroupID VARCHAR (3),
	@in_ItemGroupDesc VARCHAR (50),
	@in_ItemTypeID VARCHAR (3),
	@in_HasParameter BIT,
	@in_HasPrice BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MItemGroup]
	(
		ItemGroupID,
		ItemGroupDesc,
		ItemTypeID,
		HasParameter,
		HasPrice,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemGroupID,
		@in_ItemGroupDesc,
		@in_ItemTypeID,
		@in_HasParameter,
		@in_HasPrice,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MItemType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MItemType]
(
	@in_ItemTypeID VARCHAR (3),
	@in_ItemTypeDesc VARCHAR (40),
	@in_ItemTypeParentID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MItemType]
	(
		ItemTypeID,
		ItemTypeDesc,
		ItemTypeParentID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ItemTypeID,
		@in_ItemTypeDesc,
		@in_ItemTypeParentID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MLocation]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MLocation]
(
	@in_LocationID VARCHAR (3),
	@in_LocationDesc VARCHAR (20),
	@in_RegionID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MLocation]
	(
		LocationID,
		LocationDesc,
		RegionID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_LocationID,
		@in_LocationDesc,
		@in_RegionID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MParameter]
(
	@in_ParameterID VARCHAR (3),
	@in_ParameterDesc VARCHAR (40),
	@in_DataType VARCHAR (10),
	@in_Length INT,
	@in_Precision INT,
	@in_Scale INT,
	@in_RefTable VARCHAR (40),
	@in_RefIDColumn VARCHAR (40),
	@in_RefDescColumn VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MParameter]
	(
		ParameterID,
		ParameterDesc,
		DataType,
		Length,
		Precision,
		Scale,
		RefTable,
		RefIDColumn,
		RefDescColumn,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ParameterID,
		@in_ParameterDesc,
		@in_DataType,
		@in_Length,
		@in_Precision,
		@in_Scale,
		@in_RefTable,
		@in_RefIDColumn,
		@in_RefDescColumn,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MPriceType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MPriceType]
(
	@in_PriceTypeID VARCHAR (3),
	@in_PriceTypeDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MPriceType]
	(
		PriceTypeID,
		PriceTypeDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_PriceTypeID,
		@in_PriceTypeDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MProject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MProject]
(
	@in_ProjectID VARCHAR (4),
	@in_ProjectDesc VARCHAR (50),
	@in_CompanyID VARCHAR (4),
	@in_DivisionID VARCHAR (4),
	@in_LocationID VARCHAR (3),
	@in_City VARCHAR (25),
	@in_Street VARCHAR (255),
	@in_Postal VARCHAR (6),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MProject]
	(
		ProjectID,
		ProjectDesc,
		CompanyID,
		DivisionID,
		LocationID,
		City,
		Street,
		Postal,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ProjectID,
		@in_ProjectDesc,
		@in_CompanyID,
		@in_DivisionID,
		@in_LocationID,
		@in_City,
		@in_Street,
		@in_Postal,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MRegion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MRegion]
(
	@in_RegionID VARCHAR (3),
	@in_RegionDesc VARCHAR (20),
	@in_CountryID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MRegion]
	(
		RegionID,
		RegionDesc,
		CountryID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_RegionID,
		@in_RegionDesc,
		@in_CountryID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MRole]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MRole]
(
	@in_RoleID VARCHAR (8),
	@in_RoleDesc VARCHAR (255),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MRole]
	(
		RoleID,
		RoleDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_RoleID,
		@in_RoleDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MStatus]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 26 May 2017, 03:53 PM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 03:53 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MStatus]
(
	@in_TableName VARCHAR (80),
	@in_StatusID INT,
	@in_StatusDesc VARCHAR (20),
	@in_Visible BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MStatus]
	(
		TableName,
		StatusID,
		StatusDesc,
		Visible,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_TableName,
		@in_StatusID,
		@in_StatusDesc,
		@in_Visible,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MUnitType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MUnitType]
(
	@in_UnitTypeID VARCHAR (5),
	@in_UnitTypeDesc VARCHAR (50),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MUnitType]
	(
		UnitTypeID,
		UnitTypeDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_UnitTypeID,
		@in_UnitTypeDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MUoM]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
-- Last Modified	: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MUoM]
(
	@in_UoMID VARCHAR (3),
	@in_UoMDesc VARCHAR (25),
	@in_DimensionID VARCHAR (6),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MUoM]
	(
		UoMID,
		UoMDesc,
		DimensionID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_UoMID,
		@in_UoMDesc,
		@in_DimensionID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MUser]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MUser]
(
	@in_UserID NVARCHAR (20),
	@in_RoleID VARCHAR (8),
	@in_FullName NVARCHAR (50),
	@in_Password NVARCHAR (100),
	@in_VendorID VARCHAR (10),
	@in_LastLogin DATETIME,
	@in_HostIP NVARCHAR (40),
	@in_IsActive BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MUser]
	(
		UserID,
		RoleID,
		FullName,
		Password,
		VendorID,
		LastLogin,
		HostIP,
		IsActive,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_UserID,
		@in_RoleID,
		@in_FullName,
		@in_Password,
		@in_VendorID,
		@in_LastLogin,
		@in_HostIP,
		@in_IsActive,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MVendor]
(
	@in_VendorID VARCHAR (10),
	@in_FirstName VARCHAR (35),
	@in_LastName VARCHAR (35),
	@in_VendorSubcategoryID VARCHAR (4),
	@in_City VARCHAR (25),
	@in_Street VARCHAR (255),
	@in_Postal VARCHAR (6),
	@in_Phone VARCHAR (20),
	@in_Email VARCHAR (128),
	@in_IDNo VARCHAR (20),
	@in_NPWP VARCHAR (20),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MVendor]
	(
		VendorID,
		FirstName,
		LastName,
		VendorSubcategoryID,
		City,
		Street,
		Postal,
		Phone,
		Email,
		IDNo,
		NPWP,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_VendorID,
		@in_FirstName,
		@in_LastName,
		@in_VendorSubcategoryID,
		@in_City,
		@in_Street,
		@in_Postal,
		@in_Phone,
		@in_Email,
		@in_IDNo,
		@in_NPWP,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MVendorCategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MVendorCategory]
(
	@in_VendorCategoryID VARCHAR (4),
	@in_VendorCategoryDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MVendorCategory]
	(
		VendorCategoryID,
		VendorCategoryDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_VendorCategoryID,
		@in_VendorCategoryDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MVendorSubcategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MVendorSubcategory]
(
	@in_VendorSubcategoryID VARCHAR (4),
	@in_VendorSubcategoryDesc VARCHAR (40),
	@in_VendorCategoryID VARCHAR (4),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MVendorSubcategory]
	(
		VendorSubcategoryID,
		VendorSubcategoryDesc,
		VendorCategoryID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_VendorSubcategoryID,
		@in_VendorSubcategoryDesc,
		@in_VendorCategoryID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_MWBS]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 09:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 09:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_MWBS]
(
	@in_WBSID VARCHAR (100),
	@in_WBSDesc VARCHAR (100),
	@in_ProjectID VARCHAR (4),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[MWBS]
	(
		WBSID,
		WBSDesc,
		ProjectID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_WBSID,
		@in_WBSDesc,
		@in_ProjectID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_SAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 05:22 PM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 05:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_SAction]
(
	@in_ActionID VARCHAR (30),
	@in_ActionDesc VARCHAR (30),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[SAction]
	(
		ActionID,
		ActionDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ActionID,
		@in_ActionDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_SBudgetPlanPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:22 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:22 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_SBudgetPlanPeriod]
(
	@in_BudgetPlanPeriodID VARCHAR (2),
	@in_BudgetPlanPeriodDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[SBudgetPlanPeriod]
	(
		BudgetPlanPeriodID,
		BudgetPlanPeriodDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanPeriodID,
		@in_BudgetPlanPeriodDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_SDimension]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
-- Last Modified	: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_SDimension]
(
	@in_DimensionID VARCHAR (6),
	@in_DimensionDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[SDimension]
	(
		DimensionID,
		DimensionDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_DimensionID,
		@in_DimensionDesc,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_SMenu]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_SMenu]
(
	@in_MenuID VARCHAR (50),
	@in_MenuHierarchy VARCHAR (20),
	@in_MenuDesc VARCHAR (100),
	@in_MenuIcon VARCHAR (100),
	@in_MenuUrl VARCHAR (100),
	@in_MenuVisible BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[SMenu]
	(
		MenuID,
		MenuHierarchy,
		MenuDesc,
		MenuIcon,
		MenuUrl,
		MenuVisible,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_MenuID,
		@in_MenuHierarchy,
		@in_MenuDesc,
		@in_MenuIcon,
		@in_MenuUrl,
		@in_MenuVisible,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_SReport]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
-- Last Modified	: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_SReport]
(
	@in_ReportID VARCHAR (20),
	@in_ReportDesc VARCHAR (50),
	@in_ReportViewName VARCHAR (100),
	@in_ReportVisible BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[SReport]
	(
		ReportID,
		ReportDesc,
		ReportViewName,
		ReportVisible,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_ReportID,
		@in_ReportDesc,
		@in_ReportViewName,
		@in_ReportVisible,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_TBudgetPlan]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
-- Last Modified	: Rony, Wednesday, 24 May 2017, 02:44 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_TBudgetPlan]
(
	@in_BudgetPlanID VARCHAR (20) OUTPUT,
	@in_BudgetPlanTemplateID VARCHAR (3),
	@in_ProjectID VARCHAR (4),
	@in_ClusterID VARCHAR (3) = NULL,
	@in_UnitTypeID VARCHAR (5),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @var_LastNo INT
	DECLARE @var_Year VARCHAR(4)
	DECLARE @var_Header VARCHAR(3)
	
	IF(@in_BudgetPlanID IS NULL OR @in_BudgetPlanID ='')
	BEGIN
		SET @var_Year = YEAR(GETDATE())
		SET @var_Header = 'BPL'
		UPDATE [TNumbering]
		SET LastNo = CONVERT (INT, LastNo) + 1,
			@var_LastNo = CONVERT (INT, LastNo) + 1
		WHERE Header = @var_Header AND Year = @var_Year 
		IF (@@ROWCOUNT <= 0)
		BEGIN
			SET @var_LastNo = 1
			INSERT INTO [TNumbering] VALUES (@var_Header, @var_Year, '', '', '', @var_LastNo,
				@in_CreatedBy, @in_CreatedDate, @in_CreatedHost,
				@in_ModifiedBy, @in_ModifiedDate, @in_ModifiedHost)
		END
		SET @in_BudgetPlanID = @var_Header  +'-'+ @var_Year +'-'+ RIGHT('00000000' + CONVERT (VARCHAR(8), @var_LastNo), 8)
	END
	
	INSERT INTO [dbo].[TBudgetPlan]
	(
		BudgetPlanID,
		BudgetPlanTemplateID,
		ProjectID,
		ClusterID,
		UnitTypeID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_BudgetPlanID,
		@in_BudgetPlanTemplateID,
		@in_ProjectID,
		@in_ClusterID,
		@in_UnitTypeID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_TNumbering]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_TNumbering]
(
	@in_Header VARCHAR (3),
	@in_Year VARCHAR (4),
	@in_Month VARCHAR (2),
	@in_CompanyID VARCHAR (4),
	@in_ProjectID VARCHAR (4),
	@in_LastNo INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[TNumbering]
	(
		Header,
		Year,
		Month,
		CompanyID,
		ProjectID,
		LastNo,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_Header,
		@in_Year,
		@in_Month,
		@in_CompanyID,
		@in_ProjectID,
		@in_LastNo,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_TPackage]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Lendra, Fri, 26 May 2017, 09:40 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_TPackage]
(
	@in_PackageID VARCHAR (20) OUTPUT,
	@in_PackageDesc VARCHAR (40),
	@in_ProjectID VARCHAR (4),
	@in_CompanyID VARCHAR (4),
	@in_StatusID INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @var_LastNo INT
	DECLARE @var_Year VARCHAR(4)
	DECLARE @var_Header VARCHAR(3)

	SET @var_Year = YEAR(GETDATE())
	SET @var_Header = 'PKG'
	UPDATE [TNumbering]
	SET LastNo = CONVERT (INT, LastNo) + 1,
		@var_LastNo = CONVERT (INT, LastNo) + 1
	WHERE Header = @var_Header AND Year = @var_Year AND ProjectID = @in_ProjectID
	IF (@@ROWCOUNT <= 0)
	BEGIN
		SET @var_LastNo = 1
		INSERT INTO [TNumbering] VALUES (@var_Header, @var_Year, '', '', @in_ProjectID, @var_LastNo,
			@in_CreatedBy, @in_CreatedDate, @in_CreatedHost,
			@in_ModifiedBy, @in_ModifiedDate, @in_ModifiedHost)
	END
	SET @in_PackageID = @var_Header  +'-'+ @in_ProjectID +'-'+ @var_Year +'-'+ RIGHT('000000' + CONVERT (VARCHAR(6), @var_LastNo), 6)

	INSERT INTO [dbo].[TPackage]
	(
		PackageID,
		PackageDesc,
		StatusID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	)
	VALUES
	(
		@in_PackageID,
		@in_PackageDesc,
		@in_StatusID,
		@in_CreatedBy,
		@in_CreatedDate,
		@in_CreatedHost,
		@in_ModifiedBy,
		@in_ModifiedDate,
		@in_ModifiedHost
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[ins_UConfig]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ins_UConfig]
(
	@in_Key1 NVARCHAR (50),
	@in_Key2 NVARCHAR (50),
	@in_Key3 NVARCHAR (50),
	@in_Key4 NVARCHAR (50),
	@in_Desc1 NVARCHAR (1000),
	@in_Desc2 NVARCHAR (1000) = NULL,
	@in_Desc3 NVARCHAR (1000) = NULL,
	@in_Desc4 NVARCHAR (1000) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[UConfig]
	(
		Key1,
		Key2,
		Key3,
		Key4,
		Desc1,
		Desc2,
		Desc3,
		Desc4
	)
	VALUES
	(
		@in_Key1,
		@in_Key2,
		@in_Key3,
		@in_Key4,
		@in_Desc1,
		@in_Desc2,
		@in_Desc3,
		@in_Desc4
	)

	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[sel_CMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_CMenuAction]
(
	@in_MenuID VARCHAR (50),
	@in_ActionID VARCHAR (30)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		MenuID,
		ActionID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[CMenuAction]
	WHERE
		MenuID = @in_MenuID AND
		ActionID = @in_ActionID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_CMenuAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_CMenuAction_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [CMenuAction]'
				     --RIGHT JOIN SAction ON CMenuAction.ActionID = SAction.ActionID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[CMenuAction].MenuID ASC, [CMenuAction].ActionID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT(*) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_CMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_CMenuObject]
(
	@in_MenuID VARCHAR (50),
	@in_ObjectID VARCHAR (30)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		MenuID,
		ObjectID,
		ObjectDesc,
		ObjectLongDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[CMenuObject]
	WHERE
		MenuID = @in_MenuID AND
		ObjectID = @in_ObjectID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_CMenuObject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_CMenuObject_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [CMenuObject]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[CMenuObject].MenuID ASC, [CMenuObject].ObjectID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([CMenuObject].MenuID, [CMenuObject].ObjectID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanTemplateStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanTemplateStructure]
(
	@in_BudgetPlanTemplateID VARCHAR (3),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_Sequence INT
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanTemplateID,
		ItemID,
		Version,
		Sequence,
		ParentItemID,
		ParentVersion,
		ParentSequence,
		IsDefault,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DBudgetPlanTemplateStructure]
	WHERE
		BudgetPlanTemplateID = @in_BudgetPlanTemplateID AND
		ItemID = @in_ItemID AND
		Version = @in_Version AND
		Sequence = @in_Sequence
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanTemplateStructure_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanTemplateStructure_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	--FROM(SELECT distinct tabel1.*,tabel2.ItemTypeID as''ParentItemTypeID'' FROM(
							--select DBudgetPlanTemplateStructure.*,MItemGroup.ItemTypeID,MItemGroup.ItemGroupDesc, MItem.ItemDesc,MUoM.UoMID, MUoM.UoMDesc,
							--CASE 
							--when exists 								
							 --(select * from UConfig where Key1=''ItemTypeID'' and Key2=''BudgetPlanTemplate'' and Key3 = MItemGroup.ItemTypeID and Desc1 = ''TRUE'')  then ''TRUE''
							 --ELSE ''FALSE''							 
								--end as ''HasChild''
							 --from DBudgetPlanTemplateStructure 
							--left join MItem on DBudgetPlanTemplateStructure.ItemID = MItem.ItemID
							--left join MItemGroup on MItem.ItemGroupID = MItemGroup.ItemGroupID
							--left join MUoM on MUoM.UoMID = MItem.UoMID 
							--) tabel1
								--left join (select DBudgetPlanTemplateStructure.ParentItemID,DBudgetPlanTemplateStructure.Sequence, MItemGroup.ItemTypeID 
								            --from DBudgetPlanTemplateStructure 
											--left join MItem on DBudgetPlanTemplateStructure.ParentItemID = MItem.ItemID
											
											--left join MItemGroup on MItem.ItemGroupID = MItemGroup.ItemGroupID 
											--)tabel2 on tabel1.Sequence = tabel2.Sequence and tabel2.ParentItemID=tabel1.ParentItemID )DBudgetPlanTemplateStructure
											--left join DItemVersionChild on DItemVersionChild.ItemID = DBudgetPlanTemplateStructure.ItemID  
							--AND DItemVersionChild.[Version] = DBudgetPlanTemplateStructure.[Version]
							--AND DItemVersionChild.[Sequence] = DBudgetPlanTemplateStructure.[Sequence]
							--LEFT JOIN [UConfig] ON [UConfig].Key2=''BudgetPlanTemplate'' AND  [UConfig].Key1 =''ItemTypeID'' AND  [UConfig].Key3 =[DBudgetPlanTemplateStructure].ItemTypeID
	SET @var_FROM = 'FROM DBudgetPlanTemplateStructure 
						INNER JOIN MItem on DBudgetPlanTemplateStructure.ItemID = MItem.ItemID
						LEFT JOIN (SELECT MItem.ItemID,MItemGroup.ItemTypeID AS ParentItemTypeID
										FROM MItem INNER JOIN MItemGroup ON MItem.ItemGroupID=MItemGroup.ItemGroupID ) AS ParentItemGroup ON DBudgetPlanTemplateStructure.ParentItemID = ParentItemGroup.ItemID
						INNER JOIN MItemGroup on MItem.ItemGroupID = MItemGroup.ItemGroupID
						INNER JOIN MUoM on MUoM.UoMID = MItem.UoMID 
						LEFT  JOIN DItemVersionChild on DItemVersionChild.ItemID = DBudgetPlanTemplateStructure.ItemID  
									AND DItemVersionChild.[Version] = DBudgetPlanTemplateStructure.[Version]
									AND DItemVersionChild.[Sequence] = DBudgetPlanTemplateStructure.[Sequence]
						LEFT JOIN DItemVersionChildFormula ON DItemVersionChild.ItemVersionChildID = DItemVersionChildFormula.ItemVersionChildID
						LEFT  JOIN [UConfig] ON [UConfig].Key2=''BudgetPlanTemplate'' AND  [UConfig].Key1 =''ItemTypeID'' AND  [UConfig].Key3 =MItemGroup.ItemTypeID' 
							
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DBudgetPlanTemplateStructure].BudgetPlanTemplateID ASC, [DBudgetPlanTemplateStructure].ItemID ASC, [DBudgetPlanTemplateStructure].Version ASC, [DBudgetPlanTemplateStructure].Sequence ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT(*) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.2
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Agus, Tuesday, 10 October 2017, 10:01 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersion]
(
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanID,
		BudgetPlanVersion,
		Description,
		Area,
		Unit,
		StatusID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DBudgetPlanVersion]
	WHERE
		BudgetPlanID = @in_BudgetPlanID AND
		BudgetPlanVersion = @in_BudgetPlanVersion
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
-- Last Modified	: Tjhai, Tue, 08 Agst 2017, 04:35 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersion_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DBudgetPlanVersion]
	                 INNER JOIN [TBudgetPlan] ON [TBudgetPlan].BudgetPlanID = [DBudgetPlanVersion].BudgetPlanID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DBudgetPlanVersion].BudgetPlanID ASC, [DBudgetPlanVersion].BudgetPlanVersion ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DBudgetPlanVersion].BudgetPlanID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionAdditional]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Thursday, 08 Jun 2017, 01:48 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionAdditional]
(
	@in_BudgetPlanVersionAdditionalID VARCHAR (32)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanVersionAdditionalID,
		BudgetPlanVersionVendorID,
		ItemID,
		Version,
		Sequence,
		ParentItemID,
		ParentVersion,
		ParentSequence,
		Info,
		Volume,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DBudgetPlanVersionAdditional]
	WHERE
		BudgetPlanVersionAdditionalID = @in_BudgetPlanVersionAdditionalID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionAdditional_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: lendra, Tue, 08 Agst 2017, 03:58 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionAdditional_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	/*
		SELECT * FROM MItem;
		SELECT * FROM MUoM;
		SELECT * FROM [DBudgetPlanVersionAdditional]
		LEFT JOIN [DBudgetPlanVersionVendor] ON [DBudgetPlanVersionVendor].BudgetPlanVersionVendorID=[DBudgetPlanVersionAdditional].BudgetPlanVersionVendorID
		LEFT JOIN [DBudgetPlanVersionPeriod] ON [DBudgetPlanVersionVendor].BudgetPlanVersionPeriodID=[DBudgetPlanVersionPeriod].BudgetPlanVersionPeriodID
		LEFT JOIN [MItem] ON [MItem].ItemID=[DBudgetPlanVersionAdditional].ItemID
		LEFT JOIN [MUoM] ON [MUoM].UoMID=[MItem].UoMID
	*/

	SET @var_FROM = 'FROM [DBudgetPlanVersionAdditional]
		LEFT JOIN [DBudgetPlanVersionVendor] ON [DBudgetPlanVersionVendor].BudgetPlanVersionVendorID=[DBudgetPlanVersionAdditional].BudgetPlanVersionVendorID
		LEFT JOIN [DBudgetPlanVersionPeriod] ON [DBudgetPlanVersionVendor].BudgetPlanVersionPeriodID=[DBudgetPlanVersionPeriod].BudgetPlanVersionPeriodID
		LEFT JOIN [MItem] ON [MItem].ItemID=[DBudgetPlanVersionAdditional].ItemID
		LEFT JOIN [MUoM] ON [MUoM].UoMID=[MItem].UoMID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DBudgetPlanVersionAdditional].BudgetPlanID ASC, [DBudgetPlanVersionAdditional].BudgetPlanVersion ASC, [DBudgetPlanVersionAdditional].VendorID ASC, [DBudgetPlanVersionAdditional].ItemID ASC, [DBudgetPlanVersionAdditional].Version ASC, [DBudgetPlanVersionAdditional].Sequence ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DBudgetPlanVersionAdditional].BudgetPlanID, [DBudgetPlanVersionAdditional].BudgetPlanVersion, [DBudgetPlanVersionAdditional].VendorID, [DBudgetPlanVersionAdditional].ItemID, [DBudgetPlanVersionAdditional].Version, [DBudgetPlanVersionAdditional].Sequence) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionAssignment]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Thursday, 19 Oct 2017, 09:03 AM
-- Last Modified	: Tjhai, Thursday, 19 Oct 2017, 09:07 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionAssignment]
(
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@in_VendorID VARCHAR (10)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanVersionStructureID,
		VendorID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DBudgetPlanVersionAssignment]
	WHERE
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID AND
		VendorID = @in_VendorID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionAssignment_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Thursday, 19 Oct 2017, 09:03 AM
-- Last Modified	: Tjhai, Thursday, 19 Oct 2017, 09:07 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionAssignment_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DBudgetPlanVersionAssignment]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DBudgetPlanVersionAssignment].BudgetPlanVersionStructureID ASC, [DBudgetPlanVersionAssignment].VendorID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DBudgetPlanVersionAssignment].BudgetPlanVersionStructureID, [DBudgetPlanVersionAssignment].VendorID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionEntry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Monday, 29 May 2017, 04:16 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionEntry]
(
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_VendorID VARCHAR (10),
	@in_BudgetPlanVersionStructureID VARCHAR (32)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanID,
		BudgetPlanVersion,
		VendorID,
		BudgetPlanVersionStructureID,
		Info,
		Volume,
		MaterialAmount,
		WageAmount,
		MiscAmount,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DBudgetPlanVersionEntry]
	WHERE
		BudgetPlanID = @in_BudgetPlanID AND
		BudgetPlanVersion = @in_BudgetPlanVersion AND
		VendorID = @in_VendorID AND
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionEntry_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Lendra, Tue, 08 Agst 2017, 02:32 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionEntry_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	/*

		SELECT 
		--DBudgetPlanVersionEntry.Info AS [Info], DBudgetPlanVersionEntry.Volume AS [Volume], DBudgetPlanVersionEntry.MaterialAmount AS [MaterialAmount], DBudgetPlanVersionEntry.WageAmount AS [WageAmount], DBudgetPlanVersionEntry.MiscAmount AS [MiscAmount], DBudgetPlanVersionVendor.VendorID AS [VendorID]
		*
		FROM [DBudgetPlanVersionEntry]
						LEFT JOIN [DBudgetPlanVersionVendor] ON [DBudgetPlanVersionVendor].BudgetPlanVersionVendorID = [DBudgetPlanVersionEntry].BudgetPlanVersionVendorID
						LEFT JOIN [DBudgetPlanVersionPeriod] ON [DBudgetPlanVersionPeriod].BudgetPlanVersionPeriodID = [DBudgetPlanVersionVendor].BudgetPlanVersionPeriodID
						LEFT JOIN  DBudgetPlanVersionStructure on DBudgetPlanVersionEntry.BudgetPlanVersionStructureID = DBudgetPlanVersionStructure.BudgetPlanVersionStructureID
						LEFT JOIN DBudgetPlanVersion ON DBudgetPlanVersionStructure.BudgetPlanID=[DBudgetPlanVersion].BudgetPlanID 
						AND DBudgetPlanVersionStructure.BudgetPlanVersion=[DBudgetPlanVersion].BudgetPlanVersion
		WHERE
		( DBudgetPlanVersionPeriod.BudgetPlanID = 'BPL-2017-00000001' ) AND ( DBudgetPlanVersionPeriod.BudgetPlanVersion = '1' ) AND ( DBudgetPlanVersionEntry.BudgetPlanVersionVendorID = '620b01497df44b82927d0a49e74c149f' ) AND ( DBudgetPlanVersionEntry.BudgetPlanVersionStructureID = '96ae7bf7f50f488b823fc216ee88e8f4' ) AND ( DBudgetPlanVersionVendor.VendorID = '1000000000' )

	*/

	SET @var_FROM = 'FROM [DBudgetPlanVersionEntry]
						LEFT JOIN [DBudgetPlanVersionVendor] ON [DBudgetPlanVersionVendor].BudgetPlanVersionVendorID = [DBudgetPlanVersionEntry].BudgetPlanVersionVendorID
						LEFT JOIN [DBudgetPlanVersionPeriod] ON [DBudgetPlanVersionPeriod].BudgetPlanVersionPeriodID = [DBudgetPlanVersionVendor].BudgetPlanVersionPeriodID
						LEFT JOIN  DBudgetPlanVersionStructure on DBudgetPlanVersionEntry.BudgetPlanVersionStructureID = DBudgetPlanVersionStructure.BudgetPlanVersionStructureID
						LEFT JOIN DBudgetPlanVersion ON DBudgetPlanVersionStructure.BudgetPlanID=[DBudgetPlanVersion].BudgetPlanID 
						AND DBudgetPlanVersionStructure.BudgetPlanVersion=[DBudgetPlanVersion].BudgetPlanVersion'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DBudgetPlanVersionPeriod].BudgetPlanID ASC, [DBudgetPlanVersionPeriod].BudgetPlanVersion ASC, [DBudgetPlanVersionVendor].VendorID ASC, [DBudgetPlanVersionEntry].BudgetPlanVersionStructureID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DBudgetPlanVersionEntry].BudgetPlanID, [DBudgetPlanVersionEntry].BudgetPlanVersion, [DBudgetPlanVersionEntry].VendorID, [DBudgetPlanVersionEntry].BudgetPlanVersionStructureID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:21 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:21 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionPeriod]
(
	@in_BudgetPlanVersionPeriodID VARCHAR (32)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanVersionPeriodID,
		BudgetPlanID,
		BudgetPlanVersion,
		PeriodVersion,
		BudgetPlanPeriodID,
		StatusID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DBudgetPlanVersionPeriod]
	WHERE
		BudgetPlanVersionPeriodID = @in_BudgetPlanVersionPeriodID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:21 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:21 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionPeriod_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DBudgetPlanVersionPeriod]
				     INNER JOIN [SBudgetPlanPeriod] ON [DBudgetPlanVersionPeriod].BudgetPlanPeriodID = [SBudgetPlanPeriod].BudgetPlanPeriodID
					 INNER JOIN [MStatus] ON [DBudgetPlanVersionPeriod].StatusID = [MStatus].StatusID AND [MStatus].TableName = ''DBudgetPlanVersionPeriod'' AND [MStatus].Visible=1 '
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DBudgetPlanVersionPeriod].BudgetPlanVersionPeriodID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DBudgetPlanVersionPeriod].BudgetPlanVersionPeriodID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.4
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 10:12 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionStructure]
(
	@in_BudgetPlanVersionStructureID VARCHAR (32)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanVersionStructureID,
		BudgetPlanID,
		BudgetPlanVersion,
		ItemID,
		Version,
		Sequence,
		ParentItemID,
		ParentVersion,
		ParentSequence,
		ItemVersionChildID,
		Specification,
		Volume,
		MaterialAmount,
		WageAmount,
		MiscAmount,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DBudgetPlanVersionStructure]
	WHERE
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionStructure_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.5
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: RezaS, Wednesday, 11 October 2017, 10:12 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionStructure_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( MAX ) = NULL,
	@in_Filter NVARCHAR ( MAX ) = NULL,
	@in_Having NVARCHAR ( MAX ) = NULL,
	@in_GroupBy NVARCHAR ( MAX ) = NULL,
	@in_OrderBy NVARCHAR ( MAX ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( MAX )
	DECLARE @var_FROM NVARCHAR( MAX )
	DECLARE @var_WHERE NVARCHAR( MAX )
	DECLARE @var_HAVING NVARCHAR( MAX )
	DECLARE @var_GROUPBY NVARCHAR( MAX )
	DECLARE @var_WHERECTE NVARCHAR( MAX )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	/*
	SELECT * FROM MBudgetPlanTemplate
	SELECT * FROM DBudgetPlanVersionStructure
	SELECT * FROM TBudgetPlan
	SELECT DISTINCT * 
	FROM [DBudgetPlanVersionStructure]
					 INNER JOIN [DBudgetPlanVersion] ON [DBudgetPlanVersionStructure].BudgetPlanID = [DBudgetPlanVersion].BudgetPlanID AND [DBudgetPlanVersion].BudgetPlanVersion = [DBudgetPlanVersionStructure].BudgetPlanVersion
					 INNER JOIN [TBudgetPlan] ON [DBudgetPlanVersion].BudgetPlanID = [TBudgetPlan].BudgetPlanID
					 INNER JOIN [MBudgetPlanTemplate] ON [MBudgetPlanTemplate].BudgetPlanTemplateID=[TBudgetPlan].BudgetPlanTemplateID
					 INNER JOIN [DItemVersion] ON [DBudgetPlanVersionStructure].ItemID = [DItemVersion].ItemID AND [DBudgetPlanVersionStructure].[Version] = [DItemVersion].[Version]
	                 INNER JOIN [MItem] ON [DBudgetPlanVersionStructure].ItemID = [MItem].ItemID
					 INNER JOIN [MItemGroup] ON [MItem].ItemGroupID = [MItemGroup].ItemGroupID 
					 INNER JOIN [MUoM] ON  MItem.UoMID = [MUoM].UoMID
					 LEFT JOIN [DBudgetPlanVersionEntry] on [DBudgetPlanVersionStructure].BudgetPlanVersionStructureID = [DBudgetPlanVersionEntry].BudgetPlanVersionStructureID
    WHERE [DBudgetPlanVersionStructure].BudgetPlanID = 'BPL-2017-00000014'

	SET @var_FROM = 'FROM [DBudgetPlanVersionStructure]
					 INNER JOIN [DBudgetPlanVersion] ON [DBudgetPlanVersionStructure].BudgetPlanID = [DBudgetPlanVersion].BudgetPlanID AND [DBudgetPlanVersion].BudgetPlanVersion = [DBudgetPlanVersionStructure].BudgetPlanVersion
					 INNER JOIN [TBudgetPlan] ON [DBudgetPlanVersion].BudgetPlanID = [TBudgetPlan].BudgetPlanID
					 INNER JOIN [MBudgetPlanTemplate] ON [MBudgetPlanTemplate].BudgetPlanTemplateID=[TBudgetPlan].BudgetPlanTemplateID
					 INNER JOIN [DItemVersion] ON [DBudgetPlanVersionStructure].ItemID = [DItemVersion].ItemID AND [DBudgetPlanVersionStructure].[Version] = [DItemVersion].[Version]
	                 INNER JOIN [MItem] ON [DBudgetPlanVersionStructure].ItemID = [MItem].ItemID
					 INNER JOIN [MItemGroup] ON [MItem].ItemGroupID = [MItemGroup].ItemGroupID 
					 INNER JOIN [MUoM] ON  MItem.UoMID = [MUoM].UoMID
					 LEFT JOIN [DBudgetPlanVersionEntry] on [DBudgetPlanVersionStructure].BudgetPlanVersionStructureID = [DBudgetPlanVersionEntry].BudgetPlanVersionStructureID
					 LEFT JOIN [UConfig] ON [UConfig].Key2=''BudgetPlanTemplate'' AND  [UConfig].Key1 =''ItemTypeID'' AND  [UConfig].Key3 =[MItemGroup].ItemTypeID '  
	*/
	SET @var_FROM = 'FROM [DBudgetPlanVersionStructure]
					 INNER JOIN [DBudgetPlanVersion] ON [DBudgetPlanVersionStructure].BudgetPlanID = [DBudgetPlanVersion].BudgetPlanID AND [DBudgetPlanVersion].BudgetPlanVersion = [DBudgetPlanVersionStructure].BudgetPlanVersion
					 INNER JOIN [TBudgetPlan] ON [DBudgetPlanVersion].BudgetPlanID = [TBudgetPlan].BudgetPlanID
					 INNER JOIN [MBudgetPlanTemplate] ON [MBudgetPlanTemplate].BudgetPlanTemplateID=[TBudgetPlan].BudgetPlanTemplateID
					 INNER JOIN [DItemVersion] ON [DBudgetPlanVersionStructure].ItemID = [DItemVersion].ItemID AND [DBudgetPlanVersionStructure].[Version] = [DItemVersion].[Version]
	                 INNER JOIN [MItem] ON [DBudgetPlanVersionStructure].ItemID = [MItem].ItemID
					 INNER JOIN [MItemGroup] ON [MItem].ItemGroupID = [MItemGroup].ItemGroupID 
					 INNER JOIN [MUoM] ON  MItem.UoMID = [MUoM].UoMID
					 LEFT JOIN [DBudgetPlanVersionEntry] on [DBudgetPlanVersionStructure].BudgetPlanVersionStructureID = [DBudgetPlanVersionEntry].BudgetPlanVersionStructureID
					 LEFT JOIN [UConfig] ON [UConfig].Key2=''BudgetPlanTemplate'' AND  [UConfig].Key1 =''ItemTypeID'' AND [UConfig].Key3 =[MItemGroup].ItemTypeID 
					 LEFT JOIN DItemVersionChildFormula ON DItemVersionChildFormula.ItemVersionChildID = [DBudgetPlanVersionStructure].ItemVersionChildID
					 LEFT JOIN DBudgetPlanVersionAssignment ON DBudgetPlanVersionAssignment.BudgetPlanVersionStructureID = DBudgetPlanVersionStructure.BudgetPlanVersionStructureID
					 LEFT JOIN MVendor ON MVendor.VendorID = DBudgetPlanVersionAssignment.VendorID
					 LEFT JOIN (SELECT BudgetPlanID AS BPID,BudgetPlanVersion AS BPV, ItemID AS ITMIDBP4, [Version] AS VBP4, [Sequence] AS SEQBP4 ,ChildConfig AS ChildConfigs,ChildType as ChildTypes, MIGRP.MITYPD AS ParentTypeID , ParentConfig.Desc1 as ParentDesc,
						CASE 
							WHEN ParentConfig.Desc1 =''TRUE''
								AND (DB2.ChildConfig=''TRUE'' OR DB2.ChildConfig IS NULL) 
								AND (DF.WageAmount+DF.MiscAmount+DF.MaterialAmount) <=0
							THEN ''FALSE''
							WHEN ParentConfig.Desc1 =''FALSE''
								AND (DB2.ChildConfig=''TRUE'' OR DB2.ChildConfig IS NULL) 
								AND (((DF.WageAmount+DF.MiscAmount+DF.MaterialAmount) <=0) OR (DF.Volume<=0))
							THEN ''FALSE''
						ELSE ''TRUE''
						END AS Validate
						,* FROM DBudgetPlanVersionStructure AS DF
						left join (select  ItemID as MITM,ItemGroupID from MItem)MI on MI.MITM = DF.ItemID
						LEFT JOIN (select  ItemGroupID as MITMGRP,ItemTypeID as MITYPD from MItemGroup)MIGRP ON MI.ItemGroupID = MIGRP.MITMGRP
						LEFT JOIN [UConfig]ParentConfig ON ParentConfig.Key1=''BudgetPlanValidator'' AND  ParentConfig.Key2 =''ValidateIfHasChild'' AND ParentConfig.Key3 =MIGRP.MITYPD 
						LEFT JOIN( 
							 SELECT 
							  DS1.ParentItemID AS ParentItemIDS,DS1.ParentSequence AS ParentSequenceS,DS1.ParentVersion AS ParentVersionS,DS1.BudgetPlanID AS BudgetPlanIDS,DS1.BudgetPlanVersion AS BudgetPlanVersionS,
							  min(UY.Desc1) ChildConfig, MIN(mg.ItemTypeID) AS ChildType
								from DBudgetPlanVersionStructure AS DS1 
								left join MItem MT on MT.ItemID = DS1.ItemID left join MItemGroup mg on mg.ItemGroupID = MT.ItemGroupID  
								LEFT JOIN [UConfig]UY ON UY.Key2=''ValidateIfHasChild'' AND  UY.Key1 =''BudgetPlanValidator'' AND  UY.Key3= mg.ItemTypeID 
								where DS1.ParentItemID<> ''0'' 
								group by DS1.ParentItemID,DS1.ParentVersion,DS1.ParentSequence,DS1.BudgetPlanVersion,DS1.BudgetPlanID
							 )DB2 ON DB2.ParentItemIDS = DF.ItemID and DB2.[ParentVersionS] = DF.[Version] AND DB2.ParentSequenceS = DF.[Sequence] AND DB2.BudgetPlanIDS = DF.BudgetPlanID AND DB2.BudgetPlanVersionS = DF.BudgetPlanVersion
					)DB4 ON DBudgetPlanVersionStructure.BudgetPlanID = DB4.BPID AND DBudgetPlanVersionStructure.BudgetPlanVersion = DB4.BPV AND DBudgetPlanVersionStructure.ItemID = DB4.ITMIDBP4 AND DBudgetPlanVersionStructure.[Version] = DB4.VBP4 AND DBudgetPlanVersionStructure.[Sequence] = DB4.SEQBP4
					'
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DBudgetPlanVersionStructure].BudgetPlanVersionStructureID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END

			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT DISTINCT ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ '),CTE2 AS (
			   SELECT ROW_NUMBER() OVER ( ORDER BY CTE.BudgetPlanVersionStructureID  ASC  ) AS RowNo,  * FROM CTE 
			)
			SELECT * FROM CTE2 ' + @var_WHERECTE
			--SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DBudgetPlanVersionStructure].BudgetPlanVersionStructureID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Lendra, Wed, 09 Agst 2017, 03:00 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionVendor]
(
	@in_BudgetPlanVersionVendorID VARCHAR (32)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanVersionVendorID,
		BudgetPlanVersionPeriodID,
		VendorID,
		StartDate,
		EndDate,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost,
		FeePercentage		
	FROM [dbo].[DBudgetPlanVersionVendor]
	WHERE
		BudgetPlanVersionVendorID = @in_BudgetPlanVersionVendorID 
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DBudgetPlanVersionVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Lendra, Fri, 2 Jun 2017, 12:33 AM
-- Last Modified	: Lendra, Mon, 7 Agst 2017, 16:07 AM
-- Last Modified	: Lendra, Tue, 8 Agst 2017, 11:07 AM

/*
	FROM [DBudgetPlanVersionVendor]
	LEFT JOIN [MVendor] ON [DBudgetPlanVersionVendor].VendorID = [MVendor].VendorID

	FROM [DBudgetPlanVersionVendor]
				LEFT JOIN [MVendor] ON [DBudgetPlanVersionVendor].VendorID = [MVendor].VendorID
				LEFT JOIN [DBudgetPlanVersion] ON [DBudgetPlanVersionVendor].BudgetPlanID=[DBudgetPlanVersion].BudgetPlanID 
					AND [DBudgetPlanVersionVendor].BudgetPlanVersion=[DBudgetPlanVersion].BudgetPlanVersion
				LEFT JOIN [TBudgetPlan] on [TBudgetPlan].BudgetPlanID=[DBudgetPlanVersionVendor].BudgetPlanID
				LEFT JOIN [MProject] ON [MProject].ProjectID=[TBudgetPlan].ProjectID
				LEFT JOIN [MCluster] ON [MCluster].ClusterID=[TBudgetPlan].ClusterID
				LEFT JOIN [MUnitType] ON [MUnitType].UnitTypeID=[TBudgetPlan].ClusterID
				LEFT JOIN [MBudgetPlanTemplate] ON [MBudgetPlanTemplate].BudgetPlanTemplateID=[TBudgetPlan].BudgetPlanTemplateID
*/
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DBudgetPlanVersionVendor_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( MAX )
	DECLARE @var_dateNow NVARCHAR( 25 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	/*

		SELECT 
		DBudgetPlanVersionPeriod.BudgetPlanID AS [BudgetPlanID], DBudgetPlanVersionVendor.BudgetPlanVersionVendorID AS [BudgetPlanVersionVendorID], DBudgetPlanVersionVendor.BudgetPlanVersionPeriodID AS [BudgetPlanVersionPeriodID], DBudgetPlanVersionPeriod.BudgetPlanVersion AS [BudgetPlanVersion], DBudgetPlanVersion.Description AS [Description], MBudgetPlanTemplate.BudgetPlanTemplateDesc AS [BudgetPlanTemplateDesc], MProject.ProjectDesc AS [ProjectDesc], MCluster.ClusterDesc AS [ClusterDesc], MUnitType.UnitTypeDesc AS [UnitTypeDesc], DBudgetPlanVersionVendor.StartDate AS [StartDate], DBudgetPlanVersionVendor.EndDate AS [EndDate], DBudgetPlanVersion.StatusID AS [StatusID], MStatus.StatusDesc AS [StatusDesc], MStatus.StatusDesc AS [StatusDesc], DBudgetPlanVersionVendor.FeePercentage AS [FeePercentage]
		FROM [DBudgetPlanVersionVendor]
					LEFT JOIN [MStatus] ON [MStatus].StatusID = [DBudgetPlanVersionVendor].StatusID AND [MStatus].TableName = 'DBudgetPlanVersion'
					INNER JOIN [DBudgetPlanVersionPeriod] ON [DBudgetPlanVersionVendor].BudgetPlanVersionPeriodID = [DBudgetPlanVersionPeriod].BudgetPlanVersionPeriodID
					INNER JOIN [DBudgetPlanVersion] ON [DBudgetPlanVersion].BudgetPlanID=[DBudgetPlanVersionPeriod].BudgetPlanID AND [DBudgetPlanVersion].BudgetPlanVersion=[DBudgetPlanVersionPeriod].BudgetPlanVersion
					INNER JOIN [MVendor] ON [DBudgetPlanVersionVendor].VendorID = [MVendor].VendorID
					INNER JOIN [TBudgetPlan] on [TBudgetPlan].BudgetPlanID=[DBudgetPlanVersionPeriod].BudgetPlanID
					LEFT JOIN [MProject] ON [MProject].ProjectID=[TBudgetPlan].ProjectID
					LEFT JOIN [MCluster] ON [MCluster].ClusterID=[TBudgetPlan].ClusterID
					LEFT JOIN [MUnitType] ON [MUnitType].UnitTypeID=[TBudgetPlan].UnitTypeID
					LEFT JOIN [MBudgetPlanTemplate] ON [MBudgetPlanTemplate].BudgetPlanTemplateID=[TBudgetPlan].BudgetPlanTemplateID
		WHERE
		( DBudgetPlanVersionVendor.VendorID = '1000000000' ) AND ( '2017/08/11 10:19:55' BETWEEN DBudgetPlanVersionVendor.StartDate AND DBudgetPlanVersionVendor.EndDate ) AND ( DBudgetPlanVersion.StatusID = '2' )
				*/
			
	SET @var_FROM = 'FROM [DBudgetPlanVersionVendor]
					LEFT JOIN [MStatus] ON [MStatus].StatusID = [DBudgetPlanVersionVendor].StatusID AND [MStatus].TableName = ''DBudgetPlanVersion''
					INNER JOIN [DBudgetPlanVersionPeriod] ON [DBudgetPlanVersionVendor].BudgetPlanVersionPeriodID = [DBudgetPlanVersionPeriod].BudgetPlanVersionPeriodID
					INNER JOIN [DBudgetPlanVersion] ON [DBudgetPlanVersion].BudgetPlanID=[DBudgetPlanVersionPeriod].BudgetPlanID AND [DBudgetPlanVersion].BudgetPlanVersion=[DBudgetPlanVersionPeriod].BudgetPlanVersion
					INNER JOIN [MVendor] ON [DBudgetPlanVersionVendor].VendorID = [MVendor].VendorID
					INNER JOIN [TBudgetPlan] on [TBudgetPlan].BudgetPlanID=[DBudgetPlanVersionPeriod].BudgetPlanID
					LEFT JOIN [MProject] ON [MProject].ProjectID=[TBudgetPlan].ProjectID
					LEFT JOIN [MCluster] ON [MCluster].ClusterID=[TBudgetPlan].ClusterID
					LEFT JOIN [MUnitType] ON [MUnitType].UnitTypeID=[TBudgetPlan].UnitTypeID
					LEFT JOIN [MBudgetPlanTemplate] ON [MBudgetPlanTemplate].BudgetPlanTemplateID=[TBudgetPlan].BudgetPlanTemplateID'
					
	
	SET @var_dateNow=convert(varchar(25), getdate(), 120)

	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter 
		--+ ' AND ([DBudgetPlanVersionVendor].StartDate<=''' + @var_dateNow + ''') AND (DBudgetPlanVersionVendor.EndDate>=''' + @var_dateNow + ''') AND ([DBudgetPlanVersion].StatusID=2)'
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DBudgetPlanVersionVendor].BudgetPlanVersionVendorID ASC, [DBudgetPlanVersionVendor].BudgetPlanVersionPeriodID ASC, [DBudgetPlanVersionVendor].VendorID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DBudgetPlanVersionVendor].BudgetPlanVersionVendorID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemGroupParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
-- Last Modified	: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemGroupParameter]
(
	@in_ItemGroupID VARCHAR (3),
	@in_ParameterID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemGroupID,
		ParameterID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemGroupParameter]
	WHERE
		ItemGroupID = @in_ItemGroupID AND
		ParameterID = @in_ParameterID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemGroupParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
-- Last Modified	: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemGroupParameter_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '[DItemGroupParameter].*,[MParameter].ParameterDesc'
	
	SET @var_FROM = 'FROM [DItemGroupParameter]LEFT JOIN [MItemGroup] ON [DItemGroupParameter].ItemGroupID = [MItemGroup].ItemGroupID   LEFT JOIN [MParameter] ON [DItemGroupParameter].ParameterID = [MParameter].ParameterID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemGroupParameter].ItemGroupID ASC, [DItemGroupParameter].ParameterID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DItemGroupParameter].ItemGroupID, [DItemGroupParameter].ParameterID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemParameter]
(
	@in_ItemID VARCHAR (20),
	@in_ItemGroupID VARCHAR (3),
	@in_ParameterID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemID,
		ItemGroupID,
		ParameterID,
		Value,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemParameter]
	WHERE
		ItemID = @in_ItemID AND
		ItemGroupID = @in_ItemGroupID AND
		ParameterID = @in_ParameterID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemParameter_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DItemParameter]
					 LEFT JOIN [MParameter] ON [DItemParameter].ParameterID = [MParameter].ParameterID '
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemParameter].ItemID ASC, [DItemParameter].ItemGroupID ASC, [DItemParameter].ParameterID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DItemParameter].ItemID, [DItemParameter].ItemGroupID, [DItemParameter].ParameterID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemPrice]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemPrice]
(
	@in_ItemPriceID VARCHAR (32)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemPriceID,
		ItemID,
		RegionID,
		ProjectID,
		ClusterID,
		UnitTypeID,
		PriceTypeID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemPrice]
	WHERE
		ItemPriceID = @in_ItemPriceID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemPrice_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Rony, Friday, 28 Apr 2017, 05:10 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemPrice_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DItemPrice]
					 LEFT JOIN [MPriceType] ON [MPriceType].PriceTypeID = [DItemPrice].PriceTypeID
					 LEFT JOIN [MCluster] ON [MCluster].ClusterID = [DItemPrice].ClusterID
					 LEFT JOIN [MProject] ON [MProject].ProjectID = [DItemPrice].ProjectID
					 LEFT JOIN [MRegion] ON [MRegion].RegionID = [DItemPrice].RegionID
					 LEFT JOIN [MUnitType] ON [MUnitType].UnitTypeID = [DItemPrice].UnitTypeID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemPrice].ItemID ASC, [DItemPrice].PriceTypeID ASC, [DItemPrice].RegionID ASC, [DItemPrice].ProjectID ASC, [DItemPrice].ClusterID ASC, [DItemPrice].UnitTypeID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DItemPrice].ItemPriceID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemPriceVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemPriceVendor]
(
	@in_ItemPriceID VARCHAR (32),
	@in_VendorID VARCHAR (10)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemPriceID,
		VendorID,
		IsDefault,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemPriceVendor]
	WHERE
		ItemPriceID = @in_ItemPriceID AND
		VendorID = @in_VendorID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemPriceVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemPriceVendor_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DItemPriceVendor]
	                 LEFT JOIN [MVendor] ON [MVendor].VendorID = [DItemPriceVendor].VendorID
					 LEFT JOIN [UConfig] ON [UConfig].Desc3 = [DItemPriceVendor].VendorID AND [UConfig].Key3=''ItemPriceVendor'''
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemPriceVendor].ItemPriceID ASC, [DItemPriceVendor].VendorID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DItemPriceVendor].ItemPriceID, [DItemPriceVendor].VendorID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemPriceVendorPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemPriceVendorPeriod]
(
	@in_ItemPriceID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_ValidFrom DATETIME2
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemPriceID,
		VendorID,
		ValidFrom,
		ValidTo,
		CurrencyID,
		Amount,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemPriceVendorPeriod]
	WHERE
		ItemPriceID = @in_ItemPriceID AND
		VendorID = @in_VendorID AND
		ValidFrom = @in_ValidFrom
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemPriceVendorPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemPriceVendorPeriod_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'

	SET @var_FROM = 'FROM [DItemPriceVendorPeriod]
					 INNER JOIN [DItemPriceVendor] ON [DItemPriceVendor].VendorID = [DItemPriceVendorPeriod].VendorID AND [DItemPriceVendor].ItemPriceID = [DItemPriceVendorPeriod].ItemPriceID  
					 INNER JOIN [DItemPrice] ON [DItemPriceVendor].ItemPriceID = [DItemPrice].ItemPriceID
					 INNER JOIN [MCurrency] ON [MCurrency].CurrencyID = [DItemPriceVendorPeriod].CurrencyID
					 LEFT JOIN [MVendor] ON [MVendor].VendorID = [DItemPriceVendorPeriod].VendorID
					 INNER JOIN [MItem] ON [DItemPrice].ItemID = [MItem].ItemID 
					 LEFT JOIN [UConfig] ON [UConfig].Desc3 = [DItemPriceVendor].VendorID AND [UConfig].Key3=''ItemPriceVendor'''
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemPriceVendorPeriod].ItemPriceID ASC, [DItemPriceVendorPeriod].VendorID ASC, [DItemPriceVendorPeriod].ValidFrom ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT(*) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemVersion]
(
	@in_ItemID VARCHAR (20),
	@in_Version INT
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemID,
		Version,
		VersionDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemVersion]
	WHERE
		ItemID = @in_ItemID AND
		Version = @in_Version
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemVersion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Lendra, Wed, 26 Apr 2017, 09:45 AM
--					  Merubah @var_FROM dan COUNT([DItemVersion].ItemID, [DItemVersion]Version) => COUNT([DItemVersion].ItemID)
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemVersion_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	/*
	
	SELECT 
	*
	FROM
	DItemVersion
	LEFT JOIN MItem ON MItem.ItemID=DItemVersion.ItemID
	LEFT JOIN MItemGroup ON MItemGroup.ItemGroupID=MItem.ItemGroupID
	LEFT JOIN MItemType ON MItemType.ItemTypeID=MItemGroup.ItemTypeID
	
	*/

	SET @var_FROM = 'FROM DItemVersion
	LEFT JOIN MItem ON MItem.ItemID=DItemVersion.ItemID	
	LEFT JOIN MUoM ON MUoM.UoMID=MItem.UoMID
	LEFT JOIN MItemGroup ON MItemGroup.ItemGroupID=MItem.ItemGroupID
	LEFT JOIN MItemType ON MItemType.ItemTypeID=MItemGroup.ItemTypeID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemVersion].ItemID ASC, [DItemVersion].Version ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DItemVersion].ItemID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	--select @var_CMD

	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemVersionChild]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemVersionChild]
(
	@in_ItemVersionChildID VARCHAR (8)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemVersionChildID,
		ItemID,
		Version,
		ChildItemID,
		ChildVersion,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemVersionChild]
	WHERE
		ItemVersionChildID = @in_ItemVersionChildID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemVersionChild_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemVersionChild_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	/*	
	SELECT 
		[DItemVersionChild].ItemVersionChildID,
		[DItemVersionChild].ItemID,
		[DItemVersionChild].Version,
		[DItemVersionChild].ChildItemID,
		[DItemVersionChild].ChildVersion,
		[DItemVersion].VersionDesc,
		[DItemVersionChildFormula].Coefficient,
		[MUoM].UoMDesc,
		[DItemVersionChildFormula].Formula
	FROM [DItemVersionChild]
		LEFT JOIN [DItemVersion] ON [DItemVersion].ItemID=[DItemVersionChild].ChildItemID AND [DItemVersion].Version=[DItemVersionChild].ChildVersion		
		LEFT JOIN [DItemVersionChildFormula] ON [DItemVersionChildFormula].ItemVersionChildID=[DItemVersionChild].ItemVersionChildID	
		LEFT JOIN [MItem] ON [MItem].ItemID=[DItemVersionChild].ChildItemID
		LEFT JOIN [MUoM] ON [MUoM].UoMID=[MItem].UoMID
	*/
	SET @var_FROM = 'FROM [DItemVersionChild]
		LEFT JOIN [DItemVersion] ON [DItemVersion].ItemID=[DItemVersionChild].ChildItemID AND [DItemVersion].Version=[DItemVersionChild].ChildVersion		
		LEFT JOIN [DItemVersionChildFormula] ON [DItemVersionChildFormula].ItemVersionChildID=[DItemVersionChild].ItemVersionChildID	
		LEFT JOIN [MItem] ON [MItem].ItemID=[DItemVersionChild].ChildItemID
		LEFT JOIN [MItemGroup] ON [MItemGroup].ItemGroupID=MItem.ItemGroupID
		LEFT JOIN [MItemType] ON [MItemType].ItemTypeID=MItemGroup.ItemTypeID
		LEFT JOIN [MUoM] ON [MUoM].UoMID=[MItem].UoMID
		LEFT JOIN [UConfig] ON [UConfig].Key2=''BudgetPlanTemplate'' AND  [UConfig].Key1 =''ItemTypeID'' AND  [UConfig].Key3 =[MItemGroup].ItemTypeID '  
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemVersionChild].ItemVersionChildID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DItemVersionChild].ItemVersionChildID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemVersionChildAlt]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemVersionChildAlt]
(
	@in_ItemVersionChildID VARCHAR (8),
	@in_ItemID VARCHAR (20),
	@in_Version INT
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemVersionChildID,
		ItemID,
		Version,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemVersionChildAlt]
	WHERE
		ItemVersionChildID = @in_ItemVersionChildID AND
		ItemID = @in_ItemID AND
		Version = @in_Version
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemVersionChildAlt_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Lendra, Wed, 10 May 2017, 18:05 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemVersionChildAlt_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DItemVersionChildAlt]
					LEFT JOIN [DItemVersionChild] ON [DItemVersionChild].ItemVersionChildID=[DItemVersionChildAlt].ItemVersionChildID	
					LEFT JOIN [DItemVersion] ON [DItemVersion].ItemID=[DItemVersionChildAlt].ItemID AND [DItemVersion].Version=[DItemVersionChildAlt].Version	
					LEFT JOIN [DItemVersionChildFormula] ON [DItemVersionChild].ItemVersionChildID = [DItemVersionChildFormula].ItemVersionChildID
					LEFT JOIN [MItem] ON [MItem].ItemID=[DItemVersionChildAlt].ItemID
					LEFT JOIN [MItemGroup] ON [MItemGroup].ItemGroupID=MItem.ItemGroupID
					LEFT JOIN [MItemType] ON [MItemType].ItemTypeID=MItemGroup.ItemTypeID
					LEFT JOIN [MUoM] ON [MUoM].UoMID=[MItem].UoMID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemVersionChildAlt].ItemVersionChildID ASC, [DItemVersionChildAlt].ItemID ASC, [DItemVersionChildAlt].Version ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DItemVersionChildAlt].ItemVersionChildID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemVersionChildFormula]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemVersionChildFormula]
(
	@in_ItemVersionChildID VARCHAR (8)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemVersionChildID,
		Coefficient,
		Formula,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DItemVersionChildFormula]
	WHERE
		ItemVersionChildID = @in_ItemVersionChildID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DItemVersionChildFormula_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DItemVersionChildFormula_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DItemVersionChildFormula]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DItemVersionChildFormula].ItemVersionChildID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DItemVersionChildFormula].ItemVersionChildID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DPackageList]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DPackageList]
(
	@in_PackageID VARCHAR (20),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		PackageID,
		BudgetPlanID,
		BudgetPlanVersion,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DPackageList]
	WHERE
		PackageID = @in_PackageID AND
		BudgetPlanID = @in_BudgetPlanID AND
		BudgetPlanVersion = @in_BudgetPlanVersion
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DPackageList_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DPackageList_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	/*
	SELECT * 
	FROM [DPackageList]
		LEFT JOIN [TPackage] ON [TPackage].PackageID=[DPackageList].PackageID
		LEFT JOIN [DBudgetPlanVersion] ON [DBudgetPlanVersion].BudgetPlanID=[DPackageList].BudgetPlanID 
			AND [DBudgetPlanVersion].BudgetPlanVersion=[DPackageList].BudgetPlanVersion
		LEFT JOIN [MStatus] ON [MStatus].StatusID=[DBudgetPlanVersion].StatusID AND [MStatus].TableName='DBudgetPlanVersion'
		LEFT JOIN [TBudgetPlan] ON [TBudgetPlan].BudgetPlanID=[DPackageList].BudgetPlanID
		LEFT JOIN [MProject] ON [MProject].ProjectID=[TBudgetPlan].ProjectID
		LEFT JOIN [mCompany] ON [MCompany].CompanyID=[MProject].CompanyID
		LEFT JOIN [MBudgetPlanTemplate] ON [MBudgetPlanTemplate].BudgetPlanTemplateID=[TBudgetPlan].BudgetPlanTemplateID
		LEFT JOIN [MBudgetPlanType] ON [MBudgetPlanType].BudgetPlanTypeID=[MBudgetPlanTemplate].BudgetPlanTypeID


	USE [SmartBetty]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[sel_DPackageList_BC]
		@in_Skip = NULL,
		@in_Length = NULL,
		@in_IsCount = false,
		@in_Select = N'DPackageList.PackageID AS [PackageID], TPackage.StatusID AS [PackageStatusID]',
		@in_Filter = N'( DPackageList.BudgetPlanID = ''BPL02'' ) AND ( DPackageList.BudgetPlanVersion = ''2'' ) AND ( TPackage.StatusID >= ''3'' )'

SELECT	'Return Value' = @return_value

GO

	*/

	SET @var_FROM = 'FROM [DPackageList] 
		LEFT JOIN [TPackage] ON [TPackage].PackageID=[DPackageList].PackageID
		LEFT JOIN [DBudgetPlanVersion] ON [DBudgetPlanVersion].BudgetPlanID=[DPackageList].BudgetPlanID 
			AND [DBudgetPlanVersion].BudgetPlanVersion=[DPackageList].BudgetPlanVersion 
		LEFT JOIN [MStatus] ON [MStatus].StatusID=[DBudgetPlanVersion].StatusID AND [MStatus].TableName=''DBudgetPlanVersion'' 
		LEFT JOIN [TBudgetPlan] ON [TBudgetPlan].BudgetPlanID=[DPackageList].BudgetPlanID
		LEFT JOIN [MUnitType] ON [TBudgetPlan].UnitTypeID = [MUnitType].UnitTypeID
		LEFT JOIN [MProject] ON [MProject].ProjectID=[TBudgetPlan].ProjectID 
		LEFT JOIN [MLocation] ON [MProject].LocationID = [MLocation].LocationID
		LEFT JOIN [MRegion] ON [MLocation].RegionID= [MRegion].RegionID
		LEFT JOIN [MCluster] ON [MCluster].ClusterID=[TBudgetPlan].ClusterID 
		LEFT JOIN [MCompany] ON [MCompany].CompanyID=[MProject].CompanyID
		LEFT JOIN [MDivision] ON [MProject].DivisionID= [MDivision].DivisionID
		LEFT JOIN [MBudgetPlanTemplate] ON [MBudgetPlanTemplate].BudgetPlanTemplateID=[TBudgetPlan].BudgetPlanTemplateID 
		LEFT JOIN [MBudgetPlanType] ON [MBudgetPlanType].BudgetPlanTypeID=[MBudgetPlanTemplate].BudgetPlanTypeID'

	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DPackageList].PackageID ASC, [DPackageList].BudgetPlanID ASC, [DPackageList].BudgetPlanVersion ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DPackageList].BudgetPlanID, [DPackageList].BudgetPlanVersion) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DRoleMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DRoleMenuAction]
(
	@in_RoleID VARCHAR (8),
	@in_MenuID VARCHAR (50),
	@in_ActionID VARCHAR (30)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		RoleID,
		MenuID,
		ActionID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DRoleMenuAction]
	WHERE
		RoleID = @in_RoleID AND
		MenuID = @in_MenuID AND
		ActionID = @in_ActionID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DRoleMenuAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DRoleMenuAction_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	/*
		SELECT * FROM [SMENU];
		SELECT *
		FROM [DRoleMenuAction]
		LEFT JOIN [SMenu] ON [DRoleMenuAction].MenuID = [SMenu].MenuID
	*/

	SET @var_FROM = 'FROM [DRoleMenuAction]
					 INNER JOIN [SMenu] ON [DRoleMenuAction].MenuID = [SMenu].MenuID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DRoleMenuAction].RoleID ASC, [DRoleMenuAction].MenuID ASC, [DRoleMenuAction].ActionID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DRoleMenuAction].RoleID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DRoleMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DRoleMenuObject]
(
	@in_RoleID VARCHAR (8),
	@in_MenuID VARCHAR (50),
	@in_ObjectID VARCHAR (30)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		RoleID,
		MenuID,
		ObjectID,
		Value,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[DRoleMenuObject]
	WHERE
		RoleID = @in_RoleID AND
		MenuID = @in_MenuID AND
		ObjectID = @in_ObjectID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_DRoleMenuObject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_DRoleMenuObject_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [DRoleMenuObject]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[DRoleMenuObject].RoleID ASC, [DRoleMenuObject].MenuID ASC, [DRoleMenuObject].ObjectID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([DRoleMenuObject].RoleID, [DRoleMenuObject].MenuID, [DRoleMenuObject].ObjectID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MBudgetPlanTemplate]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MBudgetPlanTemplate]
(
	@in_BudgetPlanTemplateID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanTemplateID,
		BudgetPlanTemplateDesc,
		BudgetPlanTypeID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MBudgetPlanTemplate]
	WHERE
		BudgetPlanTemplateID = @in_BudgetPlanTemplateID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MBudgetPlanTemplate_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MBudgetPlanTemplate_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = 'MBudgetPlanTemplate.*,MBudgetPlanType.BudgetPlanTypeDesc'
	
	SET @var_FROM = 'FROM [MBudgetPlanTemplate] LEFT JOIN [MBudgetPlanType] ON [MBudgetPlanTemplate].BudgetPlanTypeID = [MBudgetPlanType].BudgetPlanTypeID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MBudgetPlanTemplate].BudgetPlanTemplateID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MBudgetPlanTemplate].BudgetPlanTemplateID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MBudgetPlanType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 28 Apr 2017, 09:19 AM
-- Last Modified	: Tjhai, Friday, 28 Apr 2017, 09:19 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MBudgetPlanType]
(
	@in_BudgetPlanTypeID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanTypeID,
		BudgetPlanTypeDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MBudgetPlanType]
	WHERE
		BudgetPlanTypeID = @in_BudgetPlanTypeID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MBudgetPlanType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 28 Apr 2017, 09:19 AM
-- Last Modified	: Tjhai, Friday, 28 Apr 2017, 09:19 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MBudgetPlanType_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MBudgetPlanType]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MBudgetPlanType].BudgetPlanTypeID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MBudgetPlanType].BudgetPlanTypeID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MCluster]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MCluster]
(
	@in_ClusterID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ClusterID,
		ClusterDesc,
		ProjectID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MCluster]
	WHERE
		ClusterID = @in_ClusterID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MCluster_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MCluster_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = 'MCluster.*,MProject.ProjectDesc'
	
	SET @var_FROM = 'FROM [MCluster] LEFT JOIN [MProject] ON [MCluster].ProjectID = [MProject].ProjectID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MCluster].ClusterID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MCluster].ClusterID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MCompany]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MCompany]
(
	@in_CompanyID VARCHAR (4)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		CompanyID,
		CompanyDesc,
		CountryID,
		City,
		Street,
		Postal,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MCompany]
	WHERE
		CompanyID = @in_CompanyID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MCompany_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Rony, Monday, 17 Apr 2017, 4:43 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MCompany_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MCompany]
					 LEFT JOIN MCountry ON MCountry.CountryID = MCompany.CountryID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MCompany].CompanyID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MCompany].CompanyID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MCountry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MCountry]
(
	@in_CountryID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		CountryID,
		CountryDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MCountry]
	WHERE
		CountryID = @in_CountryID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MCountry_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MCountry_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MCountry]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MCountry].CountryID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MCountry].CountryID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MCurrency]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MCurrency]
(
	@in_CurrencyID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		CurrencyID,
		CurrencyDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MCurrency]
	WHERE
		CurrencyID = @in_CurrencyID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MCurrency_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MCurrency_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MCurrency]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MCurrency].CurrencyID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MCurrency].CurrencyID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MDivision]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MDivision]
(
	@in_DivisionID VARCHAR (4)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		DivisionID,
		DivisionDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MDivision]
	WHERE
		DivisionID = @in_DivisionID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MDivision_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MDivision_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MDivision]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MDivision].DivisionID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MDivision].DivisionID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MItem]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MItem]
(
	@in_ItemID VARCHAR (20)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemID,
		ItemDesc,
		ItemGroupID,
		UoMID,
		IsActive,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MItem]
	WHERE
		ItemID = @in_ItemID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MItem_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Rony, Thursday, 28 Apr 2017, 10:00 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MItem_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'

		/*
			
			LEFT JOIN [DItemVersion] ON [DItemVersion].ItemID = [MItem].ItemID 
					 LEFT JOIN [DItemVersionChild] ON [DItemVersion].ItemID = [DItemVersionChild].ItemID AND [DItemVersion].Version = [DItemVersionChild].Version 

		*/

	SET @var_FROM = 'FROM [MItem]
					 LEFT JOIN [MItemGroup] ON [MItemGroup].ItemGroupID = [MItem].ItemGroupID
				     LEFT JOIN [MItemType] ON [MItemGroup].ItemTypeID = [MItemType].ItemTypeID
					 LEFT JOIN [MUoM] ON [MUoM].UoMID = [MItem].UoMID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MItem].ItemID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MItem].ItemID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MItemGroup]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MItemGroup]
(
	@in_ItemGroupID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemGroupID,
		ItemGroupDesc,
		ItemTypeID,
		HasParameter,
		HasPrice,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MItemGroup]
	WHERE
		ItemGroupID = @in_ItemGroupID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MItemGroup_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MItemGroup_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = 'MItemGroup.*,MItemType.ItemTypeDesc'
	
	SET @var_FROM = 'FROM [MItemGroup] LEFT JOIN [MItemType] ON [MItemGroup].ItemTypeID = [MItemType].ItemTypeID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MItemGroup].ItemGroupID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MItemGroup].ItemGroupID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MItemType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MItemType]
(
	@in_ItemTypeID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ItemTypeID,
		ItemTypeDesc,
		ItemTypeParentID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MItemType]
	WHERE
		ItemTypeID = @in_ItemTypeID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MItemType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MItemType_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'from(
  select MItemType.*,a.ItemTypeDesc as ''ItemTypeParentDesc'' from MItemType left join MItemType A on MItemType.ItemTypeParentID = a.ItemTypeID)as MItemType'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MItemType].ItemTypeID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MItemType].ItemTypeID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MLocation]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MLocation]
(
	@in_LocationID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		LocationID,
		LocationDesc,
		RegionID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MLocation]
	WHERE
		LocationID = @in_LocationID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MLocation_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Rony, Monday, 17 Apr 2017, 3:53 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MLocation_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MLocation]
					 LEFT JOIN MRegion ON MLocation.RegionID = MRegion.RegionID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MLocation].LocationID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MLocation].LocationID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MParameter]
(
	@in_ParameterID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ParameterID,
		ParameterDesc,
		DataType,
		Length,
		Precision,
		Scale,
		RefTable,
		RefIDColumn,
		RefDescColumn,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MParameter]
	WHERE
		ParameterID = @in_ParameterID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MParameter_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MParameter]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MParameter].ParameterID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MParameter].ParameterID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MPriceType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MPriceType]
(
	@in_PriceTypeID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		PriceTypeID,
		PriceTypeDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MPriceType]
	WHERE
		PriceTypeID = @in_PriceTypeID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MPriceType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MPriceType_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MPriceType]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MPriceType].PriceTypeID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MPriceType].PriceTypeID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MProject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MProject]
(
	@in_ProjectID VARCHAR (4)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ProjectID,
		ProjectDesc,
		CompanyID,
		DivisionID,
		LocationID,
		City,
		Street,
		Postal,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MProject]
	WHERE
		ProjectID = @in_ProjectID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MProject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MProject_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '[MProject].*,MCompany.CompanyDesc'
	
	SET @var_FROM = 'FROM [MProject] 
	                 LEFT JOIN MCompany ON [MProject].CompanyID = MCompany.CompanyID
					 LEFT JOIN MDivision ON MProject.DivisionID = MDivision.DivisionID
					 LEFT JOIN MLocation ON MProject.LocationID = MLocation.LocationID
					 LEFT JOIN MRegion ON MLocation.RegionID = MRegion.RegionID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MProject].ProjectID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MProject].ProjectID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MRegion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MRegion]
(
	@in_RegionID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		RegionID,
		RegionDesc,
		CountryID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MRegion]
	WHERE
		RegionID = @in_RegionID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MRegion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Rony, Monday, 17 Apr 2017, 3:27 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MRegion_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MRegion]
					 LEFT JOIN MCountry ON MCountry.CountryID = MRegion.CountryID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MRegion].RegionID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MRegion].RegionID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MRole]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MRole]
(
	@in_RoleID VARCHAR (8)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		RoleID,
		RoleDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MRole]
	WHERE
		RoleID = @in_RoleID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MRole_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MRole_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MRole]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MRole].RoleID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MRole].RoleID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MStatus]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 26 May 2017, 03:53 PM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 03:53 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MStatus]
(
	@in_TableName VARCHAR (80),
	@in_StatusID INT
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		TableName,
		StatusID,
		StatusDesc,
		Visible,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MStatus]
	WHERE
		TableName = @in_TableName AND
		StatusID = @in_StatusID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MStatus_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 26 May 2017, 03:53 PM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 03:53 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MStatus_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MStatus]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MStatus].TableName ASC, [MStatus].StatusID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MStatus].TableName) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MUnitType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MUnitType]
(
	@in_UnitTypeID VARCHAR (5)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		UnitTypeID,
		UnitTypeDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MUnitType]
	WHERE
		UnitTypeID = @in_UnitTypeID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MUnitType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MUnitType_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MUnitType]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MUnitType].UnitTypeID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MUnitType].UnitTypeID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MUoM]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
-- Last Modified	: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MUoM]
(
	@in_UoMID VARCHAR (3)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		UoMID,
		UoMDesc,
		DimensionID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MUoM]
	WHERE
		UoMID = @in_UoMID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MUoM_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
-- Last Modified	: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MUoM_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MUoM]
		LEFT JOIN [SDimension] ON [MUoM].DimensionID = [SDimension].DimensionID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MUoM].UoMID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MUoM].UoMID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MUser]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MUser]
(
	@in_UserID NVARCHAR (20)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		UserID,
		RoleID,
		FullName,
		Password,
		VendorID,
		LastLogin,
		HostIP,
		IsActive,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MUser]
	WHERE
		UserID = @in_UserID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MUser_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MUser_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
		--[MVendor].FirstName+'' ''+[MVendor].LastName as ''MVendor.VendorDesc'''
	
	SET @var_FROM = 'FROM [MUser]
			LEFT JOIN [MRole] ON [MRole].RoleID = [MUser].RoleID
			LEFT JOIN [MVendor] ON [MVendor].VendorID = [MUser].VendorID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MUser].UserID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MUser].UserID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MVendor]
(
	@in_VendorID VARCHAR (10)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		VendorID,
		FirstName,
		LastName,
		VendorSubcategoryID,
		City,
		Street,
		Postal,
		Phone,
		Email,
		IDNo,
		NPWP,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MVendor]
	WHERE
		VendorID = @in_VendorID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MVendor_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MVendor] 
					LEFT JOIN [MVendorSubcategory] ON [MVendorSubcategory].VendorSubcategoryID=[MVendor].VendorSubcategoryID 
					LEFT JOIN [MVendorCategory] ON [MVendorCategory].VendorCategoryID=[MVendorSubcategory].VendorCategoryID '
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MVendor].VendorID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MVendor].VendorID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MVendorCategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MVendorCategory]
(
	@in_VendorCategoryID VARCHAR (4)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		VendorCategoryID,
		VendorCategoryDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MVendorCategory]
	WHERE
		VendorCategoryID = @in_VendorCategoryID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MVendorCategory_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MVendorCategory_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MVendorCategory]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MVendorCategory].VendorCategoryID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MVendorCategory].VendorCategoryID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MVendorSubcategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MVendorSubcategory]
(
	@in_VendorSubcategoryID VARCHAR (4)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		VendorSubcategoryID,
		VendorSubcategoryDesc,
		VendorCategoryID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MVendorSubcategory]
	WHERE
		VendorSubcategoryID = @in_VendorSubcategoryID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MVendorSubcategory_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MVendorSubcategory_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [MVendorSubcategory] LEFT JOIN [MVendorCategory] ON [MVendorCategory].VendorCategoryID=[MVendorSubcategory].VendorCategoryID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MVendorSubcategory].VendorSubcategoryID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MVendorSubcategory].VendorSubcategoryID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MWBS]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 09:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 09:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MWBS]
(
	@in_WBSID VARCHAR (100)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		WBSID,
		WBSDesc,
		ProjectID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[MWBS]
	WHERE
		WBSID = @in_WBSID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_MWBS_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 09:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 09:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_MWBS_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM MWBS
		LEFT JOIN [MProject] ON [MProject].ProjectID = [MWBS].ProjectID
		LEFT JOIN [MCompany] ON [MCompany].CompanyID = [MProject].CompanyID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[MWBS].WBSID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([MWBS].WBSID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 05:22 PM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 05:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SAction]
(
	@in_ActionID VARCHAR (30)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ActionID,
		ActionDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[SAction]
	WHERE
		ActionID = @in_ActionID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 05:22 PM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 05:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SAction_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [SAction]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[SAction].ActionID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([SAction].ActionID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SBudgetPlanPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:22 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:22 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SBudgetPlanPeriod]
(
	@in_BudgetPlanPeriodID VARCHAR (2)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanPeriodID,
		BudgetPlanPeriodDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[SBudgetPlanPeriod]
	WHERE
		BudgetPlanPeriodID = @in_BudgetPlanPeriodID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SBudgetPlanPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:22 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:22 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SBudgetPlanPeriod_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [SBudgetPlanPeriod]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[SBudgetPlanPeriod].BudgetPlanPeriodID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([SBudgetPlanPeriod].BudgetPlanPeriodID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SDimension]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
-- Last Modified	: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SDimension]
(
	@in_DimensionID VARCHAR (6)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		DimensionID,
		DimensionDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[SDimension]
	WHERE
		DimensionID = @in_DimensionID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SDimension_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
-- Last Modified	: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SDimension_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [SDimension]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[SDimension].DimensionID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([SDimension].DimensionID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SMenu]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SMenu]
(
	@in_MenuID VARCHAR (50)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		MenuID,
		MenuHierarchy,
		MenuDesc,
		MenuIcon,
		MenuUrl,
		MenuVisible,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[SMenu]
	WHERE
		MenuID = @in_MenuID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SMenu_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SMenu_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [SMenu]'
	                 --LEFT JOIN DRoleMenuAction ON SMenu.MenuID = DRoleMenuAction.MenuID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[SMenu].MenuID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([SMenu].MenuID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SReport]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
-- Last Modified	: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SReport]
(
	@in_ReportID VARCHAR (20)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		ReportID,
		ReportDesc,
		ReportViewName,
		ReportVisible,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[SReport]
	WHERE
		ReportID = @in_ReportID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_SReport_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
-- Last Modified	: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_SReport_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [SReport]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[SReport].ReportID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([SReport].ReportID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_TBudgetPlan]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_TBudgetPlan]
(
	@in_BudgetPlanID VARCHAR (20)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		BudgetPlanID,
		BudgetPlanTemplateID,
		ProjectID,
		ClusterID,
		UnitTypeID,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[TBudgetPlan]
	WHERE
		BudgetPlanID = @in_BudgetPlanID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_TBudgetPlan_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_TBudgetPlan_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1100 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( MAX )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'

		/*
			SELECT
			DBudgetPlanVersion.Description AS [Description], MBudgetPlanTemplate.BudgetPlanTemplateDesc AS [BudgetPlanTemplateDesc], TBudgetPlan.BudgetPlanTemplateID AS [BudgetPlanTemplateID], MBudgetPlanType.BudgetPlanTypeDesc AS [BudgetPlanTypeDesc], MCompany.CompanyDesc AS [CompanyDesc], MRegion.RegionDesc AS [RegionDesc], MLocation.LocationDesc AS [LocationDesc], MDivision.DivisionDesc AS [DivisionDesc], TBudgetPlan.ProjectID AS [ProjectID], MProject.ProjectDesc AS [ProjectDesc], MCluster.ClusterDesc AS [ClusterDesc], TBudgetPlan.ClusterID AS [ClusterID], TBudgetPlan.UnitTypeID AS [UnitTypeID], MUnitType.UnitTypeDesc AS [UnitTypeDesc], DBudgetPlanVersion.Area AS [Area], DBudgetPlanVersion.BudgetPlanVersion AS [BudgetPlanVersion], TBudgetPlan.CreatedDate AS [CreatedDate], TBudgetPlan.ModifiedDate AS [ModifiedDate], DBudgetPlanVersion.StatusID AS [StatusID], MStatus.StatusDesc AS [StatusDesc]
			FROM TBudgetPlan
					LEFT JOIN [MBudgetPlanTemplate] ON [TBudgetPlan].BudgetPlanTemplateID = [MBudgetPlanTemplate].BudgetPlanTemplateID
					LEFT JOIN [DBudgetPlanVersion] ON [TBudgetPlan].BudgetPlanID = [DBudgetPlanVersion].BudgetPlanID
					LEFT JOIN [MBudgetPlanType] ON [MBudgetPlanTemplate].BudgetPlanTypeID = [MBudgetPlanType].BudgetPlanTypeID
					LEFT JOIN [MProject] ON [TBudgetPlan].ProjectID = [MProject].ProjectID
					LEFT JOIN [MCluster] ON [TBudgetPlan].ClusterID = [MCluster].ClusterID
					LEFT JOIN [MUnitType] ON [TBudgetPlan].UnitTypeID = [MUnitType].UnitTypeID
					LEFT JOIN [MStatus] ON [DBudgetPlanVersion].StatusID = [MStatus].StatusID AND [MStatus].TableName = 'DBudgetPlanVersion'
					LEFT JOIN [MCompany] ON [MProject].CompanyID = [MCompany].CompanyID
					LEFT JOIN [MLocation] ON [MProject].LocationID = [MLocation].LocationID
					LEFT JOIN [MRegion] ON [MLocation].RegionID= [MRegion].RegionID
					LEFT JOIN [MDivision] ON [MProject].DivisionID= [MDivision].DivisionID
			WHERE
			( TBudgetPlan.BudgetPlanID = 'BPL-2017-00000001' ) AND ( DBudgetPlanVersion.BudgetPlanVersion = '1' )
		
		*/
	
	SET @var_FROM = 'FROM TBudgetPlan
					LEFT JOIN [MBudgetPlanTemplate] ON [TBudgetPlan].BudgetPlanTemplateID = [MBudgetPlanTemplate].BudgetPlanTemplateID
					LEFT JOIN [DBudgetPlanVersion] ON [TBudgetPlan].BudgetPlanID = [DBudgetPlanVersion].BudgetPlanID
					LEFT JOIN [MBudgetPlanType] ON [MBudgetPlanTemplate].BudgetPlanTypeID = [MBudgetPlanType].BudgetPlanTypeID
					LEFT JOIN [MProject] ON [TBudgetPlan].ProjectID = [MProject].ProjectID
					LEFT JOIN [MCluster] ON [TBudgetPlan].ClusterID = [MCluster].ClusterID
					LEFT JOIN [MUnitType] ON [TBudgetPlan].UnitTypeID = [MUnitType].UnitTypeID
					LEFT JOIN [MStatus] ON [DBudgetPlanVersion].StatusID = [MStatus].StatusID AND [MStatus].TableName = ''DBudgetPlanVersion''
					LEFT JOIN [MCompany] ON [MProject].CompanyID = [MCompany].CompanyID
					LEFT JOIN [MLocation] ON [MProject].LocationID = [MLocation].LocationID
					LEFT JOIN [MRegion] ON [MLocation].RegionID= [MRegion].RegionID
					LEFT JOIN [MDivision] ON [MProject].DivisionID= [MDivision].DivisionID'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[TBudgetPlan].BudgetPlanID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT DISTINCT ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ '),CTE2 AS (
			   SELECT ROW_NUMBER() OVER ( ORDER BY CTE.BudgetPlanID  ASC  ) AS RowNo,  * FROM CTE 
			)
			SELECT * FROM CTE2 ' + @var_WHERECTE
		--SET @var_CMD = 'WITH CTE AS (
		--	SELECT DISTINCT ' + @in_Select + ' '
		--	+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		--	+ ')
		--	SELECT ROW_NUMBER() OVER ( ORDER BY CTE.BudgetPlanID ASC ) AS RowNo,* 
		--	 FROM CTE ' + @var_WHERECTE
		--	 PRINT @var_CMD
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([TBudgetPlan].BudgetPlanID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_TNumbering]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_TNumbering]
(
	@in_Header VARCHAR (3),
	@in_Year VARCHAR (4),
	@in_Month VARCHAR (2),
	@in_CompanyID VARCHAR (4),
	@in_ProjectID VARCHAR (4)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		Header,
		Year,
		Month,
		CompanyID,
		ProjectID,
		LastNo,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[TNumbering]
	WHERE
		Header = @in_Header AND
		Year = @in_Year AND
		Month = @in_Month AND
		CompanyID = @in_CompanyID AND
		ProjectID = @in_ProjectID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_TNumbering_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_TNumbering_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [TNumbering]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[TNumbering].Header ASC, [TNumbering].Year ASC, [TNumbering].Month ASC, [TNumbering].CompanyID ASC, [TNumbering].ProjectID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([TNumbering].Header, [TNumbering].Year, [TNumbering].Month, [TNumbering].CompanyID, [TNumbering].ProjectID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_TPackage]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_TPackage]
(
	@in_PackageID VARCHAR (20)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		PackageID,
		PackageDesc,
		CreatedBy,
		CreatedDate,
		CreatedHost,
		ModifiedBy,
		ModifiedDate,
		ModifiedHost
	FROM [dbo].[TPackage]
	WHERE
		PackageID = @in_PackageID
END

GO
/****** Object:  StoredProcedure [dbo].[sel_TPackage_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_TPackage_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	/*
		Select * 
		FROM [TPackage]
				LEFT JOIN [MStatus] ON [MStatus].StatusID=[TPackage].StatusID AND [MStatus].TableName='TPackage'
	*/

	SET @var_FROM = 'FROM [TPackage]
				LEFT JOIN [MStatus] ON [MStatus].StatusID=[TPackage].StatusID AND [MStatus].TableName=''TPackage'''
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[TPackage].PackageID ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT([TPackage].PackageID) RecordCount '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[sel_UConfig]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_UConfig]
(
	@in_Key1 NVARCHAR (50),
	@in_Key2 NVARCHAR (50),
	@in_Key3 NVARCHAR (50),
	@in_Key4 NVARCHAR (50)
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		Key1,
		Key2,
		Key3,
		Key4,
		Desc1,
		Desc2,
		Desc3,
		Desc4
	FROM [dbo].[UConfig]
	WHERE
		Key1 = @in_Key1 AND
		Key2 = @in_Key2 AND
		Key3 = @in_Key3 AND
		Key4 = @in_Key4
END

GO
/****** Object:  StoredProcedure [dbo].[sel_UConfig_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sel_UConfig_BC]
(
	@in_Skip INT,
	@in_Length INT = NULL,
	@in_IsCount BIT,
	
	@in_Select NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	@in_Having NVARCHAR ( 1000 ) = NULL,
	@in_GroupBy NVARCHAR ( 1000 ) = NULL,
	@in_OrderBy NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_FROM NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	DECLARE @var_HAVING NVARCHAR( 4000 )
	DECLARE @var_GROUPBY NVARCHAR( 4000 )
	DECLARE @var_WHERECTE NVARCHAR( 1000 )
	
	IF (@in_Select IS NULL)
		SET @in_Select = '*'
	
	SET @var_FROM = 'FROM [UConfig]'
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_HAVING =
		CASE WHEN @in_Having IS NOT NULL
		THEN 'HAVING ' + @in_Having
		ELSE '' END
	
	SET @var_GROUPBY =
		CASE WHEN @in_GroupBy IS NOT NULL
		THEN 'GROUP BY ' + @in_GroupBy
		ELSE '' END
	
	SET @in_OrderBy = 'ORDER BY ' + ISNULL(@in_OrderBy, '[UConfig].Key1 ASC, [UConfig].Key2 ASC, [UConfig].Key3 ASC, [UConfig].Key4 ASC')
	
	IF ( @in_IsCount = 0 )
	BEGIN
		SET @var_WHERECTE =
			CASE WHEN @in_Skip > 0
			THEN 'RowNo > ' + CONVERT(VARCHAR, @in_Skip) +
				CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 ) THEN ' AND ' ELSE '' END
			ELSE '' END +
			CASE WHEN ( NOT @in_Length IS NULL AND @in_Length > 0 )
			THEN ' RowNo <= ' + CONVERT(VARCHAR, @in_Skip + @in_Length)
			ELSE '' END
		SET @var_WHERECTE = CASE WHEN @var_WHERECTE IS NULL OR @var_WHERECTE = '' THEN '' ELSE 'WHERE ' + @var_WHERECTE END
		SET @var_CMD = 'WITH CTE AS (
			SELECT ROW_NUMBER() OVER ( ' + @in_OrderBy + ' ) AS RowNo, ' + @in_Select + ' '
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
			+ ')
			SELECT * FROM CTE ' + @var_WHERECTE
	END
	ELSE
	BEGIN
		SET @var_CMD = 'SELECT COUNT(*) RecordCount ' --[UConfig].Key1, [UConfig].Key2, [UConfig].Key3, [UConfig].Key4
			+ @var_FROM + ' ' + @var_WHERE + ' ' + @var_GROUPBY + ' ' + @var_HAVING
		IF (@var_GROUPBY <> '')
			SET @var_CMD = 'SELECT COUNT(RecordCount)
				FROM ( ' + @var_CMD + ') T'
	END
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
END

GO
/****** Object:  StoredProcedure [dbo].[upd_CMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_CMenuAction]
(
	@in_KeyMenuID VARCHAR (50),
	@in_KeyActionID VARCHAR (30),
	@in_MenuID VARCHAR (50),
	@in_ActionID VARCHAR (30),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[CMenuAction] SET
		MenuID = @in_MenuID,
		ActionID = @in_ActionID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		MenuID = @in_KeyMenuID AND
		ActionID = @in_KeyActionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_CMenuAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_CMenuAction_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [CMenuAction] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_CMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_CMenuObject]
(
	@in_KeyMenuID VARCHAR (50),
	@in_KeyObjectID VARCHAR (30),
	@in_MenuID VARCHAR (50),
	@in_ObjectID VARCHAR (30),
	@in_ObjectDesc VARCHAR (30),
	@in_ObjectLongDesc VARCHAR (255),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[CMenuObject] SET
		MenuID = @in_MenuID,
		ObjectID = @in_ObjectID,
		ObjectDesc = @in_ObjectDesc,
		ObjectLongDesc = @in_ObjectLongDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		MenuID = @in_KeyMenuID AND
		ObjectID = @in_KeyObjectID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_CMenuObject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_CMenuObject_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [CMenuObject] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanTemplateStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanTemplateStructure]
(
	@in_KeyBudgetPlanTemplateID VARCHAR (3),
	@in_KeyItemID VARCHAR (20),
	@in_KeyVersion INT,
	@in_KeySequence INT,
	@in_BudgetPlanTemplateID VARCHAR (3),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_Sequence INT,
	@in_ParentItemID VARCHAR (20),
	@in_ParentVersion INT,
	@in_ParentSequence INT,
	@in_IsDefault BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DBudgetPlanTemplateStructure] SET
		BudgetPlanTemplateID = @in_BudgetPlanTemplateID,
		ItemID = @in_ItemID,
		Version = @in_Version,
		Sequence = @in_Sequence,
		ParentItemID = @in_ParentItemID,
		ParentVersion = @in_ParentVersion,
		ParentSequence = @in_ParentSequence,
		IsDefault = @in_IsDefault,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanTemplateID = @in_KeyBudgetPlanTemplateID AND
		ItemID = @in_KeyItemID AND
		Version = @in_KeyVersion AND
		Sequence = @in_KeySequence
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanTemplateStructure_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanTemplateStructure_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DBudgetPlanTemplateStructure] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.2
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Agus, Tuesday, 10 October 2017, 10:01 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersion]
(
	@in_KeyBudgetPlanID VARCHAR (20),
	@in_KeyBudgetPlanVersion INT,
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_Description VARCHAR (40),
	@in_Area DECIMAL (10, 4),
	@in_Unit DECIMAL (10, 4),
	@in_FeePercentage DECIMAL (6, 2),
	@in_StatusID INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DBudgetPlanVersion] SET
		BudgetPlanID = @in_BudgetPlanID,
		BudgetPlanVersion = @in_BudgetPlanVersion,
		Description = @in_Description,
		Area = @in_Area,
		Unit = @in_Unit,
		FeePercentage = @in_FeePercentage,
		StatusID = @in_StatusID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanID = @in_KeyBudgetPlanID AND
		BudgetPlanVersion = @in_KeyBudgetPlanVersion
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersion_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DBudgetPlanVersion] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionAdditional]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Thursday, 08 Jun 2017, 01:48 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionAdditional]
(
	@in_KeyBudgetPlanVersionAdditionalID VARCHAR (32),
	@in_BudgetPlanVersionAdditionalID VARCHAR (32),
	@in_BudgetPlanVersionVendorID VARCHAR (32),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_Sequence INT,
	@in_ParentItemID VARCHAR (20) = NULL,
	@in_ParentVersion INT = NULL,
	@in_ParentSequence INT = NULL,
	@in_Info VARCHAR (1000),
	@in_Volume DECIMAL (8, 4) = NULL,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DBudgetPlanVersionAdditional] SET
		BudgetPlanVersionAdditionalID = @in_BudgetPlanVersionAdditionalID,
		BudgetPlanVersionVendorID = @in_BudgetPlanVersionVendorID,
		ItemID = @in_ItemID,
		Version = @in_Version,
		Sequence = @in_Sequence,
		ParentItemID = @in_ParentItemID,
		ParentVersion = @in_ParentVersion,
		ParentSequence = @in_ParentSequence,
		Info = @in_Info,
		Volume = @in_Volume,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanVersionAdditionalID = @in_KeyBudgetPlanVersionAdditionalID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionAdditional_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Thursday, 08 Jun 2017, 01:48 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionAdditional_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DBudgetPlanVersionAdditional] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionAssignment]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Thursday, 19 Oct 2017, 09:03 AM
-- Last Modified	: Tjhai, Thursday, 19 Oct 2017, 09:07 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionAssignment]
(
	@in_KeyBudgetPlanVersionStructureID VARCHAR (32),
	@in_KeyVendorID VARCHAR (10),
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DBudgetPlanVersionAssignment] SET
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID,
		VendorID = @in_VendorID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanVersionStructureID = @in_KeyBudgetPlanVersionStructureID AND
		VendorID = @in_KeyVendorID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionAssignment_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Thursday, 19 Oct 2017, 09:03 AM
-- Last Modified	: Tjhai, Thursday, 19 Oct 2017, 09:07 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionAssignment_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DBudgetPlanVersionAssignment] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionEntry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Monday, 29 May 2017, 04:16 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionEntry]
(
	@in_KeyBudgetPlanID VARCHAR (20),
	@in_KeyBudgetPlanVersion INT,
	@in_KeyVendorID VARCHAR (10),
	@in_KeyBudgetPlanVersionStructureID VARCHAR (32),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_VendorID VARCHAR (10),
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@in_Info VARCHAR (1000),
	@in_Volume DECIMAL (8, 4) = NULL,
	@in_MaterialAmount DECIMAL (14, 4) = NULL,
	@in_WageAmount DECIMAL (14, 4) = NULL,
	@in_MiscAmount DECIMAL (14, 4) = NULL,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DBudgetPlanVersionEntry] SET
		BudgetPlanID = @in_BudgetPlanID,
		BudgetPlanVersion = @in_BudgetPlanVersion,
		VendorID = @in_VendorID,
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID,
		Info = @in_Info,
		Volume = @in_Volume,
		MaterialAmount = @in_MaterialAmount,
		WageAmount = @in_WageAmount,
		MiscAmount = @in_MiscAmount,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanID = @in_KeyBudgetPlanID AND
		BudgetPlanVersion = @in_KeyBudgetPlanVersion AND
		VendorID = @in_KeyVendorID AND
		BudgetPlanVersionStructureID = @in_KeyBudgetPlanVersionStructureID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionEntry_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 29 May 2017, 04:16 PM
-- Last Modified	: Tjhai, Monday, 29 May 2017, 04:16 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionEntry_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DBudgetPlanVersionEntry] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:21 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:21 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionPeriod]
(
	@in_KeyBudgetPlanVersionPeriodID VARCHAR (32),
	@in_BudgetPlanVersionPeriodID VARCHAR (32),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_PeriodVersion INT,
	@in_BudgetPlanPeriodID VARCHAR (2),
	@in_StatusID INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DBudgetPlanVersionPeriod] SET
		BudgetPlanVersionPeriodID = @in_BudgetPlanVersionPeriodID,
		BudgetPlanID = @in_BudgetPlanID,
		BudgetPlanVersion = @in_BudgetPlanVersion,
		PeriodVersion = @in_PeriodVersion,
		BudgetPlanPeriodID = @in_BudgetPlanPeriodID,
		StatusID = @in_StatusID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanVersionPeriodID = @in_KeyBudgetPlanVersionPeriodID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:21 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:21 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionPeriod_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DBudgetPlanVersionPeriod] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionStructure]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.4
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 10:12 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionStructure]
(
	@in_KeyBudgetPlanVersionStructureID VARCHAR (32),
	@in_BudgetPlanVersionStructureID VARCHAR (32),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_Sequence INT,
	@in_ParentItemID VARCHAR (20),
	@in_ParentVersion INT,
	@in_ParentSequence INT,
	@in_ItemVersionChildID VARCHAR (8),
	@in_Specification VARCHAR (1000),
	@in_Volume DECIMAL (8, 4) = NULL,
	@in_MaterialAmount DECIMAL (14, 4) = NULL,
	@in_WageAmount DECIMAL (14, 4) = NULL,
	@in_MiscAmount DECIMAL (14, 4) = NULL,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DBudgetPlanVersionStructure] SET
		BudgetPlanVersionStructureID = @in_BudgetPlanVersionStructureID,
		BudgetPlanID = @in_BudgetPlanID,
		BudgetPlanVersion = @in_BudgetPlanVersion,
		ItemID = @in_ItemID,
		Version = @in_Version,
		Sequence = @in_Sequence,
		ParentItemID = @in_ParentItemID,
		ParentVersion = @in_ParentVersion,
		ParentSequence = @in_ParentSequence,
		ItemVersionChildID = @in_ItemVersionChildID,
		Specification = @in_Specification,
		Volume = @in_Volume,
		MaterialAmount = @in_MaterialAmount,
		WageAmount = @in_WageAmount,
		MiscAmount = @in_MiscAmount,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanVersionStructureID = @in_KeyBudgetPlanVersionStructureID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionStructure_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.4
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 10:12 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionStructure_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DBudgetPlanVersionStructure] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionVendor]
(
	@in_KeyBudgetPlanVersionVendorID VARCHAR (32),
	@in_BudgetPlanVersionVendorID VARCHAR (32),
	@in_BudgetPlanVersionPeriodID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_StartDate DATETIME2,
	@in_EndDate DATETIME2,
	@in_FeePercentage DECIMAL(6,4),
	@in_StatusID INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DBudgetPlanVersionVendor] SET
		BudgetPlanVersionVendorID = @in_BudgetPlanVersionVendorID,
		BudgetPlanVersionPeriodID = @in_BudgetPlanVersionPeriodID,
		VendorID = @in_VendorID,
		StartDate = @in_StartDate,
		EndDate = @in_EndDate,
		FeePercentage = @in_FeePercentage,
		StatusID = @in_StatusID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanVersionVendorID = @in_KeyBudgetPlanVersionVendorID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DBudgetPlanVersionVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DBudgetPlanVersionVendor_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DBudgetPlanVersionVendor] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemGroupParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
-- Last Modified	: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemGroupParameter]
(
	@in_KeyItemGroupID VARCHAR (3),
	@in_KeyParameterID VARCHAR (3),
	@in_ItemGroupID VARCHAR (3),
	@in_ParameterID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemGroupParameter] SET
		ItemGroupID = @in_ItemGroupID,
		ParameterID = @in_ParameterID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemGroupID = @in_KeyItemGroupID AND
		ParameterID = @in_KeyParameterID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemGroupParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
-- Last Modified	: Tjhai, Tuesday, 18 Apr 2017, 12:24 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemGroupParameter_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemGroupParameter] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemParameter]
(
	@in_KeyItemID VARCHAR (20),
	@in_KeyItemGroupID VARCHAR (3),
	@in_KeyParameterID VARCHAR (3),
	@in_ItemID VARCHAR (20),
	@in_ItemGroupID VARCHAR (3),
	@in_ParameterID VARCHAR (3),
	@in_Value VARCHAR (100),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemParameter] SET
		ItemID = @in_ItemID,
		ItemGroupID = @in_ItemGroupID,
		ParameterID = @in_ParameterID,
		Value = @in_Value,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemID = @in_KeyItemID AND
		ItemGroupID = @in_KeyItemGroupID AND
		ParameterID = @in_KeyParameterID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemParameter_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemParameter] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemPrice]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemPrice]
(
	@in_KeyItemPriceID VARCHAR (32),
	@in_ItemPriceID VARCHAR (32),
	@in_ItemID VARCHAR (20),
	@in_RegionID VARCHAR (3),
	@in_ProjectID VARCHAR (4),
	@in_ClusterID VARCHAR (3),
	@in_UnitTypeID VARCHAR (5),
	@in_PriceTypeID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemPrice] SET
		ItemPriceID = @in_ItemPriceID,
		ItemID = @in_ItemID,
		RegionID = @in_RegionID,
		ProjectID = @in_ProjectID,
		ClusterID = @in_ClusterID,
		UnitTypeID = @in_UnitTypeID,
		PriceTypeID = @in_PriceTypeID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemPriceID = @in_KeyItemPriceID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemPrice_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemPrice_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemPrice] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemPriceVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemPriceVendor]
(
	@in_KeyItemPriceID VARCHAR (32),
	@in_KeyVendorID VARCHAR (10),
	@in_ItemPriceID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_IsDefault BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemPriceVendor] SET
		ItemPriceID = @in_ItemPriceID,
		VendorID = @in_VendorID,
		IsDefault = @in_IsDefault,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemPriceID = @in_KeyItemPriceID AND
		VendorID = @in_KeyVendorID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemPriceVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemPriceVendor_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemPriceVendor] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemPriceVendorPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemPriceVendorPeriod]
(
	@in_KeyItemPriceID VARCHAR (32),
	@in_KeyVendorID VARCHAR (10),
	@in_KeyValidFrom DATETIME2,
	@in_ItemPriceID VARCHAR (32),
	@in_VendorID VARCHAR (10),
	@in_ValidFrom DATETIME2,
	@in_ValidTo DATETIME2,
	@in_CurrencyID VARCHAR (3),
	@in_Amount DECIMAL (15, 4),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemPriceVendorPeriod] SET
		ItemPriceID = @in_ItemPriceID,
		VendorID = @in_VendorID,
		ValidFrom = @in_ValidFrom,
		ValidTo = @in_ValidTo,
		CurrencyID = @in_CurrencyID,
		Amount = @in_Amount,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemPriceID = @in_KeyItemPriceID AND
		VendorID = @in_KeyVendorID AND
		ValidFrom = @in_KeyValidFrom
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemPriceVendorPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 08 May 2017, 10:28 AM
-- Last Modified	: Tjhai, Monday, 08 May 2017, 10:28 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemPriceVendorPeriod_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemPriceVendorPeriod] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemVersion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemVersion]
(
	@in_KeyItemID VARCHAR (20),
	@in_KeyVersion INT,
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_VersionDesc VARCHAR (100),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemVersion] SET
		ItemID = @in_ItemID,
		Version = @in_Version,
		VersionDesc = @in_VersionDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemID = @in_KeyItemID AND
		Version = @in_KeyVersion
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemVersion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemVersion_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemVersion] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemVersionChild]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemVersionChild]
(
	@in_KeyItemVersionChildID VARCHAR (8),
	@in_ItemVersionChildID VARCHAR (8),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_ChildItemID VARCHAR (20),
	@in_ChildVersion INT,	
	@in_Sequence INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemVersionChild] SET
		ItemVersionChildID = @in_ItemVersionChildID,
		ItemID = @in_ItemID,
		Version = @in_Version,		
		Sequence = @in_Sequence,
		ChildItemID = @in_ChildItemID,
		ChildVersion = @in_ChildVersion,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemVersionChildID = @in_KeyItemVersionChildID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemVersionChild_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemVersionChild_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemVersionChild] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemVersionChildAlt]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemVersionChildAlt]
(
	@in_KeyItemVersionChildID VARCHAR (8),
	@in_KeyItemID VARCHAR (20),
	@in_KeyVersion INT,
	@in_ItemVersionChildID VARCHAR (8),
	@in_ItemID VARCHAR (20),
	@in_Version INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemVersionChildAlt] SET
		ItemVersionChildID = @in_ItemVersionChildID,
		ItemID = @in_ItemID,
		Version = @in_Version,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemVersionChildID = @in_KeyItemVersionChildID AND
		ItemID = @in_KeyItemID AND
		Version = @in_KeyVersion
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemVersionChildAlt_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemVersionChildAlt_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemVersionChildAlt] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemVersionChildFormula]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemVersionChildFormula]
(
	@in_KeyItemVersionChildID VARCHAR (8),
	@in_ItemVersionChildID VARCHAR (8),
	@in_Coefficient DECIMAL (7, 4),
	@in_Formula VARCHAR (1000),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DItemVersionChildFormula] SET
		ItemVersionChildID = @in_ItemVersionChildID,
		Coefficient = @in_Coefficient,
		Formula = @in_Formula,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemVersionChildID = @in_KeyItemVersionChildID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DItemVersionChildFormula_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 04:59 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 04:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DItemVersionChildFormula_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DItemVersionChildFormula] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DPackageList]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DPackageList]
(
	@in_KeyPackageID VARCHAR (20),
	@in_KeyBudgetPlanID VARCHAR (20),
	@in_KeyBudgetPlanVersion INT,
	@in_PackageID VARCHAR (20),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanVersion INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DPackageList] SET
		PackageID = @in_PackageID,
		BudgetPlanID = @in_BudgetPlanID,
		BudgetPlanVersion = @in_BudgetPlanVersion,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		PackageID = @in_KeyPackageID AND
		BudgetPlanID = @in_KeyBudgetPlanID AND
		BudgetPlanVersion = @in_KeyBudgetPlanVersion
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DPackageList_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DPackageList_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DPackageList] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DRoleMenuAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DRoleMenuAction]
(
	@in_KeyRoleID VARCHAR (8),
	@in_KeyMenuID VARCHAR (50),
	@in_KeyActionID VARCHAR (30),
	@in_RoleID VARCHAR (8),
	@in_MenuID VARCHAR (50),
	@in_ActionID VARCHAR (30),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DRoleMenuAction] SET
		RoleID = @in_RoleID,
		MenuID = @in_MenuID,
		ActionID = @in_ActionID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		RoleID = @in_KeyRoleID AND
		MenuID = @in_KeyMenuID AND
		ActionID = @in_KeyActionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DRoleMenuAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DRoleMenuAction_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DRoleMenuAction] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DRoleMenuObject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DRoleMenuObject]
(
	@in_KeyRoleID VARCHAR (8),
	@in_KeyMenuID VARCHAR (50),
	@in_KeyObjectID VARCHAR (30),
	@in_RoleID VARCHAR (8),
	@in_MenuID VARCHAR (50),
	@in_ObjectID VARCHAR (30),
	@in_Value VARCHAR (50),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[DRoleMenuObject] SET
		RoleID = @in_RoleID,
		MenuID = @in_MenuID,
		ObjectID = @in_ObjectID,
		Value = @in_Value,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		RoleID = @in_KeyRoleID AND
		MenuID = @in_KeyMenuID AND
		ObjectID = @in_KeyObjectID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_DRoleMenuObject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_DRoleMenuObject_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [DRoleMenuObject] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MBudgetPlanTemplate]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MBudgetPlanTemplate]
(
	@in_KeyBudgetPlanTemplateID VARCHAR (3),
	@in_BudgetPlanTemplateID VARCHAR (3),
	@in_BudgetPlanTemplateDesc VARCHAR (10),
	@in_BudgetPlanTypeID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MBudgetPlanTemplate] SET
		BudgetPlanTemplateID = @in_BudgetPlanTemplateID,
		BudgetPlanTemplateDesc = @in_BudgetPlanTemplateDesc,
		BudgetPlanTypeID = @in_BudgetPlanTypeID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanTemplateID = @in_KeyBudgetPlanTemplateID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MBudgetPlanTemplate_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 09:29 AM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 09:29 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MBudgetPlanTemplate_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MBudgetPlanTemplate] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MBudgetPlanType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 28 Apr 2017, 09:19 AM
-- Last Modified	: Tjhai, Friday, 28 Apr 2017, 09:19 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MBudgetPlanType]
(
	@in_KeyBudgetPlanTypeID VARCHAR (3),
	@in_BudgetPlanTypeID VARCHAR (3),
	@in_BudgetPlanTypeDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MBudgetPlanType] SET
		BudgetPlanTypeID = @in_BudgetPlanTypeID,
		BudgetPlanTypeDesc = @in_BudgetPlanTypeDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanTypeID = @in_KeyBudgetPlanTypeID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MBudgetPlanType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 28 Apr 2017, 09:19 AM
-- Last Modified	: Tjhai, Friday, 28 Apr 2017, 09:19 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MBudgetPlanType_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MBudgetPlanType] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MCluster]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MCluster]
(
	@in_KeyClusterID VARCHAR (3),
	@in_ClusterID VARCHAR (3),
	@in_ClusterDesc VARCHAR (20),
	@in_ProjectID VARCHAR (4),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MCluster] SET
		ClusterID = @in_ClusterID,
		ClusterDesc = @in_ClusterDesc,
		ProjectID = @in_ProjectID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ClusterID = @in_KeyClusterID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MCluster_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MCluster_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MCluster] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MCompany]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MCompany]
(
	@in_KeyCompanyID VARCHAR (4),
	@in_CompanyID VARCHAR (4),
	@in_CompanyDesc VARCHAR (50),
	@in_CountryID VARCHAR (3),
	@in_City VARCHAR (25),
	@in_Street VARCHAR (255),
	@in_Postal VARCHAR (6),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MCompany] SET
		CompanyID = @in_CompanyID,
		CompanyDesc = @in_CompanyDesc,
		CountryID = @in_CountryID,
		City = @in_City,
		Street = @in_Street,
		Postal = @in_Postal,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		CompanyID = @in_KeyCompanyID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MCompany_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MCompany_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MCompany] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MCountry]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MCountry]
(
	@in_KeyCountryID VARCHAR (3),
	@in_CountryID VARCHAR (3),
	@in_CountryDesc VARCHAR (50),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MCountry] SET
		CountryID = @in_CountryID,
		CountryDesc = @in_CountryDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		CountryID = @in_KeyCountryID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MCountry_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MCountry_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MCountry] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MCurrency]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MCurrency]
(
	@in_KeyCurrencyID VARCHAR (3),
	@in_CurrencyID VARCHAR (3),
	@in_CurrencyDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MCurrency] SET
		CurrencyID = @in_CurrencyID,
		CurrencyDesc = @in_CurrencyDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		CurrencyID = @in_KeyCurrencyID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MCurrency_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MCurrency_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MCurrency] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MDivision]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MDivision]
(
	@in_KeyDivisionID VARCHAR (4),
	@in_DivisionID VARCHAR (4),
	@in_DivisionDesc VARCHAR (50),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MDivision] SET
		DivisionID = @in_DivisionID,
		DivisionDesc = @in_DivisionDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		DivisionID = @in_KeyDivisionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MDivision_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MDivision_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MDivision] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MItem]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MItem]
(
	@in_KeyItemID VARCHAR (20),
	@in_ItemID VARCHAR (20),
	@in_ItemDesc VARCHAR (100),
	@in_ItemGroupID VARCHAR (3),
	@in_UoMID VARCHAR (3),
	@in_IsActive BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MItem] SET
		ItemID = @in_ItemID,
		ItemDesc = @in_ItemDesc,
		ItemGroupID = @in_ItemGroupID,
		UoMID = @in_UoMID,
		IsActive = @in_IsActive,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemID = @in_KeyItemID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MItem_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 21 Apr 2017, 03:15 PM
-- Last Modified	: Tjhai, Friday, 21 Apr 2017, 03:15 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MItem_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MItem] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MItemGroup]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MItemGroup]
(
	@in_KeyItemGroupID VARCHAR (3),
	@in_ItemGroupID VARCHAR (3),
	@in_ItemGroupDesc VARCHAR (50),
	@in_ItemTypeID VARCHAR (3),
	@in_HasParameter BIT,
	@in_HasPrice BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MItemGroup] SET
		ItemGroupID = @in_ItemGroupID,
		ItemGroupDesc = @in_ItemGroupDesc,
		ItemTypeID = @in_ItemTypeID,
		HasParameter = @in_HasParameter,
		HasPrice = @in_HasPrice,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemGroupID = @in_KeyItemGroupID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MItemGroup_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MItemGroup_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MItemGroup] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MItemType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MItemType]
(
	@in_KeyItemTypeID VARCHAR (3),
	@in_ItemTypeID VARCHAR (3),
	@in_ItemTypeDesc VARCHAR (40),
	@in_ItemTypeParentID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MItemType] SET
		ItemTypeID = @in_ItemTypeID,
		ItemTypeDesc = @in_ItemTypeDesc,
		ItemTypeParentID = @in_ItemTypeParentID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ItemTypeID = @in_KeyItemTypeID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MItemType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MItemType_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MItemType] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MLocation]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MLocation]
(
	@in_KeyLocationID VARCHAR (3),
	@in_LocationID VARCHAR (3),
	@in_LocationDesc VARCHAR (20),
	@in_RegionID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MLocation] SET
		LocationID = @in_LocationID,
		LocationDesc = @in_LocationDesc,
		RegionID = @in_RegionID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		LocationID = @in_KeyLocationID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MLocation_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MLocation_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MLocation] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MParameter]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MParameter]
(
	@in_KeyParameterID VARCHAR (3),
	@in_ParameterID VARCHAR (3),
	@in_ParameterDesc VARCHAR (40),
	@in_DataType VARCHAR (10),
	@in_Length INT,
	@in_Precision INT,
	@in_Scale INT,
	@in_RefTable VARCHAR (40),
	@in_RefIDColumn VARCHAR (40),
	@in_RefDescColumn VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MParameter] SET
		ParameterID = @in_ParameterID,
		ParameterDesc = @in_ParameterDesc,
		DataType = @in_DataType,
		Length = @in_Length,
		Precision = @in_Precision,
		Scale = @in_Scale,
		RefTable = @in_RefTable,
		RefIDColumn = @in_RefIDColumn,
		RefDescColumn = @in_RefDescColumn,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ParameterID = @in_KeyParameterID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MParameter_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MParameter_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MParameter] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MPriceType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MPriceType]
(
	@in_KeyPriceTypeID VARCHAR (3),
	@in_PriceTypeID VARCHAR (3),
	@in_PriceTypeDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MPriceType] SET
		PriceTypeID = @in_PriceTypeID,
		PriceTypeDesc = @in_PriceTypeDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		PriceTypeID = @in_KeyPriceTypeID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MPriceType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MPriceType_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MPriceType] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MProject]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MProject]
(
	@in_KeyProjectID VARCHAR (4),
	@in_ProjectID VARCHAR (4),
	@in_ProjectDesc VARCHAR (50),
	@in_CompanyID VARCHAR (4),
	@in_DivisionID VARCHAR (4),
	@in_LocationID VARCHAR (3),
	@in_City VARCHAR (25),
	@in_Street VARCHAR (255),
	@in_Postal VARCHAR (6),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MProject] SET
		ProjectID = @in_ProjectID,
		ProjectDesc = @in_ProjectDesc,
		CompanyID = @in_CompanyID,
		DivisionID = @in_DivisionID,
		LocationID = @in_LocationID,
		City = @in_City,
		Street = @in_Street,
		Postal = @in_Postal,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ProjectID = @in_KeyProjectID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MProject_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MProject_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MProject] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MRegion]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MRegion]
(
	@in_KeyRegionID VARCHAR (3),
	@in_RegionID VARCHAR (3),
	@in_RegionDesc VARCHAR (20),
	@in_CountryID VARCHAR (3),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MRegion] SET
		RegionID = @in_RegionID,
		RegionDesc = @in_RegionDesc,
		CountryID = @in_CountryID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		RegionID = @in_KeyRegionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MRegion_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MRegion_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MRegion] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MRole]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MRole]
(
	@in_KeyRoleID VARCHAR (8),
	@in_RoleID VARCHAR (8),
	@in_RoleDesc VARCHAR (255),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MRole] SET
		RoleID = @in_RoleID,
		RoleDesc = @in_RoleDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		RoleID = @in_KeyRoleID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MRole_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 03:54 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 03:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MRole_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MRole] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MStatus]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 26 May 2017, 03:53 PM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 03:53 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MStatus]
(
	@in_KeyTableName VARCHAR (80),
	@in_KeyStatusID INT,
	@in_TableName VARCHAR (80),
	@in_StatusID INT,
	@in_StatusDesc VARCHAR (20),
	@in_Visible BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MStatus] SET
		TableName = @in_TableName,
		StatusID = @in_StatusID,
		StatusDesc = @in_StatusDesc,
		Visible = @in_Visible,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		TableName = @in_KeyTableName AND
		StatusID = @in_KeyStatusID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MStatus_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Friday, 26 May 2017, 03:53 PM
-- Last Modified	: Tjhai, Friday, 26 May 2017, 03:53 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MStatus_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MStatus] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MUnitType]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MUnitType]
(
	@in_KeyUnitTypeID VARCHAR (5),
	@in_UnitTypeID VARCHAR (5),
	@in_UnitTypeDesc VARCHAR (50),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MUnitType] SET
		UnitTypeID = @in_UnitTypeID,
		UnitTypeDesc = @in_UnitTypeDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		UnitTypeID = @in_KeyUnitTypeID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MUnitType_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MUnitType_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MUnitType] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MUoM]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
-- Last Modified	: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MUoM]
(
	@in_KeyUoMID VARCHAR (3),
	@in_UoMID VARCHAR (3),
	@in_UoMDesc VARCHAR (25),
	@in_DimensionID VARCHAR (6),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MUoM] SET
		UoMID = @in_UoMID,
		UoMDesc = @in_UoMDesc,
		DimensionID = @in_DimensionID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		UoMID = @in_KeyUoMID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MUoM_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
-- Last Modified	: Tjhai, Wednesday, 29 Mar 2017, 01:51 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MUoM_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MUoM] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MUser]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MUser]
(
	@in_KeyUserID NVARCHAR (20),
	@in_UserID NVARCHAR (20),
	@in_RoleID VARCHAR (8),
	@in_FullName NVARCHAR (50),
	@in_Password NVARCHAR (100),
	@in_VendorID VARCHAR (10),
	@in_LastLogin DATETIME,
	@in_HostIP NVARCHAR (40),
	@in_IsActive BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MUser] SET
		UserID = @in_UserID,
		RoleID = @in_RoleID,
		FullName = @in_FullName,
		Password = @in_Password,
		VendorID = @in_VendorID,
		LastLogin = @in_LastLogin,
		HostIP = @in_HostIP,
		IsActive = @in_IsActive,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		UserID = @in_KeyUserID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MUser_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 11:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 11:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MUser_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MUser] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MVendor]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MVendor]
(
	@in_KeyVendorID VARCHAR (10),
	@in_VendorID VARCHAR (10),
	@in_FirstName VARCHAR (35),
	@in_LastName VARCHAR (35),
	@in_VendorSubcategoryID VARCHAR (4),
	@in_City VARCHAR (25),
	@in_Street VARCHAR (255),
	@in_Postal VARCHAR (6),
	@in_Phone VARCHAR (20),
	@in_Email VARCHAR (128),
	@in_IDNo VARCHAR (20),
	@in_NPWP VARCHAR (20),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MVendor] SET
		VendorID = @in_VendorID,
		FirstName = @in_FirstName,
		LastName = @in_LastName,
		VendorSubcategoryID = @in_VendorSubcategoryID,
		City = @in_City,
		Street = @in_Street,
		Postal = @in_Postal,
		Phone = @in_Phone,
		Email = @in_Email,
		IDNo = @in_IDNo,
		NPWP = @in_NPWP,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		VendorID = @in_KeyVendorID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MVendor_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MVendor_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MVendor] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MVendorCategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MVendorCategory]
(
	@in_KeyVendorCategoryID VARCHAR (4),
	@in_VendorCategoryID VARCHAR (4),
	@in_VendorCategoryDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MVendorCategory] SET
		VendorCategoryID = @in_VendorCategoryID,
		VendorCategoryDesc = @in_VendorCategoryDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		VendorCategoryID = @in_KeyVendorCategoryID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MVendorCategory_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MVendorCategory_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MVendorCategory] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MVendorSubcategory]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MVendorSubcategory]
(
	@in_KeyVendorSubcategoryID VARCHAR (4),
	@in_VendorSubcategoryID VARCHAR (4),
	@in_VendorSubcategoryDesc VARCHAR (40),
	@in_VendorCategoryID VARCHAR (4),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MVendorSubcategory] SET
		VendorSubcategoryID = @in_VendorSubcategoryID,
		VendorSubcategoryDesc = @in_VendorSubcategoryDesc,
		VendorCategoryID = @in_VendorCategoryID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		VendorSubcategoryID = @in_KeyVendorSubcategoryID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MVendorSubcategory_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
-- Last Modified	: Tjhai, Sunday, 09 Apr 2017, 08:59 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MVendorSubcategory_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MVendorSubcategory] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MWBS]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 09:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 09:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MWBS]
(
	@in_KeyWBSID VARCHAR (100),
	@in_WBSID VARCHAR (100),
	@in_WBSDesc VARCHAR (100),
	@in_ProjectID VARCHAR (4),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[MWBS] SET
		WBSID = @in_WBSID,
		WBSDesc = @in_WBSDesc,
		ProjectID = @in_ProjectID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		WBSID = @in_KeyWBSID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_MWBS_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 09 May 2017, 09:51 AM
-- Last Modified	: Tjhai, Tuesday, 09 May 2017, 09:51 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_MWBS_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [MWBS] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SAction]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 05:22 PM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 05:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SAction]
(
	@in_KeyActionID VARCHAR (30),
	@in_ActionID VARCHAR (30),
	@in_ActionDesc VARCHAR (30),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[SAction] SET
		ActionID = @in_ActionID,
		ActionDesc = @in_ActionDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ActionID = @in_KeyActionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SAction_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 02 May 2017, 05:22 PM
-- Last Modified	: Tjhai, Tuesday, 02 May 2017, 05:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SAction_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [SAction] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SBudgetPlanPeriod]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:22 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:22 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SBudgetPlanPeriod]
(
	@in_KeyBudgetPlanPeriodID VARCHAR (2),
	@in_BudgetPlanPeriodID VARCHAR (2),
	@in_BudgetPlanPeriodDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[SBudgetPlanPeriod] SET
		BudgetPlanPeriodID = @in_BudgetPlanPeriodID,
		BudgetPlanPeriodDesc = @in_BudgetPlanPeriodDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanPeriodID = @in_KeyBudgetPlanPeriodID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SBudgetPlanPeriod_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Monday, 31 Jul 2017, 12:22 AM
-- Last Modified	: Tjhai, Monday, 31 Jul 2017, 12:22 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SBudgetPlanPeriod_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [SBudgetPlanPeriod] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SDimension]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
-- Last Modified	: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SDimension]
(
	@in_KeyDimensionID VARCHAR (6),
	@in_DimensionID VARCHAR (6),
	@in_DimensionDesc VARCHAR (40),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[SDimension] SET
		DimensionID = @in_DimensionID,
		DimensionDesc = @in_DimensionDesc,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		DimensionID = @in_KeyDimensionID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SDimension_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
-- Last Modified	: Tjhai, Sunday, 26 Mar 2017, 10:54 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SDimension_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [SDimension] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SMenu]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SMenu]
(
	@in_KeyMenuID VARCHAR (50),
	@in_MenuID VARCHAR (50),
	@in_MenuHierarchy VARCHAR (20),
	@in_MenuDesc VARCHAR (100),
	@in_MenuIcon VARCHAR (100),
	@in_MenuUrl VARCHAR (100),
	@in_MenuVisible BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[SMenu] SET
		MenuID = @in_MenuID,
		MenuHierarchy = @in_MenuHierarchy,
		MenuDesc = @in_MenuDesc,
		MenuIcon = @in_MenuIcon,
		MenuUrl = @in_MenuUrl,
		MenuVisible = @in_MenuVisible,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		MenuID = @in_KeyMenuID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SMenu_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 10:54 AM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 10:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SMenu_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [SMenu] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SMenu_Hierarchy]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 04 May 2017, 12:41 PM
-- Last Modified	: Tjhai, Thursday, 04 May 2017, 12:41 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SMenu_Hierarchy]
(
	@in_ParentHierarchy VARCHAR (20),
	@in_LeftHierarchy VARCHAR (20),
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @varCurrHierarchy VARCHAR (20)
	SET @varCurrHierarchy = CASE WHEN @in_LeftHierarchy = '' THEN @in_ParentHierarchy + '00'
	ELSE @in_ParentHierarchy + RIGHT('00' + CAST(CAST(RIGHT(@in_LeftHierarchy, 2) AS INT) + 1 AS VARCHAR), 2) END
	
	UPDATE [dbo].[SMenu]
	SET MenuHierarchy = @in_ParentHierarchy
		+ RIGHT('00' + CAST(CAST(SUBSTRING(MenuHierarchy, LEN(@in_ParentHierarchy) + 1, 2) AS INT) + 1 AS VARCHAR), 2)
		+ SUBSTRING(MenuHierarchy, LEN(@varCurrHierarchy) + 1, LEN(MenuHierarchy) - LEN(@varCurrHierarchy))
	WHERE LEFT(MenuHierarchy, LEN(@in_ParentHierarchy)) = @in_ParentHierarchy
		AND LEFT(MenuHierarchy, LEN(@varCurrHierarchy)) >= @varCurrHierarchy
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SReport]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
-- Last Modified	: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SReport]
(
	@in_KeyReportID VARCHAR (20),
	@in_ReportID VARCHAR (20),
	@in_ReportDesc VARCHAR (50),
	@in_ReportViewName VARCHAR (100),
	@in_ReportVisible BIT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[SReport] SET
		ReportID = @in_ReportID,
		ReportDesc = @in_ReportDesc,
		ReportViewName = @in_ReportViewName,
		ReportVisible = @in_ReportVisible,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		ReportID = @in_KeyReportID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_SReport_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
-- Last Modified	: Tjhai, Thursday, 03 Aug 2017, 02:22 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_SReport_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [SReport] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_TBudgetPlan]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_TBudgetPlan]
(
	@in_KeyBudgetPlanID VARCHAR (20),
	@in_BudgetPlanID VARCHAR (20),
	@in_BudgetPlanTemplateID VARCHAR (3),
	@in_ProjectID VARCHAR (4),
	@in_ClusterID VARCHAR (3) = NULL,
	@in_UnitTypeID VARCHAR (5),
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[TBudgetPlan] SET
		BudgetPlanID = @in_BudgetPlanID,
		BudgetPlanTemplateID = @in_BudgetPlanTemplateID,
		ProjectID = @in_ProjectID,
		ClusterID = @in_ClusterID,
		UnitTypeID = @in_UnitTypeID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		BudgetPlanID = @in_KeyBudgetPlanID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_TBudgetPlan_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.1
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:38 AM
-- Last Modified	: Tjhai, Wednesday, 24 May 2017, 08:54 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_TBudgetPlan_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [TBudgetPlan] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_TNumbering]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_TNumbering]
(
	@in_KeyHeader VARCHAR (3),
	@in_KeyYear VARCHAR (4),
	@in_KeyMonth VARCHAR (2),
	@in_KeyCompanyID VARCHAR (4),
	@in_KeyProjectID VARCHAR (4),
	@in_Header VARCHAR (3),
	@in_Year VARCHAR (4),
	@in_Month VARCHAR (2),
	@in_CompanyID VARCHAR (4),
	@in_ProjectID VARCHAR (4),
	@in_LastNo INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[TNumbering] SET
		Header = @in_Header,
		Year = @in_Year,
		Month = @in_Month,
		CompanyID = @in_CompanyID,
		ProjectID = @in_ProjectID,
		LastNo = @in_LastNo,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		Header = @in_KeyHeader AND
		Year = @in_KeyYear AND
		Month = @in_KeyMonth AND
		CompanyID = @in_KeyCompanyID AND
		ProjectID = @in_KeyProjectID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_TNumbering_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_TNumbering_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [TNumbering] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_TPackage]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Fri, 26 May 2017, 10:11 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_TPackage]
(
	@in_KeyPackageID VARCHAR (20),
	@in_CompanyID VARCHAR (4),
	@in_ProjectID VARCHAR (4),
	@in_PackageID VARCHAR (20),
	@in_PackageDesc VARCHAR (40),
	@in_StatusID INT,
	@in_CreatedBy VARCHAR (20) = NULL,
	@in_CreatedDate DATETIME2 = NULL,
	@in_CreatedHost VARCHAR (50) = NULL,
	@in_ModifiedBy VARCHAR (20) = NULL,
	@in_ModifiedDate DATETIME2 = NULL,
	@in_ModifiedHost VARCHAR (50) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[TPackage] SET
		PackageID = @in_PackageID,
		PackageDesc = @in_PackageDesc,
		StatusID = @in_StatusID,
		CreatedBy = @in_CreatedBy,
		CreatedDate = @in_CreatedDate,
		CreatedHost = @in_CreatedHost,
		ModifiedBy = @in_ModifiedBy,
		ModifiedDate = @in_ModifiedDate,
		ModifiedHost = @in_ModifiedHost
	WHERE
		PackageID = @in_KeyPackageID
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_TPackage_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Tuesday, 23 May 2017, 11:45 AM
-- Last Modified	: Tjhai, Tuesday, 23 May 2017, 11:45 AM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_TPackage_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [TPackage] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_UConfig]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_UConfig]
(
	@in_KeyKey1 NVARCHAR (50),
	@in_KeyKey2 NVARCHAR (50),
	@in_KeyKey3 NVARCHAR (50),
	@in_KeyKey4 NVARCHAR (50),
	@in_Key1 NVARCHAR (50),
	@in_Key2 NVARCHAR (50),
	@in_Key3 NVARCHAR (50),
	@in_Key4 NVARCHAR (50),
	@in_Desc1 NVARCHAR (1000),
	@in_Desc2 NVARCHAR (1000) = NULL,
	@in_Desc3 NVARCHAR (1000) = NULL,
	@in_Desc4 NVARCHAR (1000) = NULL,
	@out_RowCount INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[UConfig] SET
		Key1 = @in_Key1,
		Key2 = @in_Key2,
		Key3 = @in_Key3,
		Key4 = @in_Key4,
		Desc1 = @in_Desc1,
		Desc2 = @in_Desc2,
		Desc3 = @in_Desc3,
		Desc4 = @in_Desc4
	WHERE
		Key1 = @in_KeyKey1 AND
		Key2 = @in_KeyKey2 AND
		Key3 = @in_KeyKey3 AND
		Key4 = @in_KeyKey4
	
	SET @out_RowCount = @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[upd_UConfig_BC]    Script Date: 10/20/2017 5:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Version			: 1.0.0.0
-- Created			: Tjhai, Wednesday, 03 May 2017, 02:19 PM
-- Last Modified	: Tjhai, Wednesday, 03 May 2017, 02:19 PM
----------------------------------------------------------------------
CREATE PROCEDURE [dbo].[upd_UConfig_BC]
(
	@in_Set NVARCHAR ( 1000 ) = NULL,
	@in_Filter NVARCHAR ( 1000 ) = NULL,
	
	@in_IsDebug BIT = 0,
	@out_RowCount INT OUTPUT
)
AS
BEGIN	
	SET NOCOUNT ON
	
	DECLARE @var_CMD NVARCHAR( 4000 )
	DECLARE @var_WHERE NVARCHAR( 4000 )
	
	SET @var_WHERE =
		CASE WHEN @in_Filter IS NOT NULL
		THEN 'WHERE ' + @in_Filter
		ELSE '' END
	
	SET @var_CMD = 'UPDATE [UConfig] SET ' + @in_Set + ' ' + @var_WHERE
	
	IF ( @in_IsDebug = 1 )
		PRINT @var_CMD
	
	EXEC sp_executesql @var_CMD
	SET @out_RowCount = @@ROWCOUNT
END

GO
