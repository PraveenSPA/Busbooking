<%@ include file="dbc.jsp" %>
<%
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM buses");
%>
<h2>All Buses</h2>
<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>Bus ID</th>
        <th>Bus Number</th>
        <th>Bus Model</th>
        <th>Category</th>
        <th>Seat Type</th>
        <th>Total Seats</th>
    </tr>
    <%
        while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("bus_id") %></td>
        <td><%= rs.getString("bus_number") %></td>
        <td><%= rs.getString("bus_model") %></td>
        <td><%= rs.getString("category") %></td>
        <td><%= rs.getString("seat_type") %></td>
        <td><%= rs.getInt("total_seats") %></td>
    </tr>
    <%
        }
    %>
</table>
<a href="index.jsp">Back to Home</a>

