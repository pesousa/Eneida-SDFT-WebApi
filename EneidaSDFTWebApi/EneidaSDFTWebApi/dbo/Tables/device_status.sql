CREATE TABLE [dbo].[device_status](
	[device_status_id] [int] NOT NULL,
	[description] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_device_status] PRIMARY KEY CLUSTERED 
(
	[device_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]