CREATE TABLE [dbo].[asset_type](
	[asset_type_id] [int] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[image_content] [varbinary](max) NULL,
	[image_content_type] [nvarchar](100) NULL,
 CONSTRAINT [PK_asset_type] PRIMARY KEY CLUSTERED 
(
	[asset_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]