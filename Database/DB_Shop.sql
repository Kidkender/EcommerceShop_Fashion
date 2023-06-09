/****** Object:  Table [dbo].[Categories]    Script Date: 4/13/2023 10:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giohang]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tensp] [nvarchar](200) NULL,
	[gia] [int] NULL,
	[soluong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login_session]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login_session](
	[username] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHistories]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHistories](
	[OrderHistoryID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[Note] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems1]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems1](
	[id] [int] NULL,
	[productid] [int] NULL,
	[price] [int] NULL,
	[quanlity] [int] NULL,
	[userid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
	[ShippingCost] [decimal](18, 2) NOT NULL,
	[Tax] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatuses]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatuses](
	[OrderStatusID] [int] NOT NULL,
	[OrderStatusName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[LastPrice] [decimal](18, 2) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[imgUrl] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[UserEmail] [nvarchar](255) NOT NULL,
	[UserPassword] [nvarchar](255) NOT NULL,
	[UserRole] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Gender] [bit] NULL,
	[AddressInfo] [nvarchar](max) NULL,
	[PhoneNum] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (1, N'Ao')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2, N'Quan')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (3, N'Giay')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[giohang] ON 

INSERT [dbo].[giohang] ([id], [tensp], [gia], [soluong]) VALUES (1, N'Áo khoác bé Lan', 120, 1)
INSERT [dbo].[giohang] ([id], [tensp], [gia], [soluong]) VALUES (2, N'Áo sơ mi bé Lan', 240, 1)
INSERT [dbo].[giohang] ([id], [tensp], [gia], [soluong]) VALUES (3, N'Quần kaki đen bé Lan', 320, 3)
INSERT [dbo].[giohang] ([id], [tensp], [gia], [soluong]) VALUES (4, N'Quần Jean bé Lan', 220, 2)
INSERT [dbo].[giohang] ([id], [tensp], [gia], [soluong]) VALUES (5, N'Đầm xòe công chúa bé Lan', 220, 1)
SET IDENTITY_INSERT [dbo].[giohang] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (1, 1, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2302DKU0022701/3ef65ec0-272e-4655-9e9e-ebe3540324db.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (2, 2, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2304ATUK0020401/4b4b1488-68f5-4f1d-b3e8-631615c23794.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (3, 3, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2303ATU5362201/2126f21b-6b9d-4776-9fb0-62dcc606bfe6.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (4, 4, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2304ATUK0020402/1dbdb48e-e258-426d-bfc3-a6f7c1969264.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (5, 5, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2303ATU5361601/3a016db2-e203-46e1-a98f-0a4f184badca.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (6, 6, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2303DKU0021205/5ab0e993-4593-4962-94e6-a5f83ba33ae7.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (7, 7, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2303SJU5361502/b82b4060-60f1-46d4-9ff1-4e5806b75748.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (8, 8, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2301SKUFMF0401/4c4f077a-37c7-4611-b20d-ba4653329b37.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (9, 9, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2303QTU8882001/039e12ec-51ec-4adf-a34f-be951f65f204.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (10, 10, N'https://media-fmplus.cdn.vccloud.vn/uploads/products/2303QTU8881002/370ebca4-5492-49c0-9216-4a49ac72df63.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (11, 11, N'')
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (1, N'áo kiểu tay phồng cột nơ hg2111a ( )', N'
- Tên sản phẩm: Áo Kiểu Nữ Tay Phồng Thắt Nơ

- Độ tuổi: > 15 tuổi

- Phù hợp: Mặc đi học, đi làm, đi chơi

- Chất liệu: Vải voan

- Màu sắc: Trắng/ Be

- Họa tiết: Trơn buộc nơ', CAST(300.00 AS Decimal(18, 2)), CAST(205.00 AS Decimal(18, 2)), 1, N'den.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (2, N'áo voan kiểu bèo td phối ren vu2211d ( )', N'
- Tên sản phẩm: Áo Voan Kiểu Bèo Tay Dài Phối Ren

- Độ tuổi: > 15 tuổi

- Phù hợp: Mặc đi học, đi làm, đi chơi

- Chất liệu: Vải voan

- Màu sắc: Kem/ Trắng

- Họa tiết: Trơn', CAST(300.00 AS Decimal(18, 2)), CAST(229.00 AS Decimal(18, 2)), 1, N'do.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (3, N'áo thun nữ tay lỡ loang màu in chữ sunnyday', N'
- Tên sản phẩm: Áo Thun Nữ Tay Lỡ Loang Màu In Chữ Sunnyday

- Phù hợp: Mặc đi học, đi làm, đi chơi.

- Chất liệu: Vải thun 

- Bảng màu: Đen/ Xám đậm/ Xám nhạt/ Nâu', CAST(300.00 AS Decimal(18, 2)), CAST(159.00 AS Decimal(18, 2)), 1, N'xanh.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (4, N'áo thun nữ tay lỡ in chữ nổi memory of mono', N'
- Tên sản phẩm: Áo Thun Nữ Tay Lỡ In Chữ Nổi Memory Of Mono

- Phù hợp: Mặc đi học, đi làm, đi chơi.

- Chất liệu: Vải thun

- Bảng màu: Đen/ Xám đậm/ Tím/ Trắng/ Be

- Họa tiết: Trơn in chữ ', CAST(300.00 AS Decimal(18, 2)), CAST(159.00 AS Decimal(18, 2)), 1, N'tim.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (5, N'áo polo nữ tổ ong kẻ ngang croptop', N'
- Tên sản phẩm: Áo Polo Nữ Tổ Ong Kẻ Ngang Croptop

- Độ tuổi: > 12 tuổi

- Phù hợp: Mặc đi làm, đi học, đi chơi, ở nhà.

- Chất liệu: Vải thun tổ ong

- Màu sắc: Trắng/ Nâu/ Hồng/ Đen

- Họa tiết: Kẻ ngang ', CAST(300.00 AS Decimal(18, 2)), CAST(145.00 AS Decimal(18, 2)), 1, N'hong.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (6, N'áo thun cadigan sát nách nữ', N'
- Tên sản phẩm: Áo Thun Cadigan Sát Nách Nữ

- Phù hợp: Mặc đi chơi, ở nhà, tập thể thao.

- Chất liệu: Vải len

- Bảng màu: Đen kẻ trắng/ Đen kẻ be/ Trắng/ Be/ Đen

- Họa tiết: Kẻ', CAST(300.00 AS Decimal(18, 2)), CAST(89.00 AS Decimal(18, 2)), 1, N'vay.png')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (7, N'quần short jeans nữ 2 túi trước', N'
- Tên sản phẩm: Quần Short Jeans Nữ 2 Túi Trước

- Độ tuổi: > 12 tuổi

- Phù hợp: Mặc đi chơi, ở nhà.

- Chất liệu: Vải jeans
- Màu sắc: Xanh jeans nhạt/ Xanh jeans đậm

- Họa tiết: Trơn 2 túi trước', CAST(300.00 AS Decimal(18, 2)), CAST(149.00 AS Decimal(18, 2)), 2, N'vang.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (8, N'quần short kiểu nữ 1 nút', N'
- Tên sản phẩm: Quần Short Kiểu Nữ 1 Nút

- Phù hợp: Mặc đi chơi, ở nhà.

- Độ tuổi: > 12 tuổi

- Chất liệu: Vải kate

- Bảng màu: Đen/ Be/ Trắng

- Họa tiết: Trơn', CAST(300.00 AS Decimal(18, 2)), CAST(157.25 AS Decimal(18, 2)), 2, N'jenny.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (9, N'quần tây nữ dáng suông 2 nút ch1609b ( )', N'
- Tên sản phẩm: Quần Tây Nữ Dáng Suông 2 Nút

- Độ tuổi: > 14 tuổi

- Phù hợp: Mặc đi học, đi làm, đi chơi.

- Chất liệu: Vải tuyết mưa

- Họa tiết: Trơn ', CAST(300.00 AS Decimal(18, 2)), CAST(259.00 AS Decimal(18, 2)), 2, N'trang.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (10, N'quần tây nữ dài dáng suông 2 túi ngang 1 nút ch1411d ( )', N'
- Tên sản phẩm: Quần Tây Nữ Dáng Suông Túi Ngang

- Độ tuổi: > 14 tuổi

- Phù hợp: Mặc đi học, đi làm, đi chơi.

- Chất liệu: Vải lụa

- Màu sắc: Đen/ Be

- Họa tiết: Trơn ', CAST(300.00 AS Decimal(18, 2)), CAST(235.00 AS Decimal(18, 2)), 1, N'lisa.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [LastPrice], [CategoryId], [imgUrl]) VALUES (11, N'quần caro ống rộng cạp chun', N' - Tên sản phẩm: Quần Caro Ống Rộng Cạp Chun - Phù hợp: Mặc đi học, đi làm, đi chơi. - Chất liệu: Vải bố caro kẻ - Bảng màu: Đen/ Xanh đậm/ Đỏ/ Be/ Xanh - Họa tiết: Caro', CAST(120.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 2, N'rose.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (1, N'lethaivinh', N'lethaivinh@example.com', N'password', N'user', N'Lê Thái Vinh', 1, N'123 Đường Trần Phú, Thành phố Hải Phòng, Tỉnh Hải Phòng', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (2, N'tranxuanhung', N'tranxuanhung@example.com', N'password', N'user', N'Trần Xuân Hùng', 1, N'123 Đường Lê Duẩn, Thành phố Hà Nội, Tỉnh Hà Nội', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (3, N'lyvanlinh', N'lyvanlinh@example.com', N'password', N'user', N'Lý Văn Linh', 1, N'123 Đường Nguyễn Huệ, Thành phố Hồ Chí Minh, Tỉnh Hồ Chí Minh', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (4, N'dinhhuuhuy', N'dinhhuuhuy@example.com', N'password', N'user', N'Đinh Hữu Huy', 1, N'123 Đường Hùng Vương, Thành phố Đà Nẵng, Tỉnh Đà Nẵng', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (5, N'tranvannam', N'tranvannam@example.com', N'password', N'user', N'Trần Văn Nam', 1, N'123 Đường Bạch Đằng, Thành phố Hải Dương, Tỉnh Hải Dương', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (6, N'lehuuhung', N'lehuuhung@example.com', N'password', N'user', N'Lê Hữu Hùng', 1, N'123 Đường 3 Tháng 2, Thành phố Cần Thơ, Tỉnh Cần Thơ', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (7, N'dinhxuantuan', N'dinhxuantuan@example.com', N'password', N'user', N'Đinh Xuân Tuấn', 1, N'123 Đường Trần Hưng Đạo, Thành phố Hải Dương, Tỉnh Hải Dương', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (8, N'nguyenthihuongs', N'nguyenthihuongs@example.com', N'password', N'user', N'Nguyễn Thị Hương', 0, N'123 Đường Trần Phú, Thành phố Hải Phòng, Tỉnh Hải Phòng', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (9, N'lethuhanhs', N'lethuhanhs@example.com', N'password', N'user', N'Lê Thu Hạnh', 0, N'123 Đường Lê Duẩn, Thành phố Hà Nội, Tỉnh Hà Nội', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (10, N'tranthuyngocs', N'tranthuyngocs@example.com', N'password', N'user', N'Trần Thuỷ Ngọc', 0, N'123 Đường Nguyễn Huệ, Thành phố Hồ Chí Minh, Tỉnh Hồ Chí Minh', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (11, N'nguyenthanhhoas', N'nguyenthanhhoas@example.com', N'password', N'user', N'Nguyễn Thanh Hoa', 0, N'123 Đường Hùng Vương, Thành phố Đà Nẵng, Tỉnh Đà Nẵng', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (12, N'lethubichs', N'lethubichs@example.com', N'password', N'user', N'Lê Thu Bích', 0, N'123 Đường Bạch Đằng, Thành phố Hải Dương, Tỉnh Hải Dương', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (13, N'tranngocvans', N'tranngocvans@example.com', N'password', N'user', N'Trần Ngọc Vân', 0, N'123 Đường 3 Tháng 2, Thành phố Cần Thơ, Tỉnh Cần Thơ', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (14, N'nguyenthuThanhs', N'nguyenthuThanhs@example.com', N'password', N'user', N'Nguyễn Thu Thanh', 0, N'123 Đường Trần Hưng Đạo, Thành phố Hải Dương, Tỉnh Hải Dương', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (15, N'lehanhthuys', N'lehanhthuys@example.com', N'password', N'user', N'Lê Hạnh Thuỷ', 0, N'123 Đường Phan Chu Trinh, Thành phố Hà Nội, Tỉnh Hà Nội', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (16, N'tranbichhuongs', N'tranbichhuongs@example.com', N'password', N'user', N'Trần Bích Hương', 0, N'123 Đường Nguyễn Văn Cừ, Thành phố Hồ Chí Minh, Tỉnh Hồ Chí Minh', N'123-456-7890')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (17, N'quocvu2210', N'anvu8301@gmail.com', N'password', N'user', N'Đặng Quốc Vũ', 1, N'Bình ĐỊnh', N'3333333')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (18, N'lehuuhung@example.com', N'32', N'password', N'user', N'32', 1, N'123', N'3333333')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (23, N'lehuuhung1@example.com', N'nguyenvanhung1@gmail.com', N'1', N'user', N'nguyenvanhung1', 1, N'nguyenvanhung1', N'3333333')
INSERT [dbo].[Users] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole], [FullName], [Gender], [AddressInfo], [PhoneNum]) VALUES (24, N'admin', N'admin@gmai.com', N'1', N'admin', N'admin', 0, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[OrderHistories]  WITH CHECK ADD  CONSTRAINT [FK_OrderID_2] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderHistories] CHECK CONSTRAINT [FK_OrderID_2]
GO
ALTER TABLE [dbo].[OrderHistories]  WITH CHECK ADD  CONSTRAINT [FK_OrderStatusID_2] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatuses] ([OrderStatusID])
GO
ALTER TABLE [dbo].[OrderHistories] CHECK CONSTRAINT [FK_OrderStatusID_2]
GO
ALTER TABLE [dbo].[OrderHistories]  WITH CHECK ADD  CONSTRAINT [FK_UserID_2] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[OrderHistories] CHECK CONSTRAINT [FK_UserID_2]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
/****** Object:  StoredProcedure [dbo].[AddToCart]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddToCart]
@id int,
@tensp nvarchar(200),
@gia int,
@soluong int
as
begin
	insert into giohang(id,tensp,gia,soluong) values(@id, @tensp,@gia, @soluong)
end
GO
/****** Object:  StoredProcedure [dbo].[getProducts]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create proc [dbo].[getProducts]
as
SELECT TOP (8) 
a.[ProductId]
      ,a.[Name]
      ,a.[Price]
      ,a.[LastPrice]
	  ,b.Url
  FROM [db_ECommerceShop].[dbo].[Products] a
  join [db_ECommerceShop].[dbo].ProductImages b on a.ProductId =  b.ProductId

GO
/****** Object:  StoredProcedure [dbo].[spDelete_Product]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spDelete_Product] @productID int
as
begin
	delete from productImages
	where ProductId = @productID

	delete from [dbo].[Products]
	where ProductId = @productID
end
GO
/****** Object:  StoredProcedure [dbo].[spGetDetail_Product]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spGetDetail_Product]
@ProductID int
as
begin 
	select * from Products where ProductId=@ProductID
end
GO
/****** Object:  StoredProcedure [dbo].[spProduct_Insert]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  Create proc [dbo].[spProduct_Insert]
  @procName nvarchar(100),
  @description nvarchar(max),
  @unitPrice int,
  @categoryID int,
  @fileName varchar(100)
  as
  begin
	insert into [dbo].[Products] ([Name],[Description],[Price],[LastPrice],[CategoryId])
	values(@procName,@description,@unitPrice,@unitPrice,@categoryID)

	DECLARE @ProductId INT;
	set @ProductId=(select top 1.ProductId from Products a where a.Name = @procName)
	if(@ProductId is not null)
	begin
		insert into [dbo].[ProductImages]([ProductId],[Url]) values(@ProductId,@fileName)
	end
	
  end
GO
/****** Object:  StoredProcedure [dbo].[spProduct_Update]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[spProduct_Update]
  @procName nvarchar(100),
  @description nvarchar(max),
  @unitPrice int,
  @categoryID int,
  @fileName varchar(100)
  as
  begin
	DECLARE @ProductId INT;
	set @ProductId=(select top 1.ProductId from Products a where a.Name = @procName)
	if(@ProductId is not null)
	begin
			update Products
			set Name=@procName,
				Description=@description,
				Price=@unitPrice,
				LastPrice=@unitPrice,
				CategoryId=@categoryID
			where ProductId=@ProductId

		if(@fileName is not null)
		begin
			update ProductImages
			set Url=@fileName
			where ProductId=@ProductId
		end

	end
	
	end
GO
/****** Object:  StoredProcedure [dbo].[spUsers_GetByPK]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spUsers_GetByPK]
as
select * from users
GO
/****** Object:  StoredProcedure [dbo].[spUsers_Insert]    Script Date: 4/13/2023 10:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUsers_Insert]
           @UserName	NVARCHAR(50)
           ,@UserEmail nvarchar(255)
           ,@UserPassword nvarchar(255)
           ,@UserRole nvarchar(50)
           ,@FullName nvarchar(255)
           ,@Gender BIT
           ,@AddressInfo nvarchar(max)
           ,@PhoneNum varchar(50)
AS
INSERT INTO [dbo].[Users]
           ([UserName]
           ,[UserEmail]
           ,[UserPassword]
           ,[UserRole]
           ,[FullName]
           ,[Gender]
           ,[AddressInfo]
           ,[PhoneNum])
     VALUES
           (@UserName	
           ,@UserEmail 
           ,@UserPassword 
           ,@UserRole 
           ,@FullName 
           ,@Gender 
           ,@AddressInfo
           ,@PhoneNum )
GO
