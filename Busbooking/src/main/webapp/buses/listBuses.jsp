<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../dbc.jsp" %>
<%
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM buses");
%>
<h2>All Buses</h2>
<a href="addBus.jsp">➕ Add New Bus</a>
<table border="1" cellpadding="8">
    <tr>
        <th>ID</th>
        <th>Number</th>
        <th>Model</th>
        <th>Total Seats</th>
        <th>Category</th>
        <th>Seat Type</th>
        <th>Actions</th>
    </tr>
<%
    while (rs.next()) {
%>
    <tr>
        <td><%= rs.getInt("bus_id") %></td>
        <td><%= rs.getString("bus_number") %></td>
        <td><%= rs.getString("bus_model") %></td>
        <td><%= rs.getInt("total_seats") %></td>
        <td><%= rs.getString("category") %></td>
        <td><%= rs.getString("seat_type") %></td>
        <td>
            <a href="editBus.jsp?id=<%= rs.getInt("bus_id") %>">✏️ Edit</a> |
            <a href="deleteBus.jsp?id=<%= rs.getInt("bus_id") %>" 
               onclick="return confirm('Are you sure to delete this bus?');">🗑️ Delete</a>
        </td>
    </tr>
<%
    }
%>
</table>
<br>
<a href="../index.jsp">🏠 Back to Home</a>
    