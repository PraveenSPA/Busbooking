<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
<h2>Add New Driver</h2>

<!-- Include database connection -->
<%@ include file="../dbc.jsp" %> <!-- adjust path if needed -->

<%
    // When the form is submitted
    if (request.getParameter("submit") != null) {
        String name = request.getParameter("name");
        String license = request.getParameter("license_number");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("date_of_birth");
        String joining = request.getParameter("joining_date");

        PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO drivers(name, license_number, phone, date_of_birth, joining_date) VALUES (?,?,?,?,?)"
        );
        ps.setString(1, name);
        ps.setString(2, license);
        ps.setString(3, phone);

        if (dob != null && !dob.isEmpty())
            ps.setDate(4, java.sql.Date.valueOf(dob));
        else
            ps.setNull(4, java.sql.Types.DATE);

        if (joining != null && !joining.isEmpty())
            ps.setDate(5, java.sql.Date.valueOf(joining));
        else
            ps.setNull(5, java.sql.Types.DATE);

        ps.executeUpdate();
        ps.close();
        conn.close();

        // Redirect back to driver list after adding
        response.sendRedirect("listDrivers.jsp");
    }
%>

<form method="post">
    Name: <input type="text" name="name" required><br><br>
    License Number: <input type="text" name="license_number" required><br><br>
    Phone: <input type="text" name="phone"><br><br>
    Date of Birth: <input type="date" name="date_of_birth"><br><br>
    Joining Date: <input type="date" name="joining_date"><br><br>
    <input type="submit" name="submit" value="Add Driver">
</form>

<br>
<a href="listDrivers.jsp">⬅️ Back to Driver List</a>
</body>
</html>

