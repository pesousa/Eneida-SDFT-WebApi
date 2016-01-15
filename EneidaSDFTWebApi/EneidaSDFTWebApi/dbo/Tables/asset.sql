CREATE TABLE [dbo].[asset](
	[asset_id] [int] NOT NULL,
	[asset_type_id] [int] NULL,
	[localtion_id] [int] NULL,
	[description] [nvarchar](50) NOT NULL,
	[line_code] [nvarchar](20) NOT NULL,
	[drc] [nvarchar](20) NOT NULL,
	[ao] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_asset] PRIMARY KEY CLUSTERED 
(
	[asset_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[asset]  WITH CHECK ADD  CONSTRAINT [FK_asset_asset_type] FOREIGN KEY([asset_type_id])
REFERENCES [dbo].[asset_type] ([asset_type_id])
GO

ALTER TABLE [dbo].[asset] CHECK CONSTRAINT [FK_asset_asset_type]
GO
ALTER TABLE [dbo].[asset]  WITH CHECK ADD  CONSTRAINT [FK_asset_location] FOREIGN KEY([localtion_id])
REFERENCES [dbo].[location] ([location_id])
GO

ALTER TABLE [dbo].[asset] CHECK CONSTRAINT [FK_asset_location]