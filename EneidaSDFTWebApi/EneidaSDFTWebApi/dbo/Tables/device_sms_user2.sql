CREATE TABLE [dbo].[device_sms_user2](
	[device_id] [int] NOT NULL,
	[sms_user_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[device_sms_user2]  WITH CHECK ADD  CONSTRAINT [FK_device_sms_user2_sms_user] FOREIGN KEY([sms_user_id])
REFERENCES [dbo].[sms_user] ([sms_user_id])
GO

ALTER TABLE [dbo].[device_sms_user2] CHECK CONSTRAINT [FK_device_sms_user2_sms_user]