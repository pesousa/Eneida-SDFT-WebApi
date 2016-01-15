CREATE TABLE [dbo].[sms_user](
	[sms_user_id] [int] NOT NULL,
	[sms_user_type_id] [int] NOT NULL,
	[sms_user_name] [nvarchar](20) NOT NULL,
	[sms_phone] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_sms_user] PRIMARY KEY CLUSTERED 
(
	[sms_user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sms_user]  WITH CHECK ADD  CONSTRAINT [FK_sms_user_sms_user_type] FOREIGN KEY([sms_user_type_id])
REFERENCES [dbo].[sms_user_type] ([sms_user_type_id])
GO

ALTER TABLE [dbo].[sms_user] CHECK CONSTRAINT [FK_sms_user_sms_user_type]