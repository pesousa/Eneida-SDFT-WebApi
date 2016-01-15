CREATE TABLE [dbo].[sensor_type](
	[sensor_type_id] [int] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sensor_type] PRIMARY KEY CLUSTERED 
(
	[sensor_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]