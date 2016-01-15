CREATE TABLE [dbo].[device_sms_user](
	[device_id] [int] NOT NULL,
	[sms_user_id] [int] NOT NULL,
 CONSTRAINT [PK_device_sms_user] PRIMARY KEY CLUSTERED 
(
	[device_id] ASC,
	[sms_user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[device_sms_user]  WITH CHECK ADD  CONSTRAINT [FK_device_sms_user_device] FOREIGN KEY([device_id])
REFERENCES [dbo].[device] ([device_id])
GO

ALTER TABLE [dbo].[device_sms_user] CHECK CONSTRAINT [FK_device_sms_user_device]
GO
ALTER TABLE [dbo].[device_sms_user]  WITH CHECK ADD  CONSTRAINT [FK_device_sms_user_sms_user] FOREIGN KEY([sms_user_id])
REFERENCES [dbo].[sms_user] ([sms_user_id])
GO

ALTER TABLE [dbo].[device_sms_user] CHECK CONSTRAINT [FK_device_sms_user_sms_user]