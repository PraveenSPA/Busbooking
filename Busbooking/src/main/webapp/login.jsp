<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Bus Booking</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin-top: 80px; }
        form { background: #f2f2f2; display: inline-block; padding: 20px; border-radius: 10px; }
        input, select { margin: 10px; padding: 8px; width: 250px; }
        input[type=submit] { background: #007bff; color: white; border: none; cursor: pointer; }
        input[type=submit]:hover { background: #0056b3; }
    </style>
</head>
<body>
    <h2>Login</h2>
    <form action="checkLogin.jsp" method="post">
        <input type="text" name="username" placeholder="Enter Username" required><br>
        <input type="email" name="email" placeholder="Enter Email" required><br>
        <input type="password" name="password" placeholder="Enter Password" required><br>
        <select name="role" required>
            <option value="admin">Admin</option>
            <option value="user">User</option>
        </select><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
