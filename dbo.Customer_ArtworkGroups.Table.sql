USE [Artbase]
GO
/****** Object:  Table [dbo].[Customer_ArtworkGroups]    Script Date: 16-09-2024 21:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_ArtworkGroups](
	[customer_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC,
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer_ArtworkGroups]  WITH CHECK ADD  CONSTRAINT [FK_Customer_ArtworkGroups_ArtworkGroups] FOREIGN KEY([group_id])
REFERENCES [dbo].[ArtworkGroups] ([group_id])
GO
ALTER TABLE [dbo].[Customer_ArtworkGroups] CHECK CONSTRAINT [FK_Customer_ArtworkGroups_ArtworkGroups]
GO
ALTER TABLE [dbo].[Customer_ArtworkGroups]  WITH CHECK ADD  CONSTRAINT [FK_Customer_ArtworkGroups_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([customer_id])
GO
ALTER TABLE [dbo].[Customer_ArtworkGroups] CHECK CONSTRAINT [FK_Customer_ArtworkGroups_Customers]
GO
