CREATE TABLE [dbo].[device](
	[device_id] [int] NOT NULL,
	[device_type_id] [int] NOT NULL,
	[device_status_id] [int] NOT NULL,
	[localizacao_id] [int] NULL,
	[serial_number] [nvarchar](50) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[sms_number] [nvarchar](20) NOT NULL,
	[sms_apn] [nvarchar](20) NOT NULL,
	[gprs_apn] [nvarchar](20) NOT NULL,
	[gprs_server_ip] [nvarchar](20) NOT NULL,
	[gprs_server_port] [int] NULL,
	[gprs_signal_level] [int] NULL,
 CONSTRAINT [PK_device] PRIMARY KEY CLUSTERED 
(
	[device_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[device]  WITH CHECK ADD  CONSTRAINT [FK_device_device_status] FOREIGN KEY([device_status_id])
REFERENCES [dbo].[device_status] ([device_status_id])
GO

ALTER TABLE [dbo].[device] CHECK CONSTRAINT [FK_device_device_status]
GO
ALTER TABLE [dbo].[device]  WITH CHECK ADD  CONSTRAINT [FK_device_device_type] FOREIGN KEY([device_type_id])
REFERENCES [dbo].[device_type] ([device_type_id])
GO

ALTER TABLE [dbo].[device] CHECK CONSTRAINT [FK_device_device_type]
GO
ALTER TABLE [dbo].[device]  WITH CHECK ADD  CONSTRAINT [FK_device_location] FOREIGN KEY([localizacao_id])
REFERENCES [dbo].[location] ([location_id])
GO

ALTER TABLE [dbo].[device] CHECK CONSTRAINT [FK_device_location]