CREATE TABLE [dbo].[asset_device_relation](
	[asset_id] [int] NOT NULL,
	[device_id] [int] NOT NULL,
 CONSTRAINT [PK_asset_device_relation] PRIMARY KEY CLUSTERED 
(
	[asset_id] ASC,
	[device_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[asset_device_relation]  WITH CHECK ADD  CONSTRAINT [FK_asset_device_relation_asset] FOREIGN KEY([asset_id])
REFERENCES [dbo].[asset] ([asset_id])
GO

ALTER TABLE [dbo].[asset_device_relation] CHECK CONSTRAINT [FK_asset_device_relation_asset]
GO
ALTER TABLE [dbo].[asset_device_relation]  WITH CHECK ADD  CONSTRAINT [FK_asset_device_relation_device] FOREIGN KEY([device_id])
REFERENCES [dbo].[device] ([device_id])
GO

ALTER TABLE [dbo].[asset_device_relation] CHECK CONSTRAINT [FK_asset_device_relation_device]