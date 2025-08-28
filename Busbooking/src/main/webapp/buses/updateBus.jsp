
<%@ include file="../dbc.jsp" %>
<%
    int id = Integer.parseInt(request.getParameter("bus_id"));
    String busNumber = request.getParameter("bus_number");
    String busModel = request.getParameter("bus_model");
    int totalSeats = Integer.parseInt(request.getParameter("total_seats"));
    String category = request.getParameter("category");
    String seatType = request.getParameter("seat_type");

    try {
        PreparedStatement ps = conn.prepareStatement(
            "UPDATE buses SET bus_number=?, bus_model=?, total_seats=?, category=?, seat_type=? WHERE bus_id=?"
        );
        ps.setString(1, busNumber);
        ps.setString(2, busModel);
        ps.setInt(3, totalSeats);
        ps.setString(4, category);
        ps.setString(5, seatType);
        ps.setInt(6, id);
        ps.executeUpdate();

        response.sendRedirect("listBuses.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
