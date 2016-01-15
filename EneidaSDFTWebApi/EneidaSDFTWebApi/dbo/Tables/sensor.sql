CREATE TABLE [dbo].[sensor](
	[sendor_id] [int] NOT NULL,
	[sensor_type_id] [int] NOT NULL,
	[connection_type_id] [int] NOT NULL,
	[device_id] [int] NOT NULL,
	[location_id] [int] NULL,
	[sending_freq] [float] NOT NULL,
	[acquisition_freq_adc] [float] NOT NULL,
	[acquisition_time_adc] [datetime] NOT NULL,
	[scale_factor] [nvarchar](50) NOT NULL,
	[enabled] [bit] NOT NULL,
	[port] [int] NOT NULL,
 CONSTRAINT [PK_sensor] PRIMARY KEY CLUSTERED 
(
	[sendor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sensor]  WITH CHECK ADD  CONSTRAINT [FK_sensor_connection_type] FOREIGN KEY([connection_type_id])
REFERENCES [dbo].[connection_type] ([connection_type_id])
GO

ALTER TABLE [dbo].[sensor] CHECK CONSTRAINT [FK_sensor_connection_type]
GO
ALTER TABLE [dbo].[sensor]  WITH CHECK ADD  CONSTRAINT [FK_sensor_device] FOREIGN KEY([device_id])
REFERENCES [dbo].[device] ([device_id])
GO

ALTER TABLE [dbo].[sensor] CHECK CONSTRAINT [FK_sensor_device]
GO
ALTER TABLE [dbo].[sensor]  WITH CHECK ADD  CONSTRAINT [FK_sensor_location] FOREIGN KEY([location_id])
REFERENCES [dbo].[location] ([location_id])
GO

ALTER TABLE [dbo].[sensor] CHECK CONSTRAINT [FK_sensor_location]
GO
ALTER TABLE [dbo].[sensor]  WITH CHECK ADD  CONSTRAINT [FK_sensor_sensor_type] FOREIGN KEY([sensor_type_id])
REFERENCES [dbo].[sensor_type] ([sensor_type_id])
GO

ALTER TABLE [dbo].[sensor] CHECK CONSTRAINT [FK_sensor_sensor_type]