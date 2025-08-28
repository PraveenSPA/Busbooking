<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ include file="../dbc.jsp" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    PreparedStatement ps = conn.prepareStatement("SELECT * FROM buses WHERE bus_id=?");
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
%>
<h2>Edit Bus</h2>
<form action="updateBus.jsp" method="post">
    <input type="hidden" name="bus_id" value="<%= rs.getInt("bus_id") %>">
    Bus Number: <input type="text" name="bus_number" value="<%= rs.getString("bus_number") %>" required><br><br>
    Bus Model: <input type="text" name="bus_model" value="<%= rs.getString("bus_model") %>" required><br><br>
    Total Seats: <input type="number" name="total_seats" value="<%= rs.getInt("total_seats") %>" required><br><br>
    Category:
    <select name="category" required>
        <option <%= rs.getString("category").equals("AC") ? "selected" : "" %>>AC</option>
        <option <%= rs.getString("category").equals("Non-AC") ? "selected" : "" %>>Non-AC</option>
    </select><br><br>
    Seat Type:
    <select name="seat_type" required>
        <option <%= rs.getString("seat_type").equals("Seater") ? "selected" : "" %>>Seater</option>
        <option <%= rs.getString("seat_type").equals("Sleeper") ? "selected" : "" %>>Sleeper</option>
        <option <%= rs.getString("seat_type").equals("Semi-Sleeper") ? "selected" : "" %>>Semi-Sleeper</option>
        <option <%= rs.getString("seat_type").equals("Mixed") ? "selected" : "" %>>Mixed</option>
    </select><br><br>
    <input type="submit" value="Update Bus">
</form>
<%
    }
%>
<a href="listBuses.jsp">⬅️ Back</a>
    