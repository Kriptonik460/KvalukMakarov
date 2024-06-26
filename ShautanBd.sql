USE [ShautanBd]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PositionId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderTransaction]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTransaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_OrderTransaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [ntext] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Modifydata] [datetime] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 13.04.2024 9:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](250) NOT NULL,
	[Login] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Title]) VALUES (1, N'Сухой корм для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (2, N'Консервы для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (3, N'Натуральный корм для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (4, N'Влажный корм для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (5, N'Зерновой корм для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (6, N'Полужидкий корм для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (7, N'Диетический корм для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (8, N'Мокрый корм для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (9, N'Домашний корм для собак')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (10, N'Супер-премиум корм для собак')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (11, CAST(10000.00 AS Decimal(18, 2)), 11)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (12, CAST(150000.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (13, CAST(290000.00 AS Decimal(18, 2)), 13)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (14, CAST(430000.00 AS Decimal(18, 2)), 14)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (15, CAST(570000.00 AS Decimal(18, 2)), 15)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (16, CAST(710000.00 AS Decimal(18, 2)), 16)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (17, CAST(850000.00 AS Decimal(18, 2)), 17)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (18, CAST(990000.00 AS Decimal(18, 2)), 18)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (19, CAST(1130000.00 AS Decimal(18, 2)), 19)
INSERT [dbo].[Customer] ([Id], [Balance], [UserId]) VALUES (20, CAST(1270000.00 AS Decimal(18, 2)), 20)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (1, 1, 1)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (2, 2, 2)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (3, 3, 3)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (4, 4, 4)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (5, 1, 5)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (6, 2, 6)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (7, 3, 7)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (8, 4, 8)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (9, 1, 9)
INSERT [dbo].[Employee] ([Id], [PositionId], [UserId]) VALUES (10, 2, 10)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (1, 11, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (2, 12, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (3, 13, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (4, 14, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (5, 15, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (6, 16, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (7, 17, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (8, 18, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (9, 19, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Order] ([Id], [CustomerId], [Date]) VALUES (10, 20, CAST(N'2024-04-13T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (1, 1, 1, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (2, 2, 2, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (3, 3, 3, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (4, 4, 4, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (5, 5, 5, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (6, 6, 6, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (7, 7, 7, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (8, 8, 8, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (9, 9, 9, CAST(100.00 AS Decimal(10, 2)), 450)
INSERT [dbo].[OrderProduct] ([Id], [OrderId], [ProductId], [Price], [Count]) VALUES (10, 10, 10, CAST(100.00 AS Decimal(10, 2)), 450)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Id], [Title]) VALUES (1, N'Модератор')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (2, N'Администратор')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (3, N'Работник пункта выдачи')
INSERT [dbo].[Position] ([Id], [Title]) VALUES (4, N'Работник магазина')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (1, N'Сухой корм для собак', N'Сбалансированный рацион', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (2, N'Консервы для собак', N'Пищевой продукт', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (3, N'Кости для собак', N'Поощрение и занятие', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (4, N'Лакомства для собак', N'Поощрение и лакомство', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (5, N'Игрушки для собак', N'Развлечение', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (6, N'Миски для собак', N'Посуда для кормления', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (7, N'Ошейники для собак', N'Принадлежность для прогулок', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (8, N'Поводки для собак', N'Принадлежность для прогулок', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (9, N'Коврики для собак', N'Место для сна и отдыха', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [Title], [Description], [CategoryId], [Modifydata]) VALUES (10, N'Шампуни для собак', N'Средства гигиены', 1, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Title]) VALUES (1, N'Принят')
INSERT [dbo].[Status] ([Id], [Title]) VALUES (2, N'Собирается')
INSERT [dbo].[Status] ([Id], [Title]) VALUES (3, N'Доставка')
INSERT [dbo].[Status] ([Id], [Title]) VALUES (4, N'Готов к выдаче')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (1, N'user1', N'user1login', N'user1pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (2, N'user2', N'user2login', N'user2pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (3, N'user3', N'user3login', N'user3pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (4, N'user4', N'user4login', N'user4pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (5, N'user5', N'user5login', N'user5pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (6, N'user6', N'user6login', N'user6pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (7, N'user7', N'user7login', N'user7pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (8, N'user8', N'user8login', N'user8pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (9, N'user9', N'user9login', N'user9pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (10, N'user10', N'user10login', N'user10pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (11, N'user11', N'user11login', N'user11pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (12, N'user12', N'user12login', N'user12pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (13, N'user13', N'user13login', N'user13pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (14, N'user14', N'user14login', N'user14pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (15, N'user15', N'user15login', N'user15pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (16, N'user16', N'user16login', N'user16pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (17, N'user17', N'user17login', N'user17pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (18, N'user18', N'user18login', N'user18pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (19, N'user19', N'user19login', N'user19pass')
INSERT [dbo].[User] ([Id], [Username], [Login], [Password]) VALUES (20, N'user20', N'user20login', N'user20pass')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_User]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[OrderTransaction]  WITH CHECK ADD  CONSTRAINT [FK_OrderTransaction_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[OrderTransaction] CHECK CONSTRAINT [FK_OrderTransaction_Employee]
GO
ALTER TABLE [dbo].[OrderTransaction]  WITH CHECK ADD  CONSTRAINT [FK_OrderTransaction_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderTransaction] CHECK CONSTRAINT [FK_OrderTransaction_Order]
GO
ALTER TABLE [dbo].[OrderTransaction]  WITH CHECK ADD  CONSTRAINT [FK_OrderTransaction_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[OrderTransaction] CHECK CONSTRAINT [FK_OrderTransaction_Status]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
