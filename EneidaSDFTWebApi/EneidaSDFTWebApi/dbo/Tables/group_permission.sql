CREATE TABLE [dbo].[group_permission](
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
 CONSTRAINT [PK_group_permission] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[group_permission]  WITH CHECK ADD  CONSTRAINT [FK_group_permission_group] FOREIGN KEY([group_id])
REFERENCES [dbo].[group] ([group_id])
GO

ALTER TABLE [dbo].[group_permission] CHECK CONSTRAINT [FK_group_permission_group]
GO
ALTER TABLE [dbo].[group_permission]  WITH CHECK ADD  CONSTRAINT [FK_group_permission_permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[permission] ([permission_id])
GO

ALTER TABLE [dbo].[group_permission] CHECK CONSTRAINT [FK_group_permission_permission]