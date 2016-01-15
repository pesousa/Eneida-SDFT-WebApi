CREATE TABLE [dbo].[alarm](
	[alarm_id] [int] NOT NULL,
	[asset_id] [int] NOT NULL,
	[device_id] [int] NULL,
	[sensor_id] [int] NULL,
	[alarm_type_id] [int] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[alarm_message] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_alarm] PRIMARY KEY CLUSTERED 
(
	[alarm_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[alarm]  WITH CHECK ADD  CONSTRAINT [FK_alarm_alarm_type] FOREIGN KEY([alarm_type_id])
REFERENCES [dbo].[alarm_type] ([alarm_type_id])
GO

ALTER TABLE [dbo].[alarm] CHECK CONSTRAINT [FK_alarm_alarm_type]
GO
ALTER TABLE [dbo].[alarm]  WITH CHECK ADD  CONSTRAINT [FK_alarm_asset] FOREIGN KEY([asset_id])
REFERENCES [dbo].[asset] ([asset_id])
GO

ALTER TABLE [dbo].[alarm] CHECK CONSTRAINT [FK_alarm_asset]
GO
ALTER TABLE [dbo].[alarm]  WITH CHECK ADD  CONSTRAINT [FK_alarm_device] FOREIGN KEY([device_id])
REFERENCES [dbo].[device] ([device_id])
GO

ALTER TABLE [dbo].[alarm] CHECK CONSTRAINT [FK_alarm_device]
GO
ALTER TABLE [dbo].[alarm]  WITH CHECK ADD  CONSTRAINT [FK_alarm_sensor] FOREIGN KEY([sensor_id])
REFERENCES [dbo].[sensor] ([sendor_id])
GO

ALTER TABLE [dbo].[alarm] CHECK CONSTRAINT [FK_alarm_sensor]