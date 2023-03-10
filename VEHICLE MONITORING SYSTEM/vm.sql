SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_vehiclecentre]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_vehiclecentre](
	[centreid] [int] IDENTITY(1,1) NOT NULL,
	[centrename] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_vehiclecentre] PRIMARY KEY CLUSTERED 
(
	[centreid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_vehicletype]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_vehicletype](
	[vehicleid] [int] IDENTITY(1,1) NOT NULL,
	[vehiclename] [varchar](50) NOT NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_vehicletype] PRIMARY KEY CLUSTERED 
(
	[vehicleid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_distributor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_distributor](
	[dlid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[branchname] [varchar](50) NULL,
	[distributorname] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_distributor] PRIMARY KEY CLUSTERED 
(
	[dlid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_vehicleselection]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_vehicleselection](
	[vsid] [int] IDENTITY(1,1) NOT NULL,
	[vdid] [int] NULL,
	[vehiclename] [varchar](50) NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[mobileno] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[address] [varchar](max) NULL,
	[sdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_vehicleselection] PRIMARY KEY CLUSTERED 
(
	[vsid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_vehicleregistration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_vehicleregistration](
	[vrid] [int] IDENTITY(1,1) NOT NULL,
	[vdid] [int] NULL,
	[vehiclename] [varchar](50) NULL,
	[vehiclemodel] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[mbno] [varchar](20) NULL,
	[vrno] [varchar](50) NULL,
	[exdate] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[address] [varchar](2000) NULL,
	[rdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_vehicleregistration] PRIMARY KEY CLUSTERED 
(
	[vrid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_vehicledetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_vehicledetails](
	[vdid] [int] IDENTITY(1,1) NOT NULL,
	[vehicleid] [int] NULL,
	[vehiclemodel] [varchar](50) NULL,
	[vehicleimage] [varchar](300) NULL,
	[enginetype] [varchar](50) NULL,
	[displacement] [varchar](50) NULL,
	[fueleconomy] [varchar](50) NULL,
	[fuelcapacity] [varchar](50) NULL,
	[fuelreserve] [varchar](50) NULL,
	[fueltype] [varchar](50) NULL,
	[lenth] [varchar](50) NULL,
	[height] [varchar](50) NULL,
	[width] [varchar](50) NULL,
	[clutch] [varchar](50) NULL,
	[gearbox] [varchar](50) NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_vehicledetails] PRIMARY KEY CLUSTERED 
(
	[vdid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_vehicleselection_tbl_vehicledetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_vehicleselection]'))
ALTER TABLE [dbo].[tbl_vehicleselection]  WITH CHECK ADD  CONSTRAINT [FK_tbl_vehicleselection_tbl_vehicledetails] FOREIGN KEY([vdid])
REFERENCES [dbo].[tbl_vehicledetails] ([vdid])
GO
ALTER TABLE [dbo].[tbl_vehicleselection] CHECK CONSTRAINT [FK_tbl_vehicleselection_tbl_vehicledetails]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_vehicleregistration_tbl_vehicledetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_vehicleregistration]'))
ALTER TABLE [dbo].[tbl_vehicleregistration]  WITH CHECK ADD  CONSTRAINT [FK_tbl_vehicleregistration_tbl_vehicledetails] FOREIGN KEY([vdid])
REFERENCES [dbo].[tbl_vehicledetails] ([vdid])
GO
ALTER TABLE [dbo].[tbl_vehicleregistration] CHECK CONSTRAINT [FK_tbl_vehicleregistration_tbl_vehicledetails]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_vehicledetails_tbl_vehicletype]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_vehicledetails]'))
ALTER TABLE [dbo].[tbl_vehicledetails]  WITH CHECK ADD  CONSTRAINT [FK_tbl_vehicledetails_tbl_vehicletype] FOREIGN KEY([vehicleid])
REFERENCES [dbo].[tbl_vehicletype] ([vehicleid])
GO
ALTER TABLE [dbo].[tbl_vehicledetails] CHECK CONSTRAINT [FK_tbl_vehicledetails_tbl_vehicletype]
