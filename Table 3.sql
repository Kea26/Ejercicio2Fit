
USE [StudentTracker]
GO

/****** Object:  Table [dbo].[Parents]    Script Date: 10/6/2023 15:01:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Parents](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](200) NOT NULL,
	[Work] [varchar](50) NOT NULL,
	[Mail] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[IdAddress] [bigint] NOT NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Parents]  WITH CHECK ADD  CONSTRAINT [FK_Parents_Address] FOREIGN KEY([IdAddress])
REFERENCES [dbo].[Address] ([Id])
GO

ALTER TABLE [dbo].[Parents] CHECK CONSTRAINT [FK_Parents_Address]
GO
