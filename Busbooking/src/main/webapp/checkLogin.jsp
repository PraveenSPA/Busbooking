<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String role = request.getParameter("role");

    if ("admin".equals(role)) {
        response.sendRedirect("index.jsp");  // Admin homepage
    } else {
        response.sendRedirect("userHome.jsp");  // User homepage
    }
%>
