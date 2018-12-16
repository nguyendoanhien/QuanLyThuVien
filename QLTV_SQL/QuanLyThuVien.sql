USE [QLTV]
GO
/****** Object:  Table [dbo].[QuyDinhPhat]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuyDinhPhat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QuyDinhPhat](
	[MaPhat] [int] IDENTITY(1,1) NOT NULL,
	[TenPhat] [nvarchar](250) NULL,
	[PhanTramPhat] [float] NULL,
 CONSTRAINT [PK_QuyDinhPhat] PRIMARY KEY CLUSTERED 
(
	[MaPhat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocGiaLoai]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocGiaLoai]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocGiaLoai](
	[MaLoaiDocGia] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDocGia] [nvarchar](255) NULL,
	[SoSachToiDa] [int] NULL,
 CONSTRAINT [PK_DocGiaLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDocGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[DocGiaLoai] ON
INSERT [dbo].[DocGiaLoai] ([MaLoaiDocGia], [TenLoaiDocGia], [SoSachToiDa]) VALUES (15, N'Giảng viên', 5)
INSERT [dbo].[DocGiaLoai] ([MaLoaiDocGia], [TenLoaiDocGia], [SoSachToiDa]) VALUES (16, N'Nhân viên khối văn phòng', 4)
INSERT [dbo].[DocGiaLoai] ([MaLoaiDocGia], [TenLoaiDocGia], [SoSachToiDa]) VALUES (17, N'Sinh viên', 3)
SET IDENTITY_INSERT [dbo].[DocGiaLoai] OFF
/****** Object:  Table [dbo].[DauSachLoai]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DauSachLoai]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DauSachLoai](
	[MaLoaiDauSach] [int] NOT NULL,
	[TenLoaiDauSach] [nvarchar](100) NULL,
 CONSTRAINT [PK_DauSachLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDauSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (1, N'Khoa học viễn tưởng')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (2, N'Văn học')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (3, N'Toán học')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (4, N'Công nghệ')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (5, N'Lịch sử ')
INSERT [dbo].[DauSachLoai] ([MaLoaiDauSach], [TenLoaiDauSach]) VALUES (6, N'Hoá học ')
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NguoiDung]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (7, N'Hùng', 1, N'hung@gmail.com', CAST(0x0000A9A300000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (8, N'Hào', 1, N'hao@gmail.com', CAST(0x0000A9A300000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (9, N'Hân', 0, N'han@gmail.com', CAST(0x0000A9A300000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (10, N'Hiên', 0, N'hien@gmail.com', CAST(0x0000A9A100000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (11, N'Giao', 0, N'giao@gmail.com', CAST(0x0000A99E00000000 AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoVaTen], [GioiTinh], [Email], [NgayTao]) VALUES (12, N'Truc', 0, N'truc@gmail.com', CAST(0x0000A9A30176CFF4 AS DateTime))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
/****** Object:  Table [dbo].[NCC]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NCC]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[LoadDanhMuc2]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadDanhMuc2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create proc [dbo].[LoadDanhMuc2] @tenbang nvarchar(20)
AS
BEGIN
	EXEC LoadDanhMuc @tenbang 
END' 
END
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] NOT NULL,
	[MatKhau] [varchar](255) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [MatKhau]) VALUES (7, N'hienmup')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MatKhau]) VALUES (10, N'10')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MatKhau]) VALUES (12, N'12')
/****** Object:  Table [dbo].[DauSach]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DauSach]') AND type in (N'U'))
BEGIN
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
END
GO
SET IDENTITY_INSERT [dbo].[DauSach] ON
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (13, 1, N'Tiên phong lên Mặt Trăng', 5, 5, 267000, 26700)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (14, 2, N'Chí Phèo', 6, 4, 55000, 5500)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (15, 3, N'Toán cao cấp ', 7, 5, 23000, 2300)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (16, 4, N'Kỹ thuật lập trình', 8, 4, 60000, 6000)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (17, 5, N'Thế chiến thứ 3', 2, 5, 45000, 4500)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (18, 6, N'Benzen thần kì ', 3, 4, 22000, 2200)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (19, 1, N'Hành trình vào tâm Trái Đất', 4, 4, 89000, 8900)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (20, 2, N'Truyện Kiều', 5, 5, 34000, 3400)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (21, 3, N'Xác xuất thống kê', 5, 5, 32000, 3200)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (22, 4, N'Làm việc với Sql Server', 3, 5, 52000, 5200)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (23, 5, N'Lịch sử Việt Nam', 3, 4, 39000, 3900)
INSERT [dbo].[DauSach] ([MaDauSach], [MaLoaiDauSach], [TenDauSach], [SoLuongQuyDinh], [SoNgayMuonToiDa], [GiaTien], [TienPhat]) VALUES (24, 6, N'Đường là gì?', 3, 5, 41000, 4100)
SET IDENTITY_INSERT [dbo].[DauSach] OFF
/****** Object:  Table [dbo].[DocGia]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocGia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocGia](
	[MaDocGia] [int] NOT NULL,
	[MaLoaiDocGia] [int] NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[DocGia] ([MaDocGia], [MaLoaiDocGia]) VALUES (8, 16)
INSERT [dbo].[DocGia] ([MaDocGia], [MaLoaiDocGia]) VALUES (9, 15)
INSERT [dbo].[DocGia] ([MaDocGia], [MaLoaiDocGia]) VALUES (11, 17)
/****** Object:  StoredProcedure [dbo].[DauSachLoai_Them]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DauSachLoai_Them]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DauSachLoai_Them] @maLoaiDauSach int, @tenLoaiDauSach nvarchar(100)
AS
BEGIN
	INSERT INTO DauSachLoai VALUES (@maLoaiDauSach,@tenLoaiDauSach);
END' 
END
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sach]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sach](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MaDauSach] [int] NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[STT] ASC,
	[MaDauSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Sach] ON
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (2, 13)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (3, 13)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (4, 13)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (5, 13)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (6, 13)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (7, 13)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (8, 14)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (9, 14)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (10, 14)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (11, 14)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (12, 14)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (13, 14)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (14, 14)
INSERT [dbo].[Sach] ([STT], [MaDauSach]) VALUES (15, 15)
SET IDENTITY_INSERT [dbo].[Sach] OFF
/****** Object:  StoredProcedure [dbo].[DocGia_Xoa]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocGia_Xoa]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DocGia_Xoa] @maCanXoa int 
AS
BEGIN
DELETE FROM DocGia where MaDocGia = @maCanXoa
END
' 
END
GO
/****** Object:  Table [dbo].[Phieu]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phieu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Phieu](
	[MaPhieu] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiLap] [int] NULL,
	[NgayLap] [datetime] NULL,
 CONSTRAINT [PK_Phieu] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Phieu] ON
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (1, 7, CAST(0x0000A99500000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (2, 7, CAST(0x0000A9B300000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (3, 7, CAST(0x0000A9B300000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (4, 7, CAST(0x0000A9B400000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (5, 7, CAST(0x0000A9B400000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (6, 7, CAST(0x0000A9B400000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (7, 7, CAST(0x0000A87A00000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (8, 7, CAST(0x0000A8B900000000 AS DateTime))
INSERT [dbo].[Phieu] ([MaPhieu], [MaNguoiLap], [NgayLap]) VALUES (9, 7, CAST(0x0000A8B900000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Phieu] OFF
/****** Object:  StoredProcedure [dbo].[LoadDauSach]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadDauSach]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[LoadDauSach]
AS
BEGIN
	SELECT c.STT, a.MaDauSach, b.TenLoaiDauSach,a.TenDauSach,a.SoLuongQuyDinh,a.SoNgayMuonToiDa,a.GiaTien, a.TienPhat FROM DauSach a, DauSachLoai b, Sach c WHERE a.MaLoaiDauSach = b.MaLoaiDauSach AND c.MaDauSach = a.MaDauSach
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_Phieu_PhieuTra]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Insert_Phieu_PhieuTra]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Insert_Phieu_PhieuTra] @manguoilap int, @ngaylap datetime
AS
BEGIN
	INSERT INTO Phieu VALUES (@manguoilap,@ngaylap);
END ' 
END
GO
/****** Object:  StoredProcedure [dbo].[Phieu_Them]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phieu_Them]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Phieu_Them] @maNguoiLap int, @ngayLap datetime
AS
BEGIN
	INSERT INTO Phieu (MaNguoiLap,NgayLap) VALUES (@maNguoiLap,@ngayLap);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TimSachDeMuon]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TimSachDeMuon]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[TimSachDeMuon] (@mucTim nvarchar(50),  @tenTim nvarchar (100))
AS
BEGIN
		DECLARE @kq int
		SET @kq = 0
		IF(@mucTim = ''MaDauSach'')
		BEGIN
			SELECT c.STT, a.MaDauSach, b.TenLoaiDauSach,a.TenDauSach,a.SoLuongQuyDinh,a.SoNgayMuonToiDa,a.GiaTien, a.TienPhat
			FROM DauSach a, DauSachLoai b, Sach c 
			WHERE a.MaLoaiDauSach = b.MaLoaiDauSach 
			AND c.MaDauSach = a.MaDauSach 
			AND a.MaDauSach LIKE ''%''+@tenTim+''%''
		END
		ELSE IF(@mucTim = ''TenDauSach'')
		BEGIN
			SELECT c.STT, a.MaDauSach, b.TenLoaiDauSach,a.TenDauSach,a.SoLuongQuyDinh,a.SoNgayMuonToiDa,a.GiaTien, a.TienPhat
			FROM DauSach a, DauSachLoai b, Sach c 
			WHERE a.MaLoaiDauSach = b.MaLoaiDauSach 
			AND c.MaDauSach = a.MaDauSach 
			AND a.TenDauSach LIKE ''%''+@tenTim+''%''
		END
		ELSE IF(@mucTim = ''TenLoaiDauSach'')
		BEGIN
			SELECT c.STT, a.MaDauSach, b.TenLoaiDauSach,a.TenDauSach,a.SoLuongQuyDinh,a.SoNgayMuonToiDa,a.GiaTien, a.TienPhat
			FROM DauSach a, DauSachLoai b, Sach c 
			WHERE a.MaLoaiDauSach = b.MaLoaiDauSach 
			AND c.MaDauSach = a.MaDauSach 
			AND b.TenLoaiDauSach LIKE ''%''+@tenTim+''%''
		END
		ELSE 
		BEGIN
			SET @kq =1
		END
END' 
END
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuMuon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuMuon](
	[MaPhieuMuon] [int] NOT NULL,
	[MaDocGia] [int] NULL,
 CONSTRAINT [PK_PhieuMuon] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (1, 8)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (2, 9)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (3, 11)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (4, 8)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (5, 8)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaDocGia]) VALUES (6, 8)
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuNhap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] NOT NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PhieuMuonChiTiet]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuMuonChiTiet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuMuonChiTiet](
	[MaSach] [int] NOT NULL,
	[MaPhieuMuon] [int] NOT NULL,
	[MaDauSach] [int] NOT NULL,
	[NgayHenTra] [datetime] NULL,
 CONSTRAINT [PK_PhieuMuonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaPhieuMuon] ASC,
	[MaDauSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra]) VALUES (2, 1, 13, CAST(0x0000A99500000000 AS DateTime))
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra]) VALUES (4, 4, 13, CAST(0x0000A99500000000 AS DateTime))
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra]) VALUES (6, 6, 13, CAST(0x0000A9B600000000 AS DateTime))
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra]) VALUES (7, 6, 13, CAST(0x0000A9B700000000 AS DateTime))
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra]) VALUES (8, 1, 14, CAST(0x0000A99500000000 AS DateTime))
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra]) VALUES (10, 2, 14, CAST(0x0000A99500000000 AS DateTime))
INSERT [dbo].[PhieuMuonChiTiet] ([MaSach], [MaPhieuMuon], [MaDauSach], [NgayHenTra]) VALUES (11, 5, 14, CAST(0x0000A9B400000000 AS DateTime))
/****** Object:  Table [dbo].[PhieuTra]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuTra]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuTra](
	[MaPhieuTra] [int] NOT NULL,
	[MaPhieuMuon] [int] NULL,
	[MaDocGia] [int] NULL,
 CONSTRAINT [PK_PhieuTra] PRIMARY KEY CLUSTERED 
(
	[MaPhieuTra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (4, 1, 8)
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (5, 2, 9)
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (6, 3, 11)
INSERT [dbo].[PhieuTra] ([MaPhieuTra], [MaPhieuMuon], [MaDocGia]) VALUES (8, 1, 8)
/****** Object:  Table [dbo].[PhieuNhapChiTiet]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuNhapChiTiet]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[PhieuGiao]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuGiao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuGiao](
	[MaPhieuGiao] [int] NOT NULL,
	[MaPhieuNhap] [int] NULL,
 CONSTRAINT [PK_PhieuGiao] PRIMARY KEY CLUSTERED 
(
	[MaPhieuGiao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PhieuTraChiTiet]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuTraChiTiet](
	[MaSach] [int] NOT NULL,
	[MaDauSach] [int] NOT NULL,
	[MaPhieuTra] [int] NOT NULL,
	[MaNhanVienKiemTra] [int] NULL,
	[MaQuyDinh] [int] NULL,
	[NgayTra] [datetime] NULL,
	[TienPhat] [int] NULL,
 CONSTRAINT [PK_PhieuTraChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaDauSach] ASC,
	[MaPhieuTra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PhieuGiaoChiTiet]    Script Date: 12/16/2018 16:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuGiaoChiTiet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuGiaoChiTiet](
	[MaDauSach] [int] NOT NULL,
	[MaPhieuGiao] [int] NOT NULL,
 CONSTRAINT [PK_PhieuGiaoChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC,
	[MaPhieuGiao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[Phieu_PhieuTra_Them]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phieu_PhieuTra_Them]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[Phieu_PhieuTra_Them] @maPhieuTra int, @maPhieuMuon int, @maDocGia int, @maNguoiLap int, @ngayLap datetime
as
begin
	INSERT INTO Phieu values (@maNguoiLap,@ngayLap)
	INSERT INTO PhieuTra values (@maPhieuTra, @maPhieuMuon, @maDocGia)
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadSachMuon]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadSachMuon]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[LoadSachMuon] @maphieumuon int 
as 
begin
	SELECT * FROM PhieuMuonChiTiet WHERE MaPhieuMuon = @maphieumuon
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[KT_DocGia]    Script Date: 12/16/2018 16:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KT_DocGia]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[KT_DocGia] @maDocGia int, @kq int out
AS
BEGIN
	SET @kq = 0
	IF(EXISTS(SELECT * FROM dbo.DocGia WHERE MaDocGia = @maDocGia))
	BEGIN
		DECLARE @soSachToiDa int
		SET @soSachToiDa = (SELECT SoSachToiDa FROM DocGia dg, DocGiaLoai dgl WHERE dg.MaLoaiDocGia = dgl.MaLoaiDocGia AND dg.MaDocGia = @maDocGia)
		DECLARE @soSach int
		SET @soSach = (SELECT COUNT(*) FROM PhieuMuon pm , PhieuMuonChiTiet pmct WHERE pm.MaPhieuMuon = pmct.MaPhieuMuon AND pm.MaDocGia = @maDocGia)
		IF(@soSach > @soSachToiDa)
		BEGIN
			SET @kq = 2
		END
		ELSE
		BEGIN
			SET @kq = 1
		END
	END
END
' 
END
GO
/****** Object:  ForeignKey [FK_DauSach_DauSachLoai]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DauSach_DauSachLoai]') AND parent_object_id = OBJECT_ID(N'[dbo].[DauSach]'))
ALTER TABLE [dbo].[DauSach]  WITH CHECK ADD  CONSTRAINT [FK_DauSach_DauSachLoai] FOREIGN KEY([MaLoaiDauSach])
REFERENCES [dbo].[DauSachLoai] ([MaLoaiDauSach])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DauSach_DauSachLoai]') AND parent_object_id = OBJECT_ID(N'[dbo].[DauSach]'))
ALTER TABLE [dbo].[DauSach] CHECK CONSTRAINT [FK_DauSach_DauSachLoai]
GO
/****** Object:  ForeignKey [FK_DocGia_DocGiaLoai]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocGia_DocGiaLoai]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocGia]'))
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_DocGiaLoai] FOREIGN KEY([MaLoaiDocGia])
REFERENCES [dbo].[DocGiaLoai] ([MaLoaiDocGia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocGia_DocGiaLoai]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocGia]'))
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_DocGiaLoai]
GO
/****** Object:  ForeignKey [FK_DocGia_NguoiDung]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocGia_NguoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocGia]'))
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_NguoiDung] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocGia_NguoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocGia]'))
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_NguoiDung]
GO
/****** Object:  ForeignKey [FK_NhanVien_NguoiDung]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_NguoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NguoiDung] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_NguoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NguoiDung]
GO
/****** Object:  ForeignKey [FK_Phieu_NhanVien]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Phieu_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phieu]'))
ALTER TABLE [dbo].[Phieu]  WITH CHECK ADD  CONSTRAINT [FK_Phieu_NhanVien] FOREIGN KEY([MaNguoiLap])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Phieu_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phieu]'))
ALTER TABLE [dbo].[Phieu] CHECK CONSTRAINT [FK_Phieu_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuGiao_Phieu]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuGiao_Phieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuGiao]'))
ALTER TABLE [dbo].[PhieuGiao]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiao_Phieu] FOREIGN KEY([MaPhieuGiao])
REFERENCES [dbo].[Phieu] ([MaPhieu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuGiao_Phieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuGiao]'))
ALTER TABLE [dbo].[PhieuGiao] CHECK CONSTRAINT [FK_PhieuGiao_Phieu]
GO
/****** Object:  ForeignKey [FK_PhieuGiao_PhieuNhap]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuGiao_PhieuNhap]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuGiao]'))
ALTER TABLE [dbo].[PhieuGiao]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiao_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuGiao_PhieuNhap]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuGiao]'))
ALTER TABLE [dbo].[PhieuGiao] CHECK CONSTRAINT [FK_PhieuGiao_PhieuNhap]
GO
/****** Object:  ForeignKey [FK_PhieuGiaoChiTiet_DauSach]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuGiaoChiTiet_DauSach]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuGiaoChiTiet]'))
ALTER TABLE [dbo].[PhieuGiaoChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiaoChiTiet_DauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DauSach] ([MaDauSach])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuGiaoChiTiet_DauSach]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuGiaoChiTiet]'))
ALTER TABLE [dbo].[PhieuGiaoChiTiet] CHECK CONSTRAINT [FK_PhieuGiaoChiTiet_DauSach]
GO
/****** Object:  ForeignKey [FK_PhieuGiaoChiTiet_PhieuGiao]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuGiaoChiTiet_PhieuGiao]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuGiaoChiTiet]'))
ALTER TABLE [dbo].[PhieuGiaoChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiaoChiTiet_PhieuGiao] FOREIGN KEY([MaPhieuGiao])
REFERENCES [dbo].[PhieuGiao] ([MaPhieuGiao])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuGiaoChiTiet_PhieuGiao]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuGiaoChiTiet]'))
ALTER TABLE [dbo].[PhieuGiaoChiTiet] CHECK CONSTRAINT [FK_PhieuGiaoChiTiet_PhieuGiao]
GO
/****** Object:  ForeignKey [FK_PhieuMuon_DocGia]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuMuon_DocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuMuon]'))
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuMuon_DocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuMuon]'))
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_DocGia]
GO
/****** Object:  ForeignKey [FK_PhieuMuon_Phieu]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuMuon_Phieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuMuon]'))
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_Phieu] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[Phieu] ([MaPhieu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuMuon_Phieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuMuon]'))
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_Phieu]
GO
/****** Object:  ForeignKey [FK_PhieuMuonChiTiet_PhieuMuon]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuMuonChiTiet_PhieuMuon]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuMuonChiTiet]'))
ALTER TABLE [dbo].[PhieuMuonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonChiTiet_PhieuMuon] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PhieuMuon] ([MaPhieuMuon])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuMuonChiTiet_PhieuMuon]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuMuonChiTiet]'))
ALTER TABLE [dbo].[PhieuMuonChiTiet] CHECK CONSTRAINT [FK_PhieuMuonChiTiet_PhieuMuon]
GO
/****** Object:  ForeignKey [FK_PhieuMuonChiTiet_Sach]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuMuonChiTiet_Sach]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuMuonChiTiet]'))
ALTER TABLE [dbo].[PhieuMuonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonChiTiet_Sach] FOREIGN KEY([MaSach], [MaDauSach])
REFERENCES [dbo].[Sach] ([STT], [MaDauSach])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuMuonChiTiet_Sach]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuMuonChiTiet]'))
ALTER TABLE [dbo].[PhieuMuonChiTiet] CHECK CONSTRAINT [FK_PhieuMuonChiTiet_Sach]
GO
/****** Object:  ForeignKey [FK_PhieuNhap_Phieu]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuNhap_Phieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuNhap]'))
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_Phieu] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[Phieu] ([MaPhieu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuNhap_Phieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuNhap]'))
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_Phieu]
GO
/****** Object:  ForeignKey [FK_PhieuNhapChiTiet_DauSach]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuNhapChiTiet_DauSach]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuNhapChiTiet]'))
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapChiTiet_DauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DauSach] ([MaDauSach])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuNhapChiTiet_DauSach]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuNhapChiTiet]'))
ALTER TABLE [dbo].[PhieuNhapChiTiet] CHECK CONSTRAINT [FK_PhieuNhapChiTiet_DauSach]
GO
/****** Object:  ForeignKey [FK_PhieuNhapChiTiet_NCC]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuNhapChiTiet_NCC]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuNhapChiTiet]'))
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapChiTiet_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuNhapChiTiet_NCC]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuNhapChiTiet]'))
ALTER TABLE [dbo].[PhieuNhapChiTiet] CHECK CONSTRAINT [FK_PhieuNhapChiTiet_NCC]
GO
/****** Object:  ForeignKey [FK_PhieuNhapChiTiet_PhieuNhap]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuNhapChiTiet_PhieuNhap]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuNhapChiTiet]'))
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapChiTiet_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuNhapChiTiet_PhieuNhap]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuNhapChiTiet]'))
ALTER TABLE [dbo].[PhieuNhapChiTiet] CHECK CONSTRAINT [FK_PhieuNhapChiTiet_PhieuNhap]
GO
/****** Object:  ForeignKey [FK_PhieuTra_DocGia]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTra_DocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTra]'))
ALTER TABLE [dbo].[PhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTra_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTra_DocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTra]'))
ALTER TABLE [dbo].[PhieuTra] CHECK CONSTRAINT [FK_PhieuTra_DocGia]
GO
/****** Object:  ForeignKey [FK_PhieuTra_PhieuMuon]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTra_PhieuMuon]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTra]'))
ALTER TABLE [dbo].[PhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTra_PhieuMuon] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PhieuMuon] ([MaPhieuMuon])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTra_PhieuMuon]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTra]'))
ALTER TABLE [dbo].[PhieuTra] CHECK CONSTRAINT [FK_PhieuTra_PhieuMuon]
GO
/****** Object:  ForeignKey [FK_PhieuTraChiTiet_NhanVien]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTraChiTiet_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]'))
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_NhanVien] FOREIGN KEY([MaNhanVienKiemTra])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTraChiTiet_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]'))
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuTraChiTiet_PhieuTra]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTraChiTiet_PhieuTra]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]'))
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_PhieuTra] FOREIGN KEY([MaPhieuTra])
REFERENCES [dbo].[PhieuTra] ([MaPhieuTra])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTraChiTiet_PhieuTra]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]'))
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_PhieuTra]
GO
/****** Object:  ForeignKey [FK_PhieuTraChiTiet_QuyDinhPhat]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTraChiTiet_QuyDinhPhat]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]'))
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_QuyDinhPhat] FOREIGN KEY([MaQuyDinh])
REFERENCES [dbo].[QuyDinhPhat] ([MaPhat])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTraChiTiet_QuyDinhPhat]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]'))
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_QuyDinhPhat]
GO
/****** Object:  ForeignKey [FK_PhieuTraChiTiet_Sach]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTraChiTiet_Sach]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]'))
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_Sach] FOREIGN KEY([MaSach], [MaDauSach])
REFERENCES [dbo].[Sach] ([STT], [MaDauSach])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhieuTraChiTiet_Sach]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhieuTraChiTiet]'))
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_Sach]
GO
/****** Object:  ForeignKey [FK_Sach_DauSach]    Script Date: 12/16/2018 16:05:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sach_DauSach]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sach]'))
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_DauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DauSach] ([MaDauSach])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sach_DauSach]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sach]'))
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_DauSach]
GO
