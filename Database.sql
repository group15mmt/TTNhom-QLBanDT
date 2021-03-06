USE [master]
GO
/****** Object:  Database [DB_WebBanDT]    Script Date: 13-05-2019 12:44:14 AM ******/
CREATE DATABASE [DB_WebBanDT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_WebBanDT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HAUMTA\MSSQL\DATA\DB_WebBanDT.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_WebBanDT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HAUMTA\MSSQL\DATA\DB_WebBanDT_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_WebBanDT] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_WebBanDT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_WebBanDT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_WebBanDT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_WebBanDT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_WebBanDT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_WebBanDT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_WebBanDT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_WebBanDT] SET  MULTI_USER 
GO
ALTER DATABASE [DB_WebBanDT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_WebBanDT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_WebBanDT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_WebBanDT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB_WebBanDT] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DB_WebBanDT]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[IDSanPham] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGiaBan] [float] NULL,
	[TGBaoHanh] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[IDPhieuNhap] [char](10) NOT NULL,
	[IDSanPham] [char](10) NOT NULL,
	[DonGiaNhap] [float] NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPhieuNhap] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hang](
	[IDHang] [char](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayHD] [date] NULL,
	[IDKhachHang] [char](10) NULL,
	[IDNhanVien] [char](10) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [char](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[GioiTinh_KH] [nvarchar](3) NULL,
	[SDT_KH] [char](10) NULL,
	[DiaChi_KH] [nvarchar](200) NULL,
	[TaiKhoan] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TaiKhoan] [char](50) NOT NULL,
	[MatKhau] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[IDNCC] [char](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi_NCC] [nvarchar](200) NULL,
	[SDT_NCC] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [char](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[GioiTinh_NV] [nvarchar](3) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[SDT_NV] [char](10) NULL,
	[TaiKhoan] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[IDPhieuNhap] [char](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[IDNhanVien] [char](10) NULL,
	[IDNCC] [char](10) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quyen](
	[IDQuyen] [char](10) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuyenNguoiDung]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuyenNguoiDung](
	[TaiKhoan] [char](50) NOT NULL,
	[IDQuyen] [char](10) NOT NULL,
	[ChuThich] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC,
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 13-05-2019 12:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [char](10) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[UrlAnh] [nvarchar](200) NULL,
	[DVT] [nvarchar](20) NULL,
	[DonGiaN] [float] NULL,
	[DonGiaB] [float] NULL,
	[ManHinh] [nvarchar](50) NULL,
	[HeDieuHanh] [nvarchar](50) NULL,
	[CameraSau] [nvarchar](50) NULL,
	[CameraTruoc] [nvarchar](50) NULL,
	[BoNhoTrong] [nvarchar](50) NULL,
	[Ram] [nvarchar](50) NULL,
	[CPU] [nvarchar](50) NULL,
	[DungLuongPin] [nvarchar](50) NULL,
	[TheSim] [nvarchar](50) NULL,
	[TGBaoHanh] [nvarchar](50) NULL,
	[IDNCC] [char](10) NULL,
	[IDHang] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([IDHoaDon], [IDSanPham], [SoLuong], [DonGiaBan], [TGBaoHanh]) VALUES (1, N'SP01      ', 1, 22990000, N'12 tháng')
INSERT [dbo].[ChiTietHoaDon] ([IDHoaDon], [IDSanPham], [SoLuong], [DonGiaBan], [TGBaoHanh]) VALUES (2, N'SP05      ', 1, 17990000, N'12 tháng')
INSERT [dbo].[ChiTietHoaDon] ([IDHoaDon], [IDSanPham], [SoLuong], [DonGiaBan], [TGBaoHanh]) VALUES (3, N'SP10      ', 1, 12990000, N'12 tháng')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
INSERT [dbo].[ChiTietPhieuNhap] ([IDPhieuNhap], [IDSanPham], [DonGiaNhap], [SoLuong]) VALUES (N'PN01      ', N'SP01      ', 19000000, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([IDPhieuNhap], [IDSanPham], [DonGiaNhap], [SoLuong]) VALUES (N'PN01      ', N'SP04      ', 10200000, 150)
INSERT [dbo].[ChiTietPhieuNhap] ([IDPhieuNhap], [IDSanPham], [DonGiaNhap], [SoLuong]) VALUES (N'PN02      ', N'SP10      ', 11500000, 200)
INSERT [dbo].[ChiTietPhieuNhap] ([IDPhieuNhap], [IDSanPham], [DonGiaNhap], [SoLuong]) VALUES (N'PN03      ', N'SP02      ', 25000000, 200)
INSERT [dbo].[ChiTietPhieuNhap] ([IDPhieuNhap], [IDSanPham], [DonGiaNhap], [SoLuong]) VALUES (N'PN03      ', N'SP03      ', 23500000, 200)
INSERT [dbo].[ChiTietPhieuNhap] ([IDPhieuNhap], [IDSanPham], [DonGiaNhap], [SoLuong]) VALUES (N'PN04      ', N'SP16      ', 31000000, 150)
INSERT [dbo].[ChiTietPhieuNhap] ([IDPhieuNhap], [IDSanPham], [DonGiaNhap], [SoLuong]) VALUES (N'PN04      ', N'SP17      ', 18300000, 150)
INSERT [dbo].[ChiTietPhieuNhap] ([IDPhieuNhap], [IDSanPham], [DonGiaNhap], [SoLuong]) VALUES (N'PN05      ', N'SP12      ', 19500000, 100)
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H01       ', N'iPhone')
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H02       ', N'Sam Sung')
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H03       ', N'Oppo')
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H04       ', N'Nokia')
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H05       ', N'Vivo')
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H06       ', N'Xiaomi')
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H07       ', N'Huawei')
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H08       ', N'Asus')
INSERT [dbo].[Hang] ([IDHang], [TenHang]) VALUES (N'H09       ', N'Mobell')
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayHD], [IDKhachHang], [IDNhanVien], [TongTien]) VALUES (1, CAST(N'2018-12-12' AS Date), N'KH01      ', N'NV02      ', 22990000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayHD], [IDKhachHang], [IDNhanVien], [TongTien]) VALUES (2, CAST(N'2016-09-03' AS Date), N'KH02      ', N'NV07      ', 17990000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayHD], [IDKhachHang], [IDNhanVien], [TongTien]) VALUES (3, CAST(N'2017-05-12' AS Date), N'KH03      ', N'NV08      ', 12990000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH01      ', N'Nguyễn Chiến Thắng', N'Nam', N'0989897656', N'Vĩnh Phúc', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH02      ', N'Vũ Việt Phương', N'Nam', N'0981235432', N'Hà Nội', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH03      ', N'Triệu Văn Linh', N'Nam', N'0876784532', N'Tuyên Quang', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH04      ', N'Vũ Trà Giang', N'Nữ', N'0345267890', N'Vĩnh Phúc', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH05      ', N'Lưu Thành Sơn', N'Nam', N'0987871234', N'Vĩnh Phúc', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH06      ', N'Trình Đình Vinh', N'Nữ', N'0987678989', N'Vĩnh Phúc', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH07      ', N'Nguyễn Thị Hoài', N'Nữ', N'0876545678', N'Bắc Ninh', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH08      ', N'Trần Trọng Long', N'Nam', N'0897898906', N'Hải Phòng', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH09      ', N'Vũ Việt Anh Tuấn', N'Nam', N'0987676789', N'Nam Định', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH10      ', N'Nguyễn Công Sỹ', N'Nam', N'0876546543', N'Vĩnh Phúc', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH11      ', N'Doãn Đình Nam', N'Nam', N'0987123456', N'Thanh Hóa', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH12      ', N'Ngô Doãn Quang', N'Nam', N'0876545678', N'Nam Định', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH13      ', N'Phạm Hương Giang', N'Nữ', N'0923458765', N'Yên Bái', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH14      ', N'Doãn Thị Kim Liên', N'Nữ', N'0987898976', N'Hà Nam', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH15      ', N'Trần Thị Huyền', N'Nữ', N'0989676754', N'Hà Nội', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH16      ', N'Đỗ Đăng Khải', N'Nam', N'0978786543', N'Hà Nội', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH17      ', N'Nguyễn Thị Linh', N'Nữ', N'0987898765', N'Hà Nội', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH18      ', N'Nguyễn Quốc Khánh', N'Nam', N'0897234678', N'Hà Nội', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH19      ', N'Cao Thị Hoa', N'Nữ', N'0398981234', N'Hà Nội', NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [GioiTinh_KH], [SDT_KH], [DiaChi_KH], [TaiKhoan]) VALUES (N'KH20      ', N'Vi Văn Bình', N'Nam', N'0345678909', N'Hà Nội', NULL)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'hau                                               ', N'250998                                            ')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'quanganh                                          ', N'123456                                            ')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'vanvinh                                           ', N'111111                                            ')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'vuhoang                                           ', N'987654                                            ')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC01     ', N'Quang Anh', N'180 Hoàng Quốc Việt, Cầu Gi ấy, Hà Nội', N'0923244545')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC02     ', N'Hòa Phát', N'19 Thanh Xuân, Hà Nội', N'0876567889')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC03     ', N'Thịnh Vượng', N'556 Phạm Văn Đồng, Hà Nội', N'0345676778')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC04     ', N'Anh Dũng', N'235 Trần Cung, Hà Nội', N'0456567899')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC05     ', N'Đại Thành', N'173 Nguyễn Chí Thanh, Hà Nội', N'0867677889')
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV01      ', N'Nguyễn Văn An', N'Nam', N'Nhân Viên Kỹ Thuật', N'0981234234', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV02      ', N'Trần Hồng Dương', N'Nam', N'Nhân Viên Bán Hàng', N'0867543289', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV03      ', N'Vũ Hải Hậu', N'Nam', N'Nhân Viên Kỹ Thuật', N'0985983590', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV04      ', N'Nguyễn Trọng Quang Anh', N'Nam', N'Chủ Cửa Hàng', N'0356561289', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV05      ', N'Vũ Thị Hà', N'Nữ', N'Nhân Viên Tiếp Tân', N'0987454523', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV06      ', N'Nguyễn Văn Vinh', N'Nam', N'Nhân Viên Kỹ Thuật', N'0878654389', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV07      ', N'Đỗ Mai Hường', N'Nữ', N'Nhân Viên Bán Hàng', N'0987123489', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV08      ', N'Chu Hải Đăng', N'Nam', N'Nhân Viên Bán Hàng', N'0987654567', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV09      ', N'Đỗ Phi Long', N'Nam', N'Nhân Viên Kỹ Thuật', N'0987676789', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV10      ', N'Phạm Mai Anh', N'Nữ', N'Nhân Viên Bán Hàng', N'0345654323', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV11      ', N'Kiều Thị Thu Thương', N'Nữ', N'Nhân Viên Kiểm Hàng', N'0345348989', NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [GioiTinh_NV], [ChucVu], [SDT_NV], [TaiKhoan]) VALUES (N'NV12      ', N'Trần Công Sơn', N'Nam', N'Nhân Viên Nhập Hàng', N'0987864534', NULL)
INSERT [dbo].[PhieuNhap] ([IDPhieuNhap], [NgayNhap], [IDNhanVien], [IDNCC], [TongTien]) VALUES (N'PN01      ', CAST(N'2017-12-12' AS Date), N'NV12      ', N'NCC05     ', NULL)
INSERT [dbo].[PhieuNhap] ([IDPhieuNhap], [NgayNhap], [IDNhanVien], [IDNCC], [TongTien]) VALUES (N'PN02      ', CAST(N'2018-03-02' AS Date), N'NV12      ', N'NCC01     ', NULL)
INSERT [dbo].[PhieuNhap] ([IDPhieuNhap], [NgayNhap], [IDNhanVien], [IDNCC], [TongTien]) VALUES (N'PN03      ', CAST(N'2018-09-12' AS Date), N'NV12      ', N'NCC03     ', NULL)
INSERT [dbo].[PhieuNhap] ([IDPhieuNhap], [NgayNhap], [IDNhanVien], [IDNCC], [TongTien]) VALUES (N'PN04      ', CAST(N'2018-02-03' AS Date), N'NV12      ', N'NCC02     ', NULL)
INSERT [dbo].[PhieuNhap] ([IDPhieuNhap], [NgayNhap], [IDNhanVien], [IDNCC], [TongTien]) VALUES (N'PN05      ', CAST(N'2019-03-19' AS Date), N'NV12      ', N'NCC04     ', NULL)
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen]) VALUES (N'Q1        ', N'Admin')
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen]) VALUES (N'Q2        ', N'KhachHang')
INSERT [dbo].[QuyenNguoiDung] ([TaiKhoan], [IDQuyen], [ChuThich]) VALUES (N'hau                                               ', N'Q2        ', NULL)
INSERT [dbo].[QuyenNguoiDung] ([TaiKhoan], [IDQuyen], [ChuThich]) VALUES (N'quanganh                                          ', N'Q1        ', NULL)
INSERT [dbo].[QuyenNguoiDung] ([TaiKhoan], [IDQuyen], [ChuThich]) VALUES (N'quanganh                                          ', N'Q2        ', NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP01      ', N'SamSung Glaxy Note 9', N'samsung-galaxy-note-9-512gb-blue-400x460.jpg', N'Chiếc', 19000000, 22990000, N'Super AMOLED, 6.4", Quad HD+ (2K+)', N'Android 8.1 (Oreo)', N'	Chính 12 MP & Phụ 12 MP', N'	8 MP', N'	512 GB', N'8GB', N'	Exynos 9810 8 nhân 64-bit', N'	4000 mAh, có sạc nhanh', N'2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC02     ', N'H02       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP02      ', N'iPhone Xs Max', N'iphone-xs-max-gray-400x460.jpg', N'Chiếc', 25000000, 29990000, N'OLED, 6.5", Super Retina', N'iOS 12', N'Chính 12 MP & Phụ 12 MP', N'	7 MP', N'	64 GB', N'4 GB', N'	Apple A12 Bionic 6 nhân', N'	3174 mAh, có sạc nhanh', N'
Nano SIM & eSIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC01     ', N'H01       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP03      ', N'iPhone X', N'iphone-x-256gb-silver-400x460.jpg', N'Chiếc', 23500000, 27990000, N'OLED, 5.8", Super Retina', N'	iOS 12', N'	Chính 12 MP & Phụ 12 MP', N'	7 MP', N'	256 GB', N'	3 GB
', N'	Apple A11 Bionic 6 nhân', N'	2716 mAh, có sạc nhanh', N'
1 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC01     ', N'H01       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP04      ', N'SamSung Glaxy Note 8', N'samsung-galaxy-note8-black-400x460.jpg', N'Chiếc', 10200000, 11990000, N'	Super AMOLED, 6.3", Quad HD+ (2K+)', N'	Android 7.1 (Nougat)', N'	Chính 12 MP & Phụ 12 MP', N'	8 MP', N'	64 GB', N'	6 GB', N'	Exynos 8895 8 nhân 64-bit', N'	3300 mAh, có sạc nhanh', N'
2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC02     ', N'H02       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP05      ', N'Oppo Find X', N'oppo-find-x-1-400x460-400x460.jpg', N'Chiếc', 15000000, 17990000, N'	AMOLED, 6.42", Full HD+', N'	Android 8.1 (Oreo)', N'	Chính 16 MP & Phụ 20 MP', N'	25 MP', N'256 GB', N'	8 GB', N'	Snapdragon 845 8 nhân', N'	3730 mAh, có sạc nhanh', N'
2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC03     ', N'H03       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP06      ', N'Nokia 6.1 Plus', N'nokia-61-plus-3-400x460.jpg', N'Chiếc', 4000000, 4490000, N'	IPS LCD, 5.8", Full HD+', N'	Android 8 Oreo (Android One)', N'	Chính 16 MP & Phụ 5 MP', N'	16 MP', N'	64 GB', N'4 GB', N'	Qualcomm Snapdragon 636 8 nhân 64-bit', N'	3060 mAh, có sạc nhanh', N'
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC04     ', N'H04       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP07      ', N'Vivo Y91', N'vivo-y91-400x460.jpg', N'Chiếc', 3000000, 3990000, N'	IPS LCD, 6.22", HD+', N'	Android 8.1 (Oreo)', N'	Chính 13 MP & Phụ 2 MP', N'8 MP', N'	64 GB', N'3 GB', N'MediaTek MT6762R 8 nhân', N'	4030 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC04     ', N'H05       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP08      ', N'Vivo V11i', N'vivo-v11i-blue-400x460.jpg', N'Chiếc', 3500000, 5490000, N'	IPS LCD, 6.3", Full HD+', N'Android 8.1 (Oreo)', N'	Chính 16 MP & Phụ 5 MP', N'25 MP', N'128 GB', N'4 GB', N'	MediaTek Helio P60 8 nhân 64-bit', N'	3315 mAh, có sạc nhanh', N'
2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC04     ', N'H05       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP09      ', N'Vivo Y91C', N'vivo-y91c-400x460.jpg', N'Chiếc', 2000000, 2990000, N'	IPS LCD, 6.22", HD+', N'	Android 8.1 (Oreo)', N'	13 MP', N'	5 MP', N'32 GB', N'2 GB', N'	MediaTek MT6762R 8 nhân', N'4030 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC04     ', N'H05       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP10      ', N'Xiaomi Mi 8', N'xiaomi-mi-8-black-400x460.jpg', N'Chiếc', 11500000, 12990000, N'	Super AMOLED, 6.21", Full HD+', N'	Android 8.1 (Oreo)', N'Chính 12 MP & Phụ 12 MP', N'20 MP', N'64 GB', N'6GB', N'	Snapdragon 845 8 nhân', N'	3400 mAh, có sạc nhanh', N'2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC01     ', N'H06       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP11      ', N'Xiaomi Redmi Note 7', N'xiaomi-redmi-note-7-400x460.jpg', N'Chiếc', 4000000, 4990000, N'	IPS LCD, 6.3", Full HD+', N'	Android 9.0 (Pie)', N'Chính 48 MP & Phụ 5 MP', N'13 MP', N'64 GB', N'4 GB', N'	Qualcomm Snapdragon 660 8 nhân', N'	4000 mAh', N'
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'Bảo hành chính hãng 18 tháng.', N'NCC01     ', N'H06       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP12      ', N'Huawei P30 Pro', N'huawei-p30-pro-1-400x460.jpg', N'Chiếc', 19500000, 20990000, N'OLED, 6.47", Full HD+', N'	Android 9.0 (Pie)', N'	Chính 40 MP & Phụ 20 MP, 8 MP, TOF 3D', N'32 MP', N'256 GB', N'8 GB', N'	Hisilicon Kirin 980 8 nhân 64-bit', N'	4200 mAh, có sạc nhanh', N'
2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC05     ', N'H07       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP13      ', N'Huawei P30 Lite', N'huawei-p30-lite-400x460.jpg', N'Chiếc', 5890000, 6990000, N'	IPS LCD, 6.15", Full HD+', N'	Android 9.0 (Pie)', N'Chính 24 MP & Phụ 8 MP, 2 MP', N'32 MP', N'128 GB', N'6 GB', N'	HiSilicon Kirin 710', N'3340 mAh, có sạc nhanh', N'
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC05     ', N'H07       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP14      ', N'Huawei Y9 (2019)', N'huawei-y9-2019-blue-400x460.jpg', N'Chiếc', 4000000, 4990000, N'	LTPS LCD, 6.5", Full HD+', N'	Android 8.1 (Oreo)', N'	Chính 13 MP & Phụ 2 MP', N'Chính 16 MP & Phụ 2 MP', N'64 GB', N'4 GB', N'	HiSilicon Kirin 710', N'	4000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC05     ', N'H07       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP15      ', N'Huawei P30', N'huawei-p30-blue-400x460.jpg', N'Chiếc', 13500000, 14990000, N'	OLED, 6.1", Full HD+', N'	Android 9.0 (Pie)', N'	Chính 40 MP & Phụ 16 MP, 8 MP', N'	32 MP', N'	128 GB', N'8 GB', N'	Hisilicon Kirin 980 8 nhân 64-bit', N'	3650 mAh, có sạc nhanh', N'
2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC05     ', N'H07       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP16      ', N'iPhone Xs ', N'iphone-xs-256gb-white-400x460.jpg', N'Chiếc', 31000000, 32990000, N'OLED, 5.8", Super Retina', N'	iOS 12', N'Chính 12 MP & Phụ 12 MP', N'	7 MP', N'256 GB', N'4 GB', N'	Apple A12 Bionic 6 nhân', N'	2658 mAh, có sạc nhanh', N'Nano SIM & eSIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC01     ', N'H01       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP17      ', N'iPhone Xr ', N'iphone-xr-128gb-red-400x460.jpg', N'Chiếc', 18300000, 18990000, N'	IPS LCD, 6.1", Liquid Retina', N'	iOS 12', N'	12 MP', N'	7 MP', N'128 GB', N'3 GB', N'Apple A12 Bionic 6 nhân', N'	2942 mAh, có sạc nhanh', N'
Nano SIM & eSIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC01     ', N'H01       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP18      ', N'iPhone 7', N'iphone-7-32gb-den-400x460.jpg', N'Chiếc', 10200000, 11990000, N'	LED-backlit IPS LCD, 4.7", Retina HD', N'	iOS 12', N'	12 MP', N'	7 MP', N'	32 GB', N'2 GB', N'	Apple A10 Fusion 4 nhân 64-bit', N'1960 mAh', N'
1 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC01     ', N'H01       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP19      ', N'iPhone 7 Plus', N'iphone-7-plus-gold-400x460.jpg', N'Chiếc', 11500000, 12990000, N'	LED-backlit IPS LCD, 5.5", Retina HD', N'	iOS 12', N'Chính 12 MP & Phụ 12 MP', N'	7 MP', N'32 GB', N'3 GB', N'	Apple A10 Fusion 4 nhân 64-bit', N'	2900 mAh', N'
1 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC01     ', N'H01       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP20      ', N'iPhone 6s Plus', N'iphone-6s-plus-32gb-400x460.jpg', N'Chiếc', 8000000, 9290000, N'	LED-backlit IPS LCD, 5.5", Retina HD', N'	iOS 12', N'	12 MP', N'	5 MP', N'32 GB', N'2 GB', N'	Apple A9 2 nhân 64-bit', N'	2750 mAh', N'
1 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC01     ', N'H01       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP21      ', N'Asus Zenfone Pro M1

', N'asus-zenfone-max-pro-m1-blue-400x460.jpg', N'Chiếc', 2900000, 3790000, N'	IPS LCD, 6", Full HD+', N'Android 8.1 (Oreo)', N'	Chính 13 MP & Phụ 5 MP', N'	8 MP', N'32 GB', N'3 GB', N'	Qualcomm Snapdragon 636 8 nhân 64-bit', N'	5000 mAh, có sạc nhanh', N'
2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC03     ', N'H08       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP22      ', N'Asus Zenfone Pro M2', N'gold1gv9w-640.jpg', N'Chiếc', 5000000, 5990000, N'	IPS LCD, 6.3", Full HD+', N'	Android 8.1 (Oreo)', N'	Chính 12 MP & Phụ 5 MP', N'	13 MP', N'	64 GB', N'	4 GB', N'	Qualcomm Snapdragon 660 8 nhân', N'	5000 mAh', N'
2 Nano SIM, Hỗ trợ 4G', N'Bảo hành chính hãng 12 tháng.', N'NCC03     ', N'H08       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP23      ', N'Mobell S61', N'mobell-s61-blue-2-1-400x460.jpg', N'Chiếc', 1500000, 1890000, N'	IPS LCD, 5.5", HD+', N'	Android 8 Oreo (Go Edition)', N'	Chính 8 MP & Phụ 0.3 MP', N'	5 MP', N'	16 GB', N'	1 GB', N'	Spreadtrum SC7731E', N'	2500 mAh', N'
Nano SIM & Micro SIM', N'Bảo hành chính hãng 12 tháng.', N'NCC03     ', N'H09       ')
INSERT [dbo].[SanPham] ([IDSanPham], [TenSanPham], [UrlAnh], [DVT], [DonGiaN], [DonGiaB], [ManHinh], [HeDieuHanh], [CameraSau], [CameraTruoc], [BoNhoTrong], [Ram], [CPU], [DungLuongPin], [TheSim], [TGBaoHanh], [IDNCC], [IDHang]) VALUES (N'SP24      ', N'Mobell S51', N'mobell-s51-gold-2-400x460.jpg', N'Chiếc', 1350000, 1650000, N'	IPS LCD, 5.5", HD+', N'	Android 8 Oreo (Go Edition)', N'	Chính 5 MP & Phụ 0.3 MP', N'	5 MP', N'	8 GB', N'1GB', N'	Spreadtrum SC7731 4 nhân 32-bit', N'	2500 mAh', N'
Nano SIM & Micro SIM', N'Bảo hành chính hãng 12 tháng.', N'NCC03     ', N'H09       ')
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([IDPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([IDPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([IDNCC])
REFERENCES [dbo].[NhaCungCap] ([IDNCC])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[QuyenNguoiDung]  WITH CHECK ADD FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[Quyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[QuyenNguoiDung]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([IDHang])
REFERENCES [dbo].[Hang] ([IDHang])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([IDNCC])
REFERENCES [dbo].[NhaCungCap] ([IDNCC])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([GioiTinh_KH]=N'Nữ' OR [GioiTinh_KH]='Nam'))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([GioiTinh_NV]=N'Nữ' OR [GioiTinh_NV]='Nam'))
GO
USE [master]
GO
ALTER DATABASE [DB_WebBanDT] SET  READ_WRITE 
GO
