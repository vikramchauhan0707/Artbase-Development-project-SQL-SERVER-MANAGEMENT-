USE [Artbase]
GO
/****** Object:  Table [dbo].[Customer_Artists]    Script Date: 16-09-2024 21:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Artists](
	[customer_id] [int] NOT NULL,
	[artist_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC,
	[artist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer_Artists]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Artists_Artists] FOREIGN KEY([artist_id])
REFERENCES [dbo].[Artists] ([artist_id])
GO
ALTER TABLE [dbo].[Customer_Artists] CHECK CONSTRAINT [FK_Customer_Artists_Artists]
GO
ALTER TABLE [dbo].[Customer_Artists]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Artists_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([customer_id])
GO
ALTER TABLE [dbo].[Customer_Artists] CHECK CONSTRAINT [FK_Customer_Artists_Customers]
GO
