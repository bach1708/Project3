/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.100
 * Generated at: 2025-03-07 01:26:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Backend.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"vi\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>Đăng Nhập Admin</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"font-family: Arial, sans-serif; background-color: #f4f7fc; padding: 20px;\">\r\n");
      out.write("    <div style=\"max-width: 400px; margin: 0 auto; background-color: #fff; padding: 30px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\r\n");
      out.write("        <h2 style=\"text-align: center; color: #333;\">Đăng Nhập Admin</h2>\r\n");
      out.write("        <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Backend/User/adminLogin\" method=\"POST\">\r\n");
      out.write("            <div style=\"margin-bottom: 15px;\">\r\n");
      out.write("                <label for=\"username\" style=\"font-weight: bold; color: #555;\">Tên người dùng:</label>\r\n");
      out.write("                <input type=\"text\" id=\"username\" name=\"username\" required style=\"width: 100%; padding: 12px; font-size: 14px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div style=\"margin-bottom: 15px;\">\r\n");
      out.write("                <label for=\"password\" style=\"font-weight: bold; color: #555;\">Mật khẩu:</label>\r\n");
      out.write("                <input type=\"password\" id=\"password\" name=\"password\" required style=\"width: 100%; padding: 12px; font-size: 14px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;\">\r\n");
      out.write("            </div>\r\n");
      out.write("           <div style=\"text-align: center;\">\r\n");
      out.write("                <button type=\"submit\" style=\"width: 100%; padding: 12px; background-color: #1E90FF; color: white; font-size: 16px; border: none; border-radius: 4px; cursor: pointer;\">Đăng Nhập</button>\r\n");
      out.write("            </div>\r\n");
      out.write("        </form>\r\n");
      out.write("        <div style=\"text-align: center; margin-top: 15px;\">\r\n");
      out.write("            ");
      out.print( request.getAttribute("errorMessage") != null ? "<p style='color: red;'>" + request.getAttribute("errorMessage") + "</p>" : "" );
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Liên kết tới trang đăng nhập User -->\r\n");
      out.write("        <div style=\"text-align: center; margin-top: 20px;\">\r\n");
      out.write("            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Backend/User/userLogin.jsp\" style=\"text-decoration: none; color: #007bff; font-size: 14px;\">Đăng nhập với tài khoản User</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div style=\"text-align: center; margin-top: 20px;\">\r\n");
      out.write("            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Frontend/userLayout.jsp\" style=\"text-decoration: none; color: #007bff; font-size: 14px;\">Quay lại trang chủ</a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
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
