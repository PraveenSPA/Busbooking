<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ include file="../dbc.jsp" %>
<%
    String busNumber = request.getParameter("bus_number");
    String busModel = request.getParameter("bus_model");
    int totalSeats = Integer.parseInt(request.getParameter("total_seats"));
    String category = request.getParameter("category");
    String seatType = request.getParameter("seat_type");

    try {
        PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO buses (bus_number, bus_model, total_seats, category, seat_type) VALUES (?, ?, ?, ?, ?)"
        );
        ps.setString(1, busNumber);
        ps.setString(2, busModel);
        ps.setInt(3, totalSeats);
        ps.setString(4, category);
        ps.setString(5, seatType);
        ps.executeUpdate();

        response.sendRedirect("listBuses.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
   