<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/bus_booking";
    String dbUser = "root";
    String dbPassword = "praveen";

    Connection conn = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
    } catch (Exception e) {
        out.println("Database connection failed: " + e.getMessage());
    }
%>
