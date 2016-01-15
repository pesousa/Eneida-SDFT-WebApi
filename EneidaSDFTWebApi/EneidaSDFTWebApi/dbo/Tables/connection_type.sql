CREATE TABLE [dbo].[connection_type](
	[connection_type_id] [int] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[port] [int] NOT NULL,
 CONSTRAINT [PK_connection_type] PRIMARY KEY CLUSTERED 
(
	[connection_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]