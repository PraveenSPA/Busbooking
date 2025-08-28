<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));

    // Include DB connection
    %><%@ include file="../dbc.jsp" %><%

    PreparedStatement ps = conn.prepareStatement("DELETE FROM drivers WHERE driver_id=?");
    ps.setInt(1, id);
    ps.executeUpdate();

    ps.close();
    conn.close();

    // Redirect back to driver list after deletion
    response.sendRedirect("listDrivers.jsp");
%>

