CREATE TABLE [dbo].[sensor_alarm_type](
	[sendor_id] [int] NOT NULL,
	[alarm_type_id] [int] NOT NULL,
 CONSTRAINT [PK_sensor_alarm_type] PRIMARY KEY CLUSTERED 
(
	[sendor_id] ASC,
	[alarm_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sensor_alarm_type]  WITH CHECK ADD  CONSTRAINT [FK_sensor_alarm_type_alarm_type] FOREIGN KEY([alarm_type_id])
REFERENCES [dbo].[alarm_type] ([alarm_type_id])
GO

ALTER TABLE [dbo].[sensor_alarm_type] CHECK CONSTRAINT [FK_sensor_alarm_type_alarm_type]
GO
ALTER TABLE [dbo].[sensor_alarm_type]  WITH CHECK ADD  CONSTRAINT [FK_sensor_alarm_type_sensor] FOREIGN KEY([sendor_id])
REFERENCES [dbo].[sensor] ([sendor_id])
GO

ALTER TABLE [dbo].[sensor_alarm_type] CHECK CONSTRAINT [FK_sensor_alarm_type_sensor]