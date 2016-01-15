CREATE TABLE [dbo].[user_group](
	[user_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
 CONSTRAINT [PK_user_group] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[user_group]  WITH CHECK ADD  CONSTRAINT [FK_user_group_group] FOREIGN KEY([group_id])
REFERENCES [dbo].[group] ([group_id])
GO

ALTER TABLE [dbo].[user_group] CHECK CONSTRAINT [FK_user_group_group]
GO
ALTER TABLE [dbo].[user_group]  WITH CHECK ADD  CONSTRAINT [FK_user_group_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO

ALTER TABLE [dbo].[user_group] CHECK CONSTRAINT [FK_user_group_user]