package Controller;

import java.io.IOException;
import java.sql.*;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Model.NVBCartItem;

@WebServlet("/NVBThanhToan")
public class NVBThanhToan extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Phương thức kết nối đến CSDL MySQL
    private Connection connect() throws SQLException, ClassNotFoundException {
        String url = "jdbc:mysql://localhost:3306/k22cnt1_nongvanbach_2210900003_project3?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        String user = "root";
        String password = "";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, user, password);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hoTen = request.getParameter("hoTen");
        String soDienThoai = request.getParameter("soDienThoai");
        String diaChi = request.getParameter("diaChi");
        
        HttpSession session = request.getSession();
        List<NVBCartItem> gioHang = (List<NVBCartItem>) session.getAttribute("gioHang");
        if (gioHang == null || gioHang.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/Frontend/userLayout.jsp");
            return;
        }
        
        int tongTien = gioHang.stream().mapToInt(NVBCartItem::getTongTien).sum();
        Integer khachHangId = (session.getAttribute("user") != null) ? (Integer) session.getAttribute("userId") : null;
        Integer khachVangLaiId = (khachHangId == null) ? saveGuestCustomer(hoTen, soDienThoai, diaChi) : null;
        
        try (Connection conn = connect()) {
            conn.setAutoCommit(false);
            
            int donHangId = insertOrder(conn, khachHangId, khachVangLaiId, tongTien);
            if (donHangId != -1) {
                insertOrderDetails(conn, donHangId, gioHang);
            }
            
            conn.commit();
            session.removeAttribute("gioHang");
            response.sendRedirect(request.getContextPath() + "/Frontend/userLayout.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private Integer saveGuestCustomer(String hoTen, String soDienThoai, String diaChi) {
        try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(
                "INSERT INTO NVB_KHACHVANGLAI (Nvb_HoTen, Nvb_SoDienThoai, Nvb_DiaChi) VALUES (?, ?, ?)",
                Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, hoTen);
            stmt.setString(2, soDienThoai);
            stmt.setString(3, diaChi);
            stmt.executeUpdate();
            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    private int insertOrder(Connection conn, Integer khachHangId, Integer khachVangLaiId, int tongTien) throws SQLException {
        String query = "INSERT INTO NVB_DONHANG (Nvb_KhachHangId, Nvb_KhachVangLaiId, Nvb_TongTien, Nvb_TrangThai) VALUES (?, ?, ?, 1)";
        try (PreparedStatement stmt = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setObject(1, khachHangId, Types.INTEGER);
            stmt.setObject(2, khachVangLaiId, Types.INTEGER);
            stmt.setInt(3, tongTien);
            stmt.executeUpdate();
            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                }
            }
        }
        return -1;
    }
    
    private void insertOrderDetails(Connection conn, int donHangId, List<NVBCartItem> gioHang) throws SQLException {
        String query = "INSERT INTO NVB_CHITIETDONHANG (Nvb_DonHangId, Nvb_SanPhamId, Nvb_SoLuong, Nvb_GiaSanPham, Nvb_ThanhToan) VALUES (?, ?, ?, ?, 0)";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            for (NVBCartItem item : gioHang) {
                stmt.setInt(1, donHangId);
                stmt.setInt(2, item.getSanPhamId());
                stmt.setInt(3, item.getSoLuong());
                stmt.setInt(4, item.getGia());
                stmt.addBatch();
            }
            stmt.executeBatch();
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
