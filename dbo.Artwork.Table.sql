USE [Artbase]
GO
/****** Object:  Table [dbo].[Artwork]    Script Date: 16-09-2024 21:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artwork](
	[artwork_id] [int] IDENTITY(1,1) NOT NULL,
	[artist_id] [int] NULL,
	[year_made] [int] NULL,
	[title] [varchar](100) NOT NULL,
	[type_of_art] [varchar](50) NULL,
	[price] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[artwork_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Artwork]  WITH CHECK ADD  CONSTRAINT [FK_Artwork_Artists] FOREIGN KEY([artist_id])
REFERENCES [dbo].[Artists] ([artist_id])
GO
ALTER TABLE [dbo].[Artwork] CHECK CONSTRAINT [FK_Artwork_Artists]
GO
