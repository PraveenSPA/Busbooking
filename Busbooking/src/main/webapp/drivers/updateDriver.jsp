<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../dbc.jsp" %>
<%
    int id = Integer.parseInt(request.getParameter("driver_id"));
    String name = request.getParameter("name");
    String license = request.getParameter("license_number");
    String phone = request.getParameter("phone");
    String dob = request.getParameter("date_of_birth");
    String joining = request.getParameter("joining_date");

    PreparedStatement ps = conn.prepareStatement(
        "UPDATE drivers SET name=?, license_number=?, phone=?, date_of_birth=?, joining_date=? WHERE driver_id=?"
    );
    ps.setString(1, name);
    ps.setString(2, license);
    ps.setString(3, phone);
    ps.setDate(4, java.sql.Date.valueOf(dob));
    ps.setDate(5, java.sql.Date.valueOf(joining));
    ps.setInt(6, id);
    ps.executeUpdate();

    response.sendRedirect("listDrivers.jsp");
%>
