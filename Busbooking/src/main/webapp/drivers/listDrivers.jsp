<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers List</title>
</head>
<body>
<h2>Drivers List</h2>
<a href="addDriver.jsp">Add New Driver</a>
<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License</th>
        <th>Phone</th>
        <th>DOB</th>
        <th>Joining Date</th>
        <th>Actions</th>
    </tr>
    <%
        // Include DB connection
        %><%@ include file="../dbc.jsp" %><%

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM drivers");

        while(rs.next()){
    %>
    <tr>
        <td><%= rs.getInt("driver_id") %></td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("license_number") %></td>
        <td><%= rs.getString("phone") %></td>
        <td><%= rs.getDate("date_of_birth") %></td>
        <td><%= rs.getDate("joining_date") %></td>
        <td>
            <a href="editDriver.jsp?id=<%=rs.getInt("driver_id")%>">Edit</a> | 
            <a href="deleteDriver.jsp?id=<%=rs.getInt("driver_id")%>" 
               onclick="return confirm('Are you sure you want to delete this driver?');">Delete</a>
        </td>
    </tr>
    <%
        }
        rs.close();
        stmt.close();
        conn.close();
    %>
</table>
</body>
</html>
