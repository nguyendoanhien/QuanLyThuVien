USE [QLTV]
GO
/****** Object:  Table [dbo].[DocGiaLoai]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGiaLoai](
	[MaLoaiDocGia] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDocGia] [nvarchar](255) NULL,
	[SoSachToiDa] [int] NULL,
 CONSTRAINT [PK_DocGiaLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDocGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DocGiaLoai] ON
INSERT [dbo].[DocGiaLoai] ([MaLoaiDocGia], [TenLoaiDocGia], [SoSachToiDa]) VALUES (1, N'Giảng viên', 5)
INSERT [dbo].[DocGiaLoai] ([MaLoaiDocGia], [TenLoaiDocGia], [SoSachToiDa]) VALUES (2, N'Nhân viên khối văn phòng', 4)
INSERT [dbo].[DocGiaLoai] ([MaLoaiDocGia], [TenLoaiDocGia], [SoSachToiDa]) VALUES (3, N'Sinh viên', 2)
SET IDENTITY_INSERT [dbo].[DocGiaLoai] OFF
/****** Object:  Table [dbo].[DauSachLoai]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauSachLoai](
	[MaLoaiDauSach] [int] NOT NULL,
	[TenLoaiDauSach] [nvarchar](100) NULL,
 CONSTRAINT [PK_DauSachLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDauSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (1, N'Khoa học viễn tưởng')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (2, N'Văn học')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (3, N'Toán học')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (4, N'Công nghệ')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (5, N'Lịch sử ')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (6, N'Hoá học ')
/****** Object:  StoredProcedure [dbo].[LoadDanhMuc2]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[LoadDanhMuc2] @tenbang nvarchar(20)
AS
BEGIN
	EXEC LoadDanhMuc @tenbang 
END
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](255) NULL,
	[GioiTinh] [bit] NULL,
	[Email] [varchar](255) NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (1, N'Hải', 1, N'hai@gmail.com', CAST(0x0000A99300000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (2, N'Hùng', 1, N'hung@gmail.com', CAST(0x0000A99500000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (3, N'Hào', 1, N'hao@gmail.com', CAST(0x0000A99900000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (4, N'Hân', 0, N'han@gmail.com', CAST(0x0000A9A800000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (5, N'Hiên', 0, N'hien@gmail.com', CAST(0x0000A9A900000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (6, N'Giao', 0, N'giao@gmail.com', CAST(0x0000A9B300000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
/****** Object:  Table [dbo].[NCC]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NCC](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Fax] [varchar](255) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NCC] ON
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [Email], [Fax]) VALUES (1, N'NXB Giáo dục Việt Nam', N'nxbgiaoducvn@gmail.com', N'0938648234')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [Email], [Fax]) VALUES (2, N'NXB Kim Đồng', N'nxbkimdongvn@gmail.com', N'0705401302')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [Email], [Fax]) VALUES (3, N'Fahasa', N'fahasa@gmail.com', N'0587995416')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [Email], [Fax]) VALUES (4, N'NXB Trẻ', N'nxbtre@gmail.com', N'0984753613')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [Email], [Fax]) VALUES (5, N'Nhà sách Minh Khai', N'nhasachminhkhai@gmail.com', N'0845692323')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [Email], [Fax]) VALUES (6, N'Nhà sách Hoa Hồng', N'nhasachhoahong@gmail.com', N'0704581223')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [Email], [Fax]) VALUES (7, N'Công ty Đức Trí', N'ctyductri@gmail.com', N'0877779999')
SET IDENTITY_INSERT [dbo].[NCC] OFF
/****** Object:  Table [dbo].[NhanVien]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] NOT NULL,
	[MatKhau] [varchar](255) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [MatKhau]) VALUES (1, N'thuthu1')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MatKhau]) VALUES (6, N'thuthu2')
/****** Object:  StoredProcedure [dbo].[DauSachLoai_Them]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DauSachLoai_Them] @maLoaiDauSach int, @tenLoaiDauSach nvarchar(100)
AS
BEGIN
	INSERT INTO DauSachLoai VALUES (@maLoaiDauSach,@tenLoaiDauSach);
END
GO
/****** Object:  Table [dbo].[DauSach]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauSach](
	[MaDauSach] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiDauSach] [int] NULL,
	[TenDauSach] [nvarchar](255) NULL,
	[SoLuongQuyDinh] [int] NULL,
	[SoNgayMuonToiDa] [int] NULL,
	[GiaTien] [int] NULL,
	[TienPhat] [int] NULL,
 CONSTRAINT [PK_DauSach] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DauSach] ON
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (1, 1, N'Tiên phong lên Mặt Trăng', 5, 5, 267000, 26700)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (2, 2, N'Chí Phèo', 6, 4, 55000, 5500)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (3, 3, N'Toán cao cấp ', 7, 5, 23000, 2300)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (4, 4, N'Kỹ thuật lập trình', 8, 4, 60000, 6000)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (5, 5, N'Thế chiến thứ 3', 2, 5, 45000, 4500)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (6, 6, N'Benzen thần kì ', 3, 4, 22000, 2200)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (7, 1, N'Hành trình vào tâm Trái Đất', 4, 4, 89000, 8900)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (8, 2, N'Truyện Kiều', 5, 5, 34000, 3400)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (9, 3, N'Xác xuất thống kê', 5, 5, 32000, 3200)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (10, 4, N'Làm việc với Sql Server', 3, 5, 52000, 5200)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (11, 5, N'Lịch sử Việt Nam', 3, 4, 39000, 3900)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (12, 6, N'Đường là gì?', 3, 5, 41000, 4100)
SET IDENTITY_INSERT [dbo].[DauSach] OFF
/****** Object:  Table [dbo].[DocGia]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDocGia] [int] NOT NULL,
	[MaLoaiDocGia] [int] NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DocGia] ([MaDocGia], [MaLoaiDocGia]) VALUES (2, 3)
INSERT [dbo].[DocGia] ([MaDocGia], [MaLoaiDocGia]) VALUES (3, 2)
INSERT [dbo].[DocGia] ([MaDocGia], [MaLoaiDocGia]) VALUES (4, 1)
INSERT [dbo].[DocGia] ([MaDocGia], [MaLoaiDocGia]) VALUES (5, 3)
/****** Object:  StoredProcedure [dbo].[DocGia_Xoa]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DocGia_Xoa] @maCanXoa int 
AS
BEGIN
DELETE FROM DocGia where MaDocGia = @maCanXoa
END
GO
/****** Object:  StoredProcedure [dbo].[KiemTraDocGia]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KiemTraDocGia] @MaDocGia int
AS
BEGIN
	
	Select COUNT(*) from DocGia where MaDocGia=@MaDocGia
END
GO
/****** Object:  Table [dbo].[Phieu]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieu](
	[MaPhieu] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiLap] [int] NULL,
	[NgayLap] [datetime] NULL,
 CONSTRAINT [PK_Phieu] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Phieu] ON
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (1, 1, CAST(0x0000A9BC00E3CBD7 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (2, 1, CAST(0x0000A9BC00E3CBD7 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (3, 1, CAST(0x0000A9BC00E5750E AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (4, 1, CAST(0x0000A9BC00E92F06 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (5, 1, CAST(0x0000A9BC00E97A55 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (6, 1, CAST(0x0000A9C2016C0D3E AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (7, 1, CAST(0x0000A9C2016C0D3E AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (8, 1, CAST(0x0000A9C2016C0D3E AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (9, 1, CAST(0x0000A9C2016C0D3E AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (10, 1, CAST(0x0000A9C2016C0D3E AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (11, 1, CAST(0x0000A9C2016C0D3E AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (12, 1, CAST(0x0000A9C2016C0D3E AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (13, 1, CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (14, 1, CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (15, 1, CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (16, 1, CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (17, 1, CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (18, 1, CAST(0x0000A9C300000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (19, 1, CAST(0x0000A9C3009B4E64 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (20, 1, CAST(0x0000A9C300000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Phieu] OFF
/****** Object:  StoredProcedure [dbo].[NhanVien_KiemTra]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[NhanVien_KiemTra] 
	-- Add the parameters for the stored procedure here
	@MaNhanVien int,
	@MatKhau varchar(255)
AS
BEGIN
	select * from NhanVien
	where MaNhanVien=@MaNhanVien AND
		  MatKhau=@MatKhau
END
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[STT] [int] NOT NULL,
	[MaDauSach] [int] NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[STT] ASC,
	[MaDauSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 1)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 2)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 3)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 4)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 5)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 7)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 8)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 9)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 10)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (1, 11)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 1)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 2)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 3)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 4)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 5)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 7)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 8)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 9)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 10)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 11)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 1)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 2)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 3)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 4)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 6)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 7)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 8)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 9)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 10)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 11)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 1)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 2)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 3)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 4)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 6)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 7)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 8)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 9)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 12)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 1)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 2)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 3)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 4)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 6)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 8)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 9)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 12)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (6, 2)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (6, 3)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (6, 4)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (7, 3)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (7, 4)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (8, 4)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (54, 12)
/****** Object:  StoredProcedure [dbo].[TimSachDeMuon]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TimSachDeMuon] (@mucTim nvarchar(50),  @tenTim nvarchar (100))
AS
BEGIN
		DECLARE @kq int
		SET @kq = 0
		IF(@mucTim = 'MaDauSach')
		BEGIN
			SELECT c.STT, a.MaDauSach, b.TenLoaiDauSach,a.TenDauSach,a.SoLuongQuyDinh,a.SoNgayMuonToiDa,a.GiaTien, a.TienPhat
			FROM DauSach a, DauSachLoai b, Sach c 
			WHERE a.MaLoaiDauSach = b.MaLoaiDauSach 
			AND c.MaDauSach = a.MaDauSach 
			AND a.MaDauSach LIKE '%'+@tenTim+'%'
		END
		ELSE IF(@mucTim = 'TenDauSach')
		BEGIN
			SELECT c.STT, a.MaDauSach, b.TenLoaiDauSach,a.TenDauSach,a.SoLuongQuyDinh,a.SoNgayMuonToiDa,a.GiaTien, a.TienPhat
			FROM DauSach a, DauSachLoai b, Sach c 
			WHERE a.MaLoaiDauSach = b.MaLoaiDauSach 
			AND c.MaDauSach = a.MaDauSach 
			AND a.TenDauSach LIKE '%'+@tenTim+'%'
		END
		ELSE IF(@mucTim = 'TenLoaiDauSach')
		BEGIN
			SELECT c.STT, a.MaDauSach, b.TenLoaiDauSach,a.TenDauSach,a.SoLuongQuyDinh,a.SoNgayMuonToiDa,a.GiaTien, a.TienPhat
			FROM DauSach a, DauSachLoai b, Sach c 
			WHERE a.MaLoaiDauSach = b.MaLoaiDauSach 
			AND c.MaDauSach = a.MaDauSach 
			AND b.TenLoaiDauSach LIKE '%'+@tenTim+'%'
		END
		ELSE 
		BEGIN
			SET @kq =1
		END
END
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaPhieuMuon] [int] NOT NULL,
	[MaDocGia] [int] NULL,
 CONSTRAINT [PK_PhieuMuon] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (1, 2)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (3, 3)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (4, 3)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (5, 5)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (6, 5)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (19, 5)
/****** Object:  StoredProcedure [dbo].[Phieu_Them]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Phieu_Them] @maNguoiLap int, @ngayLap datetime
AS
BEGIN
	INSERT INTO Phieu (MaNguoiLap,NgayLap) VALUES (@maNguoiLap,@ngayLap);
END
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] NOT NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Insert_Phieu_PhieuTra]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Phieu_PhieuTra] @manguoilap int, @ngaylap datetime
AS
BEGIN
	INSERT INTO Phieu VALUES (@manguoilap,@ngaylap);
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_Phieu]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_Phieu] @maNguoiLap int, @ngayLap datetime
AS
BEGIN
	INSERT INTO Phieu VALUES (@maNguoiLap,@ngayLap)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_PhieuMuon]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_PhieuMuon]  @maPhieuMuon int, @maDocGia int
AS
BEGIN
	INSERT INTO PhieuMuon VALUES (@maPhieuMuon,@maDocGia)
END
GO
/****** Object:  Table [dbo].[PhieuMuonChiTiet]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuonChiTiet](
	[MaSach] [int] NOT NULL,
	[MaPhieuMuon] [int] NOT NULL,
	[MaDauSach] [int] NOT NULL,
	[NgayHenTra] [datetime] NULL,
	[KiemTra] [bit] NULL,
 CONSTRAINT [PK_PhieuMuonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaPhieuMuon] ASC,
	[MaDauSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra], [KiemTra]) VALUES (1, 6, 1, CAST(0x0000A9C7016C0CE0 AS DateTime), 1)
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra], [KiemTra]) VALUES (1, 19, 1, CAST(0x0000A9C8009B4E34 AS DateTime), 0)
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra], [KiemTra]) VALUES (2, 6, 1, CAST(0x0000A9C7016C0CE0 AS DateTime), 1)
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra], [KiemTra]) VALUES (2, 19, 1, CAST(0x0000A9C8009B4E34 AS DateTime), 0)
/****** Object:  Table [dbo].[PhieuTra]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuTra](
	[MaPhieuTra] [int] NOT NULL,
	[MaPhieuMuon] [int] NULL,
	[MaDocGia] [int] NULL,
 CONSTRAINT [PK_PhieuTra] PRIMARY KEY CLUSTERED 
(
	[MaPhieuTra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (14, 6, 5)
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (15, 6, 5)
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (16, 6, 5)
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (17, 6, 5)
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (18, 6, 5)
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (20, 6, 5)
/****** Object:  Table [dbo].[PhieuNhapChiTiet]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapChiTiet](
	[MaDauSach] [int] NOT NULL,
	[MaPhieuNhap] [int] NOT NULL,
	[MaNCC] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[NgayDuKienGiao] [datetime] NULL,
 CONSTRAINT [PK_PhieuNhapChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC,
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuGiao]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiao](
	[MaPhieuGiao] [int] NOT NULL,
	[MaPhieuNhap] [int] NULL,
 CONSTRAINT [PK_PhieuGiao] PRIMARY KEY CLUSTERED 
(
	[MaPhieuGiao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuTraChiTiet]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuTraChiTiet](
	[MaSach] [int] NOT NULL,
	[MaDauSach] [int] NOT NULL,
	[MaPhieuTra] [int] NOT NULL,
	[MaNhanVienKiemTra] [int] NULL,
	[NgayTra] [datetime] NULL,
	[TienPhat] [int] NULL,
 CONSTRAINT [PK_PhieuTraChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaDauSach] ASC,
	[MaPhieuTra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhieuTraChiTiet] ([MaSach], [MaDauSach], [MaPhieuTra], [MaNhanVienKiemTra], [NgayTra], [TienPhat]) VALUES (1, 1, 18, 1, CAST(0x0000A9C30025AC88 AS DateTime), 0)
INSERT [dbo].[PhieuTraChiTiet] ([MaSach], [MaDauSach], [MaPhieuTra], [MaNhanVienKiemTra], [NgayTra], [TienPhat]) VALUES (1, 1, 20, 1, CAST(0x0000A9C3009D4040 AS DateTime), 0)
INSERT [dbo].[PhieuTraChiTiet] ([MaSach], [MaDauSach], [MaPhieuTra], [MaNhanVienKiemTra], [NgayTra], [TienPhat]) VALUES (2, 1, 18, 1, CAST(0x0000A9C30025AC88 AS DateTime), 0)
INSERT [dbo].[PhieuTraChiTiet] ([MaSach], [MaDauSach], [MaPhieuTra], [MaNhanVienKiemTra], [NgayTra], [TienPhat]) VALUES (2, 1, 20, 1, CAST(0x0000A9C3009D4040 AS DateTime), 0)
/****** Object:  StoredProcedure [dbo].[Phieu_PhieuTra_Them]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Phieu_PhieuTra_Them] @maPhieuTra int, @maPhieuMuon int, @maDocGia int, @maNguoiLap int, @ngayLap datetime
as
begin
	INSERT INTO Phieu values (@maNguoiLap,@ngayLap)
	INSERT INTO PhieuTra values (@maPhieuTra, @maPhieuMuon, @maDocGia)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_PhieuMuonChiTiet]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_PhieuMuonChiTiet]  @maSach int, @maPhieuMuon int, @maDauSach int, @ngayHenTra datetime
AS
BEGIN
	INSERT INTO PhieuMuonChiTiet VALUES (@maSach,@maPhieuMuon,@maDauSach, @ngayHenTra,0)
END
GO
/****** Object:  Table [dbo].[PhieuGiaoChiTiet]    Script Date: 01/02/2019 11:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiaoChiTiet](
	[MaDauSach] [int] NOT NULL,
	[MaPhieuGiao] [int] NOT NULL,
 CONSTRAINT [PK_PhieuGiaoChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC,
	[MaPhieuGiao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[LoadSachMuon]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LoadSachMuon] @maphieumuon int 
as 
begin
	SELECT * FROM PhieuMuonChiTiet WHERE MaPhieuMuon = @maphieumuon
end
GO
/****** Object:  StoredProcedure [dbo].[LoadDauSach]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoadDauSach]
AS
BEGIN
SELECT s.MaDauSach,
       s.STT,
       dsl.TenLoaiDauSach,
       ds.TenDauSach,
       ds.SoLuongQuyDinh,
       ds.SoNgayMuonToiDa,
       ds.GiaTien,
       ds.TIenPhat
FROM sach s
INNER JOIN DauSach ds ON s.MaDauSach=ds.MaDauSach
INNER JOIN DauSachLoai dsl ON ds.MaLoaiDauSach=dsl.MaLoaiDauSach
WHERE NOT EXISTS
    (SELECT *
     FROM PhieuMuonChiTiet pmct
     WHERE s.MaDauSach=pmct.MaDauSach
       AND s.STT=pmct.MaSach
       AND pmct.KiemTra=0)
END
GO
/****** Object:  StoredProcedure [dbo].[KiemTraSachMuon]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[KiemTraSachMuon] @maDocGia int, @maDauSach int, @kq int out
AS
BEGIN
	SET @kq = 0
	IF EXISTS (SELECT DISTINCT pmct.MaDauSach FROM PhieuMuon p, PhieuMuonChiTiet pmct WHERE p.MaPhieuMuon = pmct.MaPhieuMuon AND p.MaDocGia = @maDocGia AND pmct.MaDauSach = @maDauSach)
	BEGIN
		SET @kq = 1
	END
	ELSE 
	BEGIN
		SET @kq = 0
	END
	RETURN @kq
END
GO
/****** Object:  StoredProcedure [dbo].[KiemTraDuocMuon]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KiemTraDuocMuon] @MaDocGia int
AS
BEGIN
if(not exists(
select  COUNT(*)
FROM PhieuMuon pm
INNER JOIN PhieuMuonChiTiet pmct
  ON pm.MaPhieuMuon = pmct.MaPhieuMuon
INNER JOIN DocGia dg
  ON dg.MaDocGia = pm.MaDocGIa
INNER JOIN DocGiaLoai dgl
  ON dgl.MaLoaiDocGia = dg.MaLoaiDocGia
WHERE dg.MaDocGia = @MaDocGia and pmct.KiemTra=0
GROUP BY dg.maDocGia,
         dgl.SoSachToiDa
HAVING COUNT(pmct.MaDauSach) < dgl.SoSachToiDa
)
)
begin

select dgl.SoSachToiDa from docgia dg
inner join DocGiaLoai dgl on dg.MaLoaiDocGia=dgl.MaLoaiDocGIa
where madocgia=@MaDocGia
end



END
GO
/****** Object:  StoredProcedure [dbo].[dbo.KiemTraSachMuon]    Script Date: 01/02/2019 11:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[dbo.KiemTraSachMuon] @maDocGia int, @maDauSach int, @kq int out
AS
BEGIN
	SET @kq = 0
	IF EXISTS (SELECT DISTINCT pmct.MaDauSach FROM PhieuMuon p, PhieuMuonChiTiet pmct WHERE p.MaPhieuMuon = pmct.MaPhieuMuon AND p.MaDocGia = @maDocGia AND pmct.MaDauSach = @maDauSach)
	BEGIN
		SET @kq = 1
	END
	ELSE 
	BEGIN
		SET @kq = 0
	END
	RETURN @kq
END
GO
/****** Object:  ForeignKey [FK_DauSach_DauSachLoai]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[DauSach]  WITH CHECK ADD  CONSTRAINT [FK_DauSach_DauSachLoai] FOREIGN KEY([MaLoaiDauSach])
REFERENCES [dbo].[DauSachLoai] ([MaLoaiDauSach])
GO
ALTER TABLE [dbo].[DauSach] CHECK CONSTRAINT [FK_DauSach_DauSachLoai]
GO
/****** Object:  ForeignKey [FK_DocGia_DocGiaLoai]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_DocGiaLoai] FOREIGN KEY([MaLoaiDocGia])
REFERENCES [dbo].[DocGiaLoai] ([MaLoaiDocGia])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_DocGiaLoai]
GO
/****** Object:  ForeignKey [FK_DocGia_NguoiDung]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_NguoiDung] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_NguoiDung]
GO
/****** Object:  ForeignKey [FK_NhanVien_NguoiDung]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NguoiDung] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NguoiDung]
GO
/****** Object:  ForeignKey [FK_Phieu_NhanVien]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[Phieu]  WITH CHECK ADD  CONSTRAINT [FK_Phieu_NhanVien] FOREIGN KEY([MaNguoiLap])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[Phieu] CHECK CONSTRAINT [FK_Phieu_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuGiao_Phieu]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuGiao]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiao_Phieu] FOREIGN KEY([MaPhieuGiao])
REFERENCES [dbo].[Phieu] ([MaPhieu])
GO
ALTER TABLE [dbo].[PhieuGiao] CHECK CONSTRAINT [FK_PhieuGiao_Phieu]
GO
/****** Object:  ForeignKey [FK_PhieuGiao_PhieuNhap]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuGiao]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiao_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[PhieuGiao] CHECK CONSTRAINT [FK_PhieuGiao_PhieuNhap]
GO
/****** Object:  ForeignKey [FK_PhieuGiaoChiTiet_DauSach]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuGiaoChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiaoChiTiet_DauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DauSach] ([MaDauSach])
GO
ALTER TABLE [dbo].[PhieuGiaoChiTiet] CHECK CONSTRAINT [FK_PhieuGiaoChiTiet_DauSach]
GO
/****** Object:  ForeignKey [FK_PhieuGiaoChiTiet_PhieuGiao]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuGiaoChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiaoChiTiet_PhieuGiao] FOREIGN KEY([MaPhieuGiao])
REFERENCES [dbo].[PhieuGiao] ([MaPhieuGiao])
GO
ALTER TABLE [dbo].[PhieuGiaoChiTiet] CHECK CONSTRAINT [FK_PhieuGiaoChiTiet_PhieuGiao]
GO
/****** Object:  ForeignKey [FK_PhieuMuon_DocGia]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_DocGia]
GO
/****** Object:  ForeignKey [FK_PhieuMuon_Phieu]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_Phieu] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[Phieu] ([MaPhieu])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_Phieu]
GO
/****** Object:  ForeignKey [FK_PhieuMuonChiTiet_PhieuMuon]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuMuonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonChiTiet_PhieuMuon] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PhieuMuon] ([MaPhieuMuon])
GO
ALTER TABLE [dbo].[PhieuMuonChiTiet] CHECK CONSTRAINT [FK_PhieuMuonChiTiet_PhieuMuon]
GO
/****** Object:  ForeignKey [FK_PhieuMuonChiTiet_Sach]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuMuonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonChiTiet_Sach] FOREIGN KEY([MaSach], [MaDauSach])
REFERENCES [dbo].[Sach] ([STT], [MaDauSach])
GO
ALTER TABLE [dbo].[PhieuMuonChiTiet] CHECK CONSTRAINT [FK_PhieuMuonChiTiet_Sach]
GO
/****** Object:  ForeignKey [FK_PhieuNhap_Phieu]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_Phieu] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[Phieu] ([MaPhieu])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_Phieu]
GO
/****** Object:  ForeignKey [FK_PhieuNhapChiTiet_DauSach]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapChiTiet_DauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DauSach] ([MaDauSach])
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet] CHECK CONSTRAINT [FK_PhieuNhapChiTiet_DauSach]
GO
/****** Object:  ForeignKey [FK_PhieuNhapChiTiet_NCC]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapChiTiet_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet] CHECK CONSTRAINT [FK_PhieuNhapChiTiet_NCC]
GO
/****** Object:  ForeignKey [FK_PhieuNhapChiTiet_PhieuNhap]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapChiTiet_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet] CHECK CONSTRAINT [FK_PhieuNhapChiTiet_PhieuNhap]
GO
/****** Object:  ForeignKey [FK_PhieuTra_DocGia]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTra_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[PhieuTra] CHECK CONSTRAINT [FK_PhieuTra_DocGia]
GO
/****** Object:  ForeignKey [FK_PhieuTra_PhieuMuon]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTra_PhieuMuon] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PhieuMuon] ([MaPhieuMuon])
GO
ALTER TABLE [dbo].[PhieuTra] CHECK CONSTRAINT [FK_PhieuTra_PhieuMuon]
GO
/****** Object:  ForeignKey [FK_PhieuTraChiTiet_NhanVien]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_NhanVien] FOREIGN KEY([MaNhanVienKiemTra])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuTraChiTiet_PhieuTra]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_PhieuTra] FOREIGN KEY([MaPhieuTra])
REFERENCES [dbo].[PhieuTra] ([MaPhieuTra])
GO
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_PhieuTra]
GO
/****** Object:  ForeignKey [FK_PhieuTraChiTiet_Sach]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_Sach] FOREIGN KEY([MaSach], [MaDauSach])
REFERENCES [dbo].[Sach] ([STT], [MaDauSach])
GO
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_Sach]
GO
/****** Object:  ForeignKey [FK_Sach_DauSach]    Script Date: 01/02/2019 11:43:49 ******/
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_DauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DauSach] ([MaDauSach])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_DauSach]
GO
