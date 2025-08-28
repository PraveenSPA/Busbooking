<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../dbc.jsp" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    PreparedStatement ps = conn.prepareStatement("SELECT * FROM drivers WHERE driver_id=?");
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
%>
<h2>Edit Driver</h2>
<form action="updateDriver.jsp" method="post">
    <input type="hidden" name="driver_id" value="<%= rs.getInt("driver_id") %>">

    Name: <input type="text" name="name" value="<%= rs.getString("name") %>" required><br><br>

    License Number: <input type="text" name="license_number" value="<%= rs.getString("license_number") %>" required><br><br>

    Phone: <input type="text" name="phone" value="<%= rs.getString("phone") %>"><br><br>

    Date of Birth: <input type="date" name="date_of_birth" value="<%= rs.getDate("date_of_birth") %>"><br><br>

    Joining Date: <input type="date" name="joining_date" value="<%= rs.getDate("joining_date") %>"><br><br>

    <input type="submit" value="Update Driver">
</form>
<%
    }
%>
<a href="index.jsp">⬅️ Back</a>
