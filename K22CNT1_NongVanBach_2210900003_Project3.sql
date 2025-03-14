-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 14, 2025 lúc 02:10 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `k22cnt1_nongvanbach_2210900003_project3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nvb_admin`
--

CREATE TABLE `nvb_admin` (
  `Nvb_AdminId` int(11) NOT NULL,
  `Nvb_TaiKhoan` varchar(50) NOT NULL,
  `Nvb_MatKhau` varchar(32) NOT NULL,
  `Nvb_TrangThai` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nvb_admin`
--

INSERT INTO `nvb_admin` (`Nvb_AdminId`, `Nvb_TaiKhoan`, `Nvb_MatKhau`, `Nvb_TrangThai`) VALUES
(1, 'admin', '123456', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nvb_chitietdonhang`
--

CREATE TABLE `nvb_chitietdonhang` (
  `Nvb_ChiTietId` int(11) NOT NULL,
  `Nvb_DonHangId` int(11) NOT NULL,
  `Nvb_SanPhamId` int(11) NOT NULL,
  `Nvb_SoLuong` int(11) NOT NULL,
  `Nvb_GiaSanPham` int(11) NOT NULL,
  `Nvb_ThanhToan` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nvb_chitietdonhang`
--

INSERT INTO `nvb_chitietdonhang` (`Nvb_ChiTietId`, `Nvb_DonHangId`, `Nvb_SanPhamId`, `Nvb_SoLuong`, `Nvb_GiaSanPham`, `Nvb_ThanhToan`) VALUES
(1, 1, 1, 2, 5000, 0),
(2, 1, 2, 2, 25000, 0),
(3, 1, 3, 1, 10000, 0),
(4, 2, 2, 1, 25000, 0),
(5, 2, 3, 1, 10000, 0),
(6, 2, 5, 1, 2000, 0),
(7, 2, 9, 1, 15000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nvb_donhang`
--

CREATE TABLE `nvb_donhang` (
  `Nvb_DonHangId` int(11) NOT NULL,
  `Nvb_KhachHangId` int(11) DEFAULT NULL,
  `Nvb_KhachVangLaiId` int(11) DEFAULT NULL,
  `Nvb_TongTien` int(11) NOT NULL,
  `Nvb_TrangThai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nvb_donhang`
--

INSERT INTO `nvb_donhang` (`Nvb_DonHangId`, `Nvb_KhachHangId`, `Nvb_KhachVangLaiId`, `Nvb_TongTien`, `Nvb_TrangThai`) VALUES
(1, NULL, 1, 70000, 1),
(2, NULL, 2, 52000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nvb_khachhang`
--

CREATE TABLE `nvb_khachhang` (
  `Nvb_KhachHangId` int(11) NOT NULL,
  `Nvb_TaiKhoan` varchar(100) NOT NULL,
  `Nvb_HoTen` varchar(100) NOT NULL,
  `Nvb_SoDienThoai` varchar(15) NOT NULL,
  `Nvb_DiaChi` text NOT NULL,
  `Nvb_Email` varchar(100) NOT NULL,
  `Nvb_MatKhau` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nvb_khachhang`
--

INSERT INTO `nvb_khachhang` (`Nvb_KhachHangId`, `Nvb_TaiKhoan`, `Nvb_HoTen`, `Nvb_SoDienThoai`, `Nvb_DiaChi`, `Nvb_Email`, `Nvb_MatKhau`) VALUES
(1, 'user', '', '123456789', '123 Ha Noi', 'user@gmail.com', '123456'),
(2, 'bach', 'nong van bach', '12345678', '123', 'bachtk@gmail.com', '123456'),
(3, 'bach123', 'nong van bach', '12345678', '123', 'bach@gmail.com', '123456'),
(5, 'bachoi', 'bachbach', '123123123', '123abc', 'kon@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nvb_khachvanglai`
--

CREATE TABLE `nvb_khachvanglai` (
  `Nvb_KhachVangLaiId` int(11) NOT NULL,
  `Nvb_HoTen` varchar(100) NOT NULL,
  `Nvb_SoDienThoai` varchar(15) NOT NULL,
  `Nvb_DiaChi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nvb_khachvanglai`
--

INSERT INTO `nvb_khachvanglai` (`Nvb_KhachVangLaiId`, `Nvb_HoTen`, `Nvb_SoDienThoai`, `Nvb_DiaChi`) VALUES
(1, 'nong van bach', '12345678', '123'),
(2, 'nong van bach', '12345678', 'abjhkjlj');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nvb_sanpham`
--

CREATE TABLE `nvb_sanpham` (
  `Nvb_SanPhamId` int(11) NOT NULL,
  `Nvb_TenSanPham` varchar(100) NOT NULL,
  `Nvb_MoTa` text DEFAULT NULL,
  `Nvb_HinhAnh` varchar(255) DEFAULT NULL,
  `Nvb_Gia` int(11) NOT NULL,
  `Nvb_SoLuong` int(11) NOT NULL,
  `Nvb_DanhMuc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nvb_sanpham`
--

INSERT INTO `nvb_sanpham` (`Nvb_SanPhamId`, `Nvb_TenSanPham`, `Nvb_MoTa`, `Nvb_HinhAnh`, `Nvb_Gia`, `Nvb_SoLuong`, `Nvb_DanhMuc`) VALUES
(1, 'Bút bi', 'Bút bi viết mực xanh, dùng cho học sinh, sinh viên', 'butbi.jpg', 15000, 100, 'Bút'),
(2, 'Sổ tay', 'Sổ tay A5 có thể mang theo dễ dàng, bìa cứng', 'sotay.jpg', 25000, 50, 'Vở'),
(3, 'Gọt bút', 'Gọt bút kim loại, chắc chắn, dễ sử dụng', 'gotbut.jpg', 10000, 200, 'Văn phòng phẩm'),
(4, 'Bảng trắng', 'Bảng trắng cho văn phòng, có thể viết xóa', 'bangtrang.jpg', 150000, 30, 'Văn phòng phẩm'),
(5, 'Dây thun', 'Dây thun dùng để buộc các vật dụng văn phòng', 'daythun.jpg', 2000, 500, 'Văn phòng phẩm'),
(6, 'Thước kẻ', 'Thước kẻ bằng nhựa, dài 30cm, sử dụng cho học sinh và sinh viên.', 'thuocke.jpg', 1000, 200, 'Văn phòng phẩm'),
(7, 'Giấy A4', 'Giấy A4 dùng cho máy in và photocopy, gói 500 tờ.', 'giayA4.jpg', 5000, 150, 'Đồ dùng in ấn'),
(8, 'Ghim Giấy', 'Ghim giấy bằng kim loại, tiện dụng cho công việc văn phòng.', 'ghimgiay.jpg', 2000, 300, 'Đồ dùng in ấn'),
(9, 'Mực viết', 'Mực viết cho bút bi, màu xanh, đóng gói 10 cây.', 'mucviet.jpg', 15000, 100, 'Văn phòng phẩm'),
(10, 'Compa', 'Compa kim loại dùng để vẽ hình tròn, có thể điều chỉnh độ dài.', 'compa.png', 12000, 80, 'Văn phòng phẩm');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nvb_admin`
--
ALTER TABLE `nvb_admin`
  ADD PRIMARY KEY (`Nvb_AdminId`),
  ADD UNIQUE KEY `Nvb_TaiKhoan` (`Nvb_TaiKhoan`);

--
-- Chỉ mục cho bảng `nvb_chitietdonhang`
--
ALTER TABLE `nvb_chitietdonhang`
  ADD PRIMARY KEY (`Nvb_ChiTietId`),
  ADD KEY `Nvb_DonHangId` (`Nvb_DonHangId`),
  ADD KEY `Nvb_SanPhamId` (`Nvb_SanPhamId`);

--
-- Chỉ mục cho bảng `nvb_donhang`
--
ALTER TABLE `nvb_donhang`
  ADD PRIMARY KEY (`Nvb_DonHangId`),
  ADD KEY `Nvb_KhachHangId` (`Nvb_KhachHangId`),
  ADD KEY `Nvb_KhachVangLaiId` (`Nvb_KhachVangLaiId`);

--
-- Chỉ mục cho bảng `nvb_khachhang`
--
ALTER TABLE `nvb_khachhang`
  ADD PRIMARY KEY (`Nvb_KhachHangId`),
  ADD UNIQUE KEY `Nvb_TaiKhoan` (`Nvb_TaiKhoan`),
  ADD UNIQUE KEY `Nvb_Email` (`Nvb_Email`);

--
-- Chỉ mục cho bảng `nvb_khachvanglai`
--
ALTER TABLE `nvb_khachvanglai`
  ADD PRIMARY KEY (`Nvb_KhachVangLaiId`);

--
-- Chỉ mục cho bảng `nvb_sanpham`
--
ALTER TABLE `nvb_sanpham`
  ADD PRIMARY KEY (`Nvb_SanPhamId`),
  ADD UNIQUE KEY `Nvb_TenSanPham` (`Nvb_TenSanPham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nvb_admin`
--
ALTER TABLE `nvb_admin`
  MODIFY `Nvb_AdminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nvb_chitietdonhang`
--
ALTER TABLE `nvb_chitietdonhang`
  MODIFY `Nvb_ChiTietId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nvb_donhang`
--
ALTER TABLE `nvb_donhang`
  MODIFY `Nvb_DonHangId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nvb_khachhang`
--
ALTER TABLE `nvb_khachhang`
  MODIFY `Nvb_KhachHangId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nvb_khachvanglai`
--
ALTER TABLE `nvb_khachvanglai`
  MODIFY `Nvb_KhachVangLaiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nvb_sanpham`
--
ALTER TABLE `nvb_sanpham`
  MODIFY `Nvb_SanPhamId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `nvb_chitietdonhang`
--
ALTER TABLE `nvb_chitietdonhang`
  ADD CONSTRAINT `nvb_chitietdonhang_ibfk_1` FOREIGN KEY (`Nvb_DonHangId`) REFERENCES `nvb_donhang` (`Nvb_DonHangId`) ON DELETE CASCADE,
  ADD CONSTRAINT `nvb_chitietdonhang_ibfk_2` FOREIGN KEY (`Nvb_SanPhamId`) REFERENCES `nvb_sanpham` (`Nvb_SanPhamId`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `nvb_donhang`
--
ALTER TABLE `nvb_donhang`
  ADD CONSTRAINT `nvb_donhang_ibfk_1` FOREIGN KEY (`Nvb_KhachHangId`) REFERENCES `nvb_khachhang` (`Nvb_KhachHangId`) ON DELETE SET NULL,
  ADD CONSTRAINT `nvb_donhang_ibfk_2` FOREIGN KEY (`Nvb_KhachVangLaiId`) REFERENCES `nvb_khachvanglai` (`Nvb_KhachVangLaiId`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
