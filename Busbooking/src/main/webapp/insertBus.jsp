<%@ include file="dbc.jsp" %>
<%
    String number = request.getParameter("bus_number");
    String model = request.getParameter("bus_model");
    String category = request.getParameter("category");
    String seatType = request.getParameter("seat_type");
    int capacity = Integer.parseInt(request.getParameter("total_seats"));

    try {
        PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO buses (bus_number, bus_model, category, seat_type, total_seats) VALUES (?, ?, ?, ?, ?)"
        );
        ps.setString(1, number);
        ps.setString(2, model);
        ps.setString(3, category);
        ps.setString(4, seatType);
        ps.setInt(5, capacity);

        ps.executeUpdate();
        out.println("<h3>✅ Bus added successfully!</h3>");
        out.println("<a href='listbuses.jsp'>View Buses</a>");
    } catch (Exception e) {
        out.println("❌ Error: " + e.getMessage());
    }
%>


