package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.NVBKhachHang;

public class NVBKhachHangDAO {

    private String url = "jdbc:mysql://localhost:3306/k22cnt1_nongvanbach_2210900003_project3";
    private String dbUser = "root";
    private String dbPassword = "";
    
    public Connection connect() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch(ClassNotFoundException e) {
            throw new SQLException("Không tìm thấy Driver MySQL", e);
        }
        return DriverManager.getConnection(url, dbUser, dbPassword);
    }
    
    // Phương thức đăng ký khách hàng
    public boolean NVBDangKy (NVBKhachHang kh) {
        String query = "INSERT INTO NVB_KHACHHANG (Nvb_TaiKhoan, Nvb_HoTen, Nvb_SoDienThoai, Nvb_DiaChi, Nvb_Email, Nvb_MatKhau) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, kh.getTaiKhoan());
            stmt.setString(2, kh.getHoTen());
            stmt.setString(3, kh.getSoDienThoai());
            stmt.setString(4, kh.getDiaChi());
            stmt.setString(5, kh.getEmail());
            stmt.setString(6, kh.getMatKhau());
            
            int rows = stmt.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

	public boolean registerKhachHang(NVBKhachHang kh) {
		// TODO Auto-generated method stub
		return false;
	}
}
