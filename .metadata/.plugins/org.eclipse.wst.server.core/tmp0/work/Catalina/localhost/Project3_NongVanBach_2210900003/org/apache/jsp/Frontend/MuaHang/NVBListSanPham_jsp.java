/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.100
 * Generated at: 2025-03-19 13:10:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Frontend.MuaHang;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import DAO.SanPhamDAO;
import Model.SanPham;

public final class NVBListSanPham_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/Frontend/Layout2/footer2.jsp", Long.valueOf(1742378457030L));
    _jspx_dependants.put("/Frontend/Layout2/header2.jsp", Long.valueOf(1742380112405L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.LinkedHashSet<>(4);
    _jspx_imports_classes.add("DAO.SanPhamDAO");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("Model.SanPham");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"vi\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>Danh Sách Sản Phẩm Văn Phòng Phẩm</title>\r\n");
      out.write("   <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Frontend/MuaHang/cssListSanPham.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Frontend/Layout2/cssHeader.css\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"header\">\r\n");
      out.write("    <div class=\"logo\">\r\n");
      out.write("        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/logopage1.png\" alt=\"Logo\">\r\n");
      out.write("        User 🛒\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Form tìm kiếm -->\r\n");
      out.write("    <nav>\r\n");
      out.write("        <form action=\"#\" method=\"GET\" class=\"search-bar\" style=\"flex-grow: 1; display: flex; justify-content: center;\">\r\n");
      out.write("            <input type=\"text\" name=\"search\" placeholder=\"Tìm kiếm sản phẩm...\" />\r\n");
      out.write("            <button type=\"submit\"><i class=\"fa-solid fa-magnifying-glass\"></i></button>\r\n");
      out.write("        </form>\r\n");
      out.write("\r\n");
      out.write("        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Frontend/userLayout.jsp\">Trang Chủ</a>\r\n");
      out.write("        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Frontend/MuaHang/NVBListSanPham.jsp\">Sản Phẩm</a>\r\n");
      out.write("        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Frontend/MuaHang/NVBGioHang.jsp\">Giỏ Hàng</a>\r\n");
      out.write("\r\n");
      out.write("        ");

            String username = (String) session.getAttribute("username");
            if (username != null) { // Nếu đã đăng nhập
        
      out.write("\r\n");
      out.write("            <span class=\"username\">Chào, ");
      out.print( username );
      out.write("!</span>\r\n");
      out.write("            <a href=\"");
      out.print( request.getContextPath() + "/Backend/User/logout" );
      out.write("\" style=\"padding: 10px; background-color: #ff4d4d; color: white; border-radius: 4px;\">Đăng Xuất</a>\r\n");
      out.write("        ");

            } else { // Nếu chưa đăng nhập
        
      out.write("\r\n");
      out.write("            <a href=\"");
      out.print( request.getContextPath() + "/Backend/User/userLogin.jsp" );
      out.write("\" style=\"padding: 10px; background-color: #4CAF50; color: white; border-radius: 4px;\">Đăng Nhập</a>\r\n");
      out.write("        ");

            }
        
      out.write("\r\n");
      out.write("    </nav>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("    <section>\r\n");
      out.write("        <h2 class=\"title\" style=padding-top:70px;>Danh Sách Sản Phẩm</h2>\r\n");
      out.write("        <div class=\"product-container\">\r\n");
      out.write("            ");
 
            SanPhamDAO dao = new SanPhamDAO();
            List<SanPham> sanPhamList = dao.getAllSanPham();  
            
            if (sanPhamList != null && !sanPhamList.isEmpty()) {
                for (SanPham sp : sanPhamList) {
            
      out.write("\r\n");
      out.write("                <div class=\"product-card\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/");
      out.print( sp.getHinhAnh() );
      out.write("\" alt=\"");
      out.print( sp.getTenSanPham() );
      out.write("\" class=\"product-image\">\r\n");
      out.write("                    <h3 class=\"product-title\">");
      out.print( sp.getTenSanPham() );
      out.write("</h3>\r\n");
      out.write("                    <p class=\"product-info\">Mã: ");
      out.print( sp.getSanPhamId() );
      out.write("</p>\r\n");
      out.write("                    <p class=\"product-info\">Giá: ");
      out.print( sp.getGia() );
      out.write(" VND</p>\r\n");
      out.write("                    <p class=\"product-info\">Số Lượng Còn: ");
      out.print( sp.getSoLuong() );
      out.write(" Cái</p>\r\n");
      out.write("                    <p class=\"product-info\">Danh Mục: ");
      out.print( sp.getDanhMuc() );
      out.write("</p>\r\n");
      out.write("                    <p class=\"product-info\">Mô Tả: ");
      out.print( sp.getMoTa() );
      out.write("</p>\r\n");
      out.write("                    <div class=\"button-container\">\r\n");
      out.write("					    <a href=\"");
      out.print( request.getContextPath() );
      out.write("/NVBGioHang?action=add&id=");
      out.print( sp.getSanPhamId() );
      out.write("&soLuong=1\" class=\"add-to-cart\">\r\n");
      out.write("					        Thêm vào giỏ\r\n");
      out.write("					    </a>\r\n");
      out.write("					</div>\r\n");
      out.write("                </div>\r\n");
      out.write("            ");
 
                }
            } else { 
            
      out.write("\r\n");
      out.write("                <p class=\"no-product\">Không có sản phẩm nào để hiển thị.</p>\r\n");
      out.write("            ");
 
            } 
            
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>	\r\n");
      out.write("        <div class=\"back-container\">\r\n");
      out.write("            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Backend/trangChu.jsp\" class=\"btn-back\">Quay lại trang chủ</a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Frontend/Layout2/cssFooter.css\">\r\n");
      out.write("<div class=\"footer\">\r\n");
      out.write("    <p>&copy; 2025 Cửa Hàng Đồ Dùng Văn Phòng & Học Tập - Nông Văn Bách</p>\r\n");
      out.write("    <p>Website Quản Lý Văn Phòng Phẩm - Liên hệ: 0387387894</p>\r\n");
      out.write("</div>\r\n");
      out.write("    \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
