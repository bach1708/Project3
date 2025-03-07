package Model;

public class SanPham {
	private int sanPhamId;
    private String tenSanPham;
    private String moTa;
    private String hinhAnh;
    private int gia;
    private int soLuong;
    private String danhMuc;

    public SanPham() {}
  
    public SanPham(int sanPhamId, String tenSanPham, String moTa, String hinhAnh, int gia, int soLuong, String danhMuc) {
        this.sanPhamId = sanPhamId;
        this.tenSanPham = tenSanPham;
        this.moTa = moTa;
        this.hinhAnh = hinhAnh;
        this.gia = gia;
        this.soLuong = soLuong;
        this.danhMuc = danhMuc;
    }
    public int getSanPhamId() { return sanPhamId; }
    public void setSanPhamId(int sanPhamId) { this.sanPhamId = sanPhamId; }
    public String getTenSanPham() { return tenSanPham; }
    public void setTenSanPham(String tenSanPham) { this.tenSanPham = tenSanPham; }
    public String getMoTa() { return moTa; }
    public void setMoTa(String moTa) { this.moTa = moTa; }
    public String getHinhAnh() { return hinhAnh; }
    public void setHinhAnh(String hinhAnh) { this.hinhAnh = hinhAnh; }
    public int getGia() { return gia; }
    public void setGia(int gia) { this.gia = gia; }
    public int getSoLuong() { return soLuong; }
    public void setSoLuong(int soLuong) { this.soLuong = soLuong; }
    public String getDanhMuc() { return danhMuc; }
    public void setDanhMuc(String danhMuc) { this.danhMuc = danhMuc; }

    @Override
    public String toString() {
        return "SanPham{" +
                "sanPhamId=" + sanPhamId +
                ", tenSanPham='" + tenSanPham + '\'' +
                ", moTa='" + moTa + '\'' +
                ", hinhAnh='" + hinhAnh + '\'' +
                ", gia=" + gia +
                ", soLuong=" + soLuong +
                ", danhMuc='" + danhMuc + '\'' +
                '}';
    }
}
