CREATE TABLE [dbo].[device_type](
	[device_type_id] [int] NOT NULL,
	[batery_device] [int] NOT NULL,
	[description] [nvarchar](20) NOT NULL,
	[image_content_type] [nvarchar](100) NULL,
	[image_content] [varbinary](max) NULL,
 CONSTRAINT [PK_device_type] PRIMARY KEY CLUSTERED 
(
	[device_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]