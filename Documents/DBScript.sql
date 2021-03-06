USE [ShoppingCart]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/16/2017 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([ID], [Name], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, N'Electronics', 1, NULL, CAST(0x0000A80B008EA767 AS DateTime), NULL, CAST(0x0000A80B008EA767 AS DateTime))
INSERT [dbo].[Category] ([ID], [Name], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, N'Baby Toys', 1, NULL, CAST(0x0000A80B008EE843 AS DateTime), NULL, CAST(0x0000A80B008EE843 AS DateTime))
INSERT [dbo].[Category] ([ID], [Name], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (3, N'Furniture', 1, NULL, CAST(0x0000A80B008EF3C7 AS DateTime), NULL, CAST(0x0000A80B008EF3C7 AS DateTime))
INSERT [dbo].[Category] ([ID], [Name], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (4, N'Books', 1, NULL, CAST(0x0000A80B008EF7A6 AS DateTime), NULL, CAST(0x0000A80B008EF7A6 AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[CustomerRole]    Script Date: 10/16/2017 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CustomerRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerRole] ON
INSERT [dbo].[CustomerRole] ([ID], [RoleName], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, N'Admin', 1, NULL, CAST(0x0000A80C0084797C AS DateTime), NULL, CAST(0x0000A80C0084797C AS DateTime))
INSERT [dbo].[CustomerRole] ([ID], [RoleName], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, N'Customer', 1, NULL, CAST(0x0000A80C0084AF05 AS DateTime), NULL, CAST(0x0000A80C0084AF05 AS DateTime))
SET IDENTITY_INSERT [dbo].[CustomerRole] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 10/16/2017 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](200) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[RoleID] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([ID], [NAME], [Email], [Password], [Phone], [RoleID], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, N'Admin', N'admin@gmail.com', N'admin', N'9878786832', 1, 1, NULL, CAST(0x0000A80C00874207 AS DateTime), NULL, CAST(0x0000A80C00874207 AS DateTime))
INSERT [dbo].[Customer] ([ID], [NAME], [Email], [Password], [Phone], [RoleID], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (3, N'customer', N'customer@gmail.com', N'customer', N'8776786832', 2, 1, NULL, CAST(0x0000A80C00878AC4 AS DateTime), NULL, CAST(0x0000A80C00878AC4 AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 10/16/2017 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ID], [Name], [Description], [Price], [CategoryId], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, N'iPhone 7 Mobile', N'Product from Apple', CAST(55000 AS Decimal(18, 0)), 1, 1, NULL, CAST(0x0000A80B0090E054 AS DateTime), NULL, CAST(0x0000A80B0090E054 AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [Description], [Price], [CategoryId], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, N'Sony Adopter', N'Product from Sony', CAST(5000 AS Decimal(18, 0)), 1, 1, NULL, CAST(0x0000A80B0091057E AS DateTime), NULL, CAST(0x0000A80B0091057E AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [Description], [Price], [CategoryId], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (3, N'Nilkamal chair', N'Nilkamal', CAST(2000 AS Decimal(18, 0)), 3, 1, NULL, CAST(0x0000A80B009129A0 AS DateTime), NULL, CAST(0x0000A80B009129A0 AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [Description], [Price], [CategoryId], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (4, N'Lego strips', N'Lego', CAST(5000 AS Decimal(18, 0)), 2, 1, NULL, CAST(0x0000A80B009147C3 AS DateTime), NULL, CAST(0x0000A80B009147C3 AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [Description], [Price], [CategoryId], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5, N'Wings of Fire', N'APJ bio story', CAST(300 AS Decimal(18, 0)), 4, 1, NULL, CAST(0x0000A80B00916CAE AS DateTime), NULL, CAST(0x0000A80B00916CAE AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[ShippingAddress]    Script Date: 10/16/2017 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShippingAddress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](200) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NULL,
	[STATE] [varchar](20) NOT NULL,
	[PinCode] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderHistory]    Script Date: 10/16/2017 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OrderHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 10/16/2017 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerAddress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NULL,
	[PinCode] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_CustomerAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/16/2017 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[CustomerId] [int] NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Category_IsActive]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Category_CreatedOn]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Category_ModifiedOn]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF__Customer__IsActi__182C9B23]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Customer__Create__1920BF5C]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF__Customer__Modifi__1A14E395]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF_CustomerRole_IsActive]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[CustomerRole] ADD  CONSTRAINT [DF_CustomerRole_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_CustomerRole_CreatedOn]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[CustomerRole] ADD  CONSTRAINT [DF_CustomerRole_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_CustomerRole_ModifiedOn]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[CustomerRole] ADD  CONSTRAINT [DF_CustomerRole_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF__Product__IsActiv__0BC6C43E]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Product__Created__0CBAE877]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF__Product__Modifie__0DAF0CB0]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF__ShippingA__IsAct__25869641]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[ShippingAddress] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__ShippingA__Creat__267ABA7A]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[ShippingAddress] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF__ShippingA__Modif__276EDEB3]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[ShippingAddress] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  ForeignKey [FK__Cart__CustomerId__1FCDBCEB]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([ID])
GO
/****** Object:  ForeignKey [FK__Cart__ProductId__1ED998B2]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ID])
GO
/****** Object:  ForeignKey [FK__Customer__RoleID__173876EA]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[CustomerRole] ([ID])
GO
/****** Object:  ForeignKey [FK_CustomerAddress_Customer]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[CustomerAddress]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[CustomerAddress] CHECK CONSTRAINT [FK_CustomerAddress_Customer]
GO
/****** Object:  ForeignKey [FK_OrderHistory_Customer]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_OrderHistory_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderHistory] CHECK CONSTRAINT [FK_OrderHistory_Customer]
GO
/****** Object:  ForeignKey [FK_OrderHistory_Product]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_OrderHistory_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderHistory] CHECK CONSTRAINT [FK_OrderHistory_Product]
GO
/****** Object:  ForeignKey [FK__Product__Categor__0AD2A005]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([ID])
GO
/****** Object:  ForeignKey [FK__ShippingA__Custo__24927208]    Script Date: 10/16/2017 14:05:06 ******/
ALTER TABLE [dbo].[ShippingAddress]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([ID])
GO
