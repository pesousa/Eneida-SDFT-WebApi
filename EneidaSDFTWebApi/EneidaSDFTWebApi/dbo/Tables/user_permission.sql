CREATE TABLE [dbo].[user_permission](
	[user_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
 CONSTRAINT [PK_user_permission] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[user_permission]  WITH CHECK ADD  CONSTRAINT [FK_user_permission_permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[permission] ([permission_id])
GO

ALTER TABLE [dbo].[user_permission] CHECK CONSTRAINT [FK_user_permission_permission]
GO
ALTER TABLE [dbo].[user_permission]  WITH CHECK ADD  CONSTRAINT [FK_user_permission_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO

ALTER TABLE [dbo].[user_permission] CHECK CONSTRAINT [FK_user_permission_user]