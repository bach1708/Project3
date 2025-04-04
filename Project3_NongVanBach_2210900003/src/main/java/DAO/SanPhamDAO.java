package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SanPham;


@WebServlet("/SanPhamDAO")
public class SanPhamDAO extends HttpServlet {
	private String url = "jdbc:mysql://localhost:3306/k22cnt1_nongvanbach_2210900003_project3"; 
    private String username = "root"; 
    private String password = ""; 

    public Connection connect() throws SQLException {
        try {
            // Đăng ký Driver MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("Không tìm thấy Driver MySQL", e);
        }
        return DriverManager.getConnection(url, username, password);}
        // Phương thức lấy tất cả sản phẩm từ cơ sở dữ liệu
        public List<SanPham> getAllSanPham() {
            List<SanPham> sanPhamList = new ArrayList<>();
            String query = "SELECT * FROM NVB_SANPHAM";  // Câu lệnh SQL lấy tất cả sản phẩm

            try (Connection connection = connect();
                 Statement statement = connection.createStatement();
                 ResultSet resultSet = statement.executeQuery(query)) {

                // Duyệt qua kết quả truy vấn và thêm vào danh sách
                while (resultSet.next()) {
                    SanPham sp = new SanPham();
                    sp.setSanPhamId(resultSet.getInt("Nvb_SanPhamId"));
                    sp.setTenSanPham(resultSet.getString("Nvb_TenSanPham"));
                    sp.setMoTa(resultSet.getString("Nvb_MoTa"));
                    sp.setHinhAnh(resultSet.getString("Nvb_HinhAnh"));
                    sp.setGia(resultSet.getInt("Nvb_Gia"));
                    sp.setSoLuong(resultSet.getInt("Nvb_SoLuong"));
                    sp.setDanhMuc(resultSet.getString("Nvb_DanhMuc"));

                    sanPhamList.add(sp);  // Thêm sản phẩm vào danh sách
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
            return sanPhamList;  // Trả về danh sách các sản phẩm
        }
        public void addSanPham(SanPham sp) {
            // Câu lệnh SQL để thêm sản phẩm vào cơ sở dữ liệu
            String query = "INSERT INTO NVB_SANPHAM (Nvb_TenSanPham, Nvb_MoTa, Nvb_HinhAnh, Nvb_Gia, Nvb_SoLuong, Nvb_DanhMuc) VALUES (?, ?, ?, ?, ?, ?)";
            
            try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(query)) {
                
                // Thiết lập các tham số trong câu lệnh SQL từ đối tượng SanPham
                stmt.setString(1, sp.getTenSanPham()); // Tên sản phẩm
                stmt.setString(2, sp.getMoTa()); // Mô tả sản phẩm
                stmt.setString(3, sp.getHinhAnh()); // Hình ảnh sản phẩm
                stmt.setInt(4, sp.getGia()); // Giá sản phẩm
                stmt.setInt(5, sp.getSoLuong()); // Số lượng sản phẩm
                stmt.setString(6, sp.getDanhMuc()); // Danh mục sản phẩm
                
                // Thực hiện câu lệnh SQL để thêm dữ liệu vào cơ sở dữ liệu
                stmt.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
     // Xóa sản phẩm theo Nvb_SanPhamId
        public void deleteSanPham(int sanPhamId) {
            String query = "DELETE FROM NVB_SANPHAM WHERE Nvb_SanPhamId = ?";
            try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(query)) {
                stmt.setInt(1, sanPhamId); // Sử dụng Nvb_SanPhamId thay vì MaSP
                stmt.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        public SanPham getSanPhamById(int sanPhamId) {
            String query = "SELECT * FROM NVB_SANPHAM WHERE Nvb_SanPhamId = ?";
            try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(query)) {
                stmt.setInt(1, sanPhamId);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        String tenSanPham = rs.getString("Nvb_TenSanPham");
                        String moTa = rs.getString("Nvb_MoTa");
                        String hinhAnh = rs.getString("Nvb_HinhAnh");
                        int gia = rs.getInt("Nvb_Gia");
                        int soLuong = rs.getInt("Nvb_SoLuong");
                        String danhMuc = rs.getString("Nvb_DanhMuc");

                        return new SanPham(sanPhamId, tenSanPham, moTa, hinhAnh, gia, soLuong, danhMuc);
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return null;
        }

        public void updateSanPham(SanPham sp) {
            String query = "UPDATE NVB_SANPHAM SET Nvb_TenSanPham = ?, Nvb_MoTa = ?, Nvb_HinhAnh = ?, Nvb_Gia = ?, Nvb_SoLuong = ?, Nvb_DanhMuc = ? WHERE Nvb_SanPhamId = ?";
            try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(query)) {
                stmt.setString(1, sp.getTenSanPham());
                stmt.setString(2, sp.getMoTa());
                stmt.setString(3, sp.getHinhAnh());
                stmt.setInt(4, sp.getGia());  // Kiểm tra nếu giá đã thực sự được cập nhật
                stmt.setInt(5, sp.getSoLuong());
                stmt.setString(6, sp.getDanhMuc());
                stmt.setInt(7, sp.getSanPhamId());  // Chắc chắn rằng ID đúng

                stmt.executeUpdate();  // Kiểm tra xem lệnh có được thực thi hay không
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


}