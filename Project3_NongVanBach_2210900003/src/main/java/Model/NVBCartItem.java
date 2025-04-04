package Model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NVBCartItem")
public class NVBCartItem extends HttpServlet {
    private int sanPhamId;
    private String tenSanPham;
    private int gia;
    private int soLuong;
    private String hinhAnh; 

    public NVBCartItem() {}

    public NVBCartItem(int sanPhamId, String tenSanPham, int gia, int soLuong, String hinhAnh) {
        this.sanPhamId = sanPhamId;
        this.tenSanPham = tenSanPham;
        this.gia = gia;
        this.soLuong = soLuong;
        this.hinhAnh = hinhAnh;
    }

    public int getSanPhamId() {
        return sanPhamId;
    }

    public void setSanPhamId(int sanPhamId) {
        this.sanPhamId = sanPhamId;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getHinhAnh() { // Getter cho hinhAnh
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) { // Setter cho hinhAnh
        this.hinhAnh = hinhAnh;
    }

    // Tính tổng tiền cho một đơn hàng
    public int getTongTien() {
        return gia * soLuong;
    }
}
