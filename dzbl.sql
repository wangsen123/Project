USE [dzbl]
GO
/****** Object:  User [ywb]    Script Date: 03/02/2014 14:52:26 ******/
CREATE USER [ywb] FOR LOGIN [ywb] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[doctor]    Script Date: 03/02/2014 14:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[doctor](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[room] [varchar](50) NULL,
 CONSTRAINT [PK_doctor] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[case]    Script Date: 03/02/2014 14:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[case](
	[case_id] [int] NOT NULL,
	[case_type] [varchar](100) NULL,
	[case_template] [varchar](50) NULL,
 CONSTRAINT [PK_case] PRIMARY KEY CLUSTERED 
(
	[case_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[patient]    Script Date: 03/02/2014 14:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patient](
	[id_card] [varchar](50) NOT NULL,
	[p_name] [varchar](50) NULL,
	[sex] [varchar](10) NULL,
	[age] [int] NULL,
	[nation] [varchar](10) NULL,
	[job] [varchar](50) NULL,
	[born_address] [varchar](50) NULL,
	[is_married] [varchar](10) NULL,
	[post_code] [varchar](50) NULL,
	[phone] [varchar](20) NULL,
	[work_address] [varchar](50) NULL,
	[home_address] [varchar](50) NULL,
 CONSTRAINT [PK_patient] PRIMARY KEY CLUSTERED 
(
	[id_card] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital]    Script Date: 03/02/2014 14:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital](
	[in_hospital_id] [int] NOT NULL,
	[date] [varchar](50) NULL,
	[bed_id] [int] NULL,
	[description] [varchar](50) NULL,
	[diagnose_one] [varchar](50) NULL,
	[diagnose_two] [varchar](50) NULL,
	[diagnose_three] [varchar](50) NULL,
	[diagnose_four] [varchar](50) NULL,
	[is_out_hospital] [varchar](10) NULL,
	[username] [varchar](50) NULL,
	[id_card] [varchar](50) NULL,
	[type_num] [varchar](100) NULL,
 CONSTRAINT [PK_hospital] PRIMARY KEY CLUSTERED 
(
	[in_hospital_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_id_card]    Script Date: 03/02/2014 14:52:26 ******/
ALTER TABLE [dbo].[hospital]  WITH CHECK ADD  CONSTRAINT [FK_id_card] FOREIGN KEY([id_card])
REFERENCES [dbo].[patient] ([id_card])
GO
ALTER TABLE [dbo].[hospital] CHECK CONSTRAINT [FK_id_card]
GO
/****** Object:  ForeignKey [FK_username]    Script Date: 03/02/2014 14:52:26 ******/
ALTER TABLE [dbo].[hospital]  WITH CHECK ADD  CONSTRAINT [FK_username] FOREIGN KEY([username])
REFERENCES [dbo].[doctor] ([username])
GO
ALTER TABLE [dbo].[hospital] CHECK CONSTRAINT [FK_username]
GO
