CREATE TABLE [dbo].[configuration](
	[configuration_id] [int] NOT NULL,
	[sms_service] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_configuration] PRIMARY KEY CLUSTERED 
(
	[configuration_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]