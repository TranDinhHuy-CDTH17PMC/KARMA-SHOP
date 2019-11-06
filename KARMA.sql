USE [ASP.NET]
GO
/****** Object:  Table [dbo].[CT_XE]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_XE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idxe] [int] NULL,
	[khoiluong] [varchar](20) NULL,
	[dai_rong_cao] [varchar](20) NULL,
	[dungtichxang] [varchar](20) NULL,
	[kichcolopxe] [varchar](20) NULL,
	[loaidongco] [varchar](20) NULL,
	[d_hanhtrinhpitong] [varchar](20) NULL,
	[tysonen] [varchar](20) NULL,
	[congsuat] [varchar](20) NULL,
	[momencucdai] [varchar](20) NULL,
	[dungtichnhot] [varchar](20) NULL,
	[loaitruyendong] [varchar](20) NULL,
 CONSTRAINT [PK_CT_XE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHOADON]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHOADON](
	[iddonhang] [int] NOT NULL,
	[idsanpham] [int] NOT NULL,
	[soluong] [int] NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_CTHOADON] PRIMARY KEY CLUSTERED 
(
	[iddonhang] ASC,
	[idsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGXE]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGXE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenhanhxe] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
	[ghichu] [ntext] NULL,
 CONSTRAINT [PK_HANGXE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ngaymua] [date] NULL,
	[diachigiaohang] [nvarchar](50) NULL,
	[ghichu] [ntext] NULL,
	[tongtien] [int] NULL,
	[idnhanvien] [int] NULL,
	[idkhachhang] [int] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [bit] NULL,
	[sdt] [int] NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[trangthai] [bit] NULL,
	[ghichu] [ntext] NULL,
	[tentaikhoan] [varchar](20) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIXE]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIXE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](30) NULL,
	[trangthai] [bit] NULL,
	[ghichu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LOAIXE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotennv] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [bit] NULL,
	[diachi] [nvarchar](max) NULL,
	[sdt] [int] NULL,
	[email] [varchar](50) NULL,
	[ngayvaolam] [date] NULL,
	[luong] [int] NULL,
	[trangthai] [bit] NULL,
	[ghichu] [nvarchar](50) NULL,
	[tentaikhoan] [varchar](20) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[tendangnhap] [varchar](20) NOT NULL,
	[matkhau] [varchar](20) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[tendangnhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XE]    Script Date: 11/6/2019 7:43:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tensanpham] [nvarchar](50) NULL,
	[anhminhhoa] [nvarchar](max) NULL,
	[giatien] [int] NULL,
	[soluongtonkho] [int] NULL,
	[trangthai] [bit] NULL,
	[ghichu] [ntext] NULL,
	[loaisanpham] [int] NULL,
	[hangxe] [int] NULL,
 CONSTRAINT [PK_XE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[HANGXE] ADD  CONSTRAINT [DF_HANGXE_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF_Table_5_trangthai]  DEFAULT ((1)) FOR [email]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF_KHACHHANG_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[LOAIXE] ADD  CONSTRAINT [DF_LOAIXE_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [DF_NHANVIEN_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[XE] ADD  CONSTRAINT [DF_XE_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[CT_XE]  WITH CHECK ADD  CONSTRAINT [FK_CT_XE_XE] FOREIGN KEY([idxe])
REFERENCES [dbo].[XE] ([id])
GO
ALTER TABLE [dbo].[CT_XE] CHECK CONSTRAINT [FK_CT_XE_XE]
GO
ALTER TABLE [dbo].[CTHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHOADON_HOADON] FOREIGN KEY([iddonhang])
REFERENCES [dbo].[HOADON] ([id])
GO
ALTER TABLE [dbo].[CTHOADON] CHECK CONSTRAINT [FK_CTHOADON_HOADON]
GO
ALTER TABLE [dbo].[CTHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHOADON_XE] FOREIGN KEY([idsanpham])
REFERENCES [dbo].[XE] ([id])
GO
ALTER TABLE [dbo].[CTHOADON] CHECK CONSTRAINT [FK_CTHOADON_XE]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([idkhachhang])
REFERENCES [dbo].[KHACHHANG] ([id])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([idnhanvien])
REFERENCES [dbo].[NHANVIEN] ([id])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_TAIKHOAN] FOREIGN KEY([tentaikhoan])
REFERENCES [dbo].[TAIKHOAN] ([tendangnhap])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_TAIKHOAN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([tentaikhoan])
REFERENCES [dbo].[TAIKHOAN] ([tendangnhap])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_HANGXE] FOREIGN KEY([hangxe])
REFERENCES [dbo].[HANGXE] ([id])
GO
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_HANGXE]
GO
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_LOAIXE] FOREIGN KEY([loaisanpham])
REFERENCES [dbo].[LOAIXE] ([id])
GO
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_LOAIXE]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'trangthai'
GO
