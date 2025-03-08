-- Bảng 1: NVB_ADMIN
CREATE TABLE NVB_ADMIN (
    Nvb_AdminId INT PRIMARY KEY IDENTITY(1,1),
    Nvb_TaiKhoan VARCHAR(50) NOT NULL UNIQUE,
    Nvb_MatKhau VARCHAR(32) NOT NULL,
    Nvb_TrangThai BIT -- 0: Khóa, 1: Hoạt động
);

-- Bảng 2: NVB_SANPHAM
CREATE TABLE NVB_SANPHAM (
    Nvb_SanPhamId INT PRIMARY KEY IDENTITY(1,1),
    Nvb_TenSanPham VARCHAR(100) NOT NULL UNIQUE,
    Nvb_MoTa TEXT NULL,
    Nvb_HinhAnh VARCHAR(100) NULL,
    Nvb_Gia INT NOT NULL,
    Nvb_SoLuong INT NOT NULL,
    Nvb_DanhMuc VARCHAR(100) NULL
);

-- Bảng 3: NVB_KHACHHANG
CREATE TABLE NVB_KHACHHANG (
    Nvb_KhachHangId INT PRIMARY KEY IDENTITY(1,1),
    Nvb_TaiKhoan VARCHAR(100) NOT NULL UNIQUE,
    Nvb_HoTen VARCHAR(100) NOT NULL,
    Nvb_SoDienThoai VARCHAR(15) NOT NULL,
    Nvb_DiaChi TEXT NOT NULL,
    Nvb_Email VARCHAR(100) NOT NULL UNIQUE,
    Nvb_MatKhau VARCHAR(100) NOT NULL
);

-- Bảng 4: NVB_KHACHVANGLAI
CREATE TABLE NVB_KHACHVANGLAI (
    Nvb_KhachVangLaiId INT PRIMARY KEY IDENTITY(1,1),
    Nvb_HoTen VARCHAR(100) NOT NULL,
    Nvb_SoDienThoai VARCHAR(15) NOT NULL,
    Nvb_DiaChi TEXT NOT NULL
);

-- Bảng 5: NVB_DONHANG
CREATE TABLE NVB_DONHANG (
    Nvb_DonHangId INT PRIMARY KEY IDENTITY(1,1),
    Nvb_KhachHangId INT NULL,
    Nvb_KhachVangLaiId INT NULL,
    Nvb_TongTien INT NOT NULL,
    Nvb_TrangThai TINYINT NOT NULL, -- 1: Đang xử lý, 2: Hoàn thành, 3: Đã hủy, 4: Đang giao

    CONSTRAINT FK_DonHang_KhachHang FOREIGN KEY (Nvb_KhachHangId) REFERENCES NVB_KHACHHANG(Nvb_KhachHangId),
    CONSTRAINT FK_DonHang_KhachVangLai FOREIGN KEY (Nvb_KhachVangLaiId) REFERENCES NVB_KHACHVANGLAI(Nvb_KhachVangLaiId)
);

-- Bảng 6: NVB_CHITIETDONHANG
CREATE TABLE NVB_CHITIETDONHANG (
    Nvb_ChiTietId INT PRIMARY KEY IDENTITY(1,1),
    Nvb_DonHangId INT NOT NULL,
    Nvb_SanPhamId INT NOT NULL,
    Nvb_SoLuong INT NOT NULL,
    Nvb_GiaSanPham INT NOT NULL,
    Nvb_ThanhToan TINYINT NOT NULL, -- 0: Thanh toán sau, 1: Đã thanh toán

    CONSTRAINT FK_ChiTiet_DonHang FOREIGN KEY (Nvb_DonHangId) REFERENCES NVB_DONHANG(Nvb_DonHangId),
    CONSTRAINT FK_ChiTiet_SanPham FOREIGN KEY (Nvb_SanPhamId) REFERENCES NVB_SANPHAM(Nvb_SanPhamId)
);
