<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bus Booking Management System</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; text-align: center; }
        h1 { background: #007bff; color: white; padding: 20px; }
        .menu { margin: 30px auto; width: 50%; }
        .menu ul { list-style: none; padding: 0; }
        .menu li { background: white; margin: 10px 0; padding: 15px; border-radius: 8px; }
        .menu a { text-decoration: none; font-size: 18px; font-weight: bold; color: #007bff; }
        .menu a:hover { color: #0056b3; }
    </style>
</head>
<body>
    <h1>🚍 Bus Booking Management System</h1>

    <div class="menu">
        <ul>
            <li><a href="buses/listBuses.jsp">🚌 Manage Buses</a></li>
            <li><a href="drivers/listDrivers.jsp">👨‍✈️ Manage Drivers</a></li>
            <li><a href="routes/listRoutes.jsp">🛣️ Manage Routes</a></li>
            <li><a href="schedules/listSchedules.jsp">📅 Manage Schedules</a></li>
            <li><a href="users/listUsers.jsp">👤 Manage Users</a></li>
        </ul>
    </div>
</body>
</html>











