<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Bus</title>
</head>
<body>
    <h2>Add New Bus</h2>
    <form action="insertBus.jsp" method="post">
        Bus Number: <input type="text" name="bus_number" required><br><br>
        Bus Model: <input type="text" name="bus_model" required><br><br>
        Total Seats: <input type="number" name="total_seats" required><br><br>
        Category:
        <select name="category" required>
            <option value="AC">AC</option>
            <option value="Non-AC">Non-AC</option>
        </select><br><br>
        Seat Type:
        <select name="seat_type" required>
            <option value="Seater">Seater</option>
            <option value="Sleeper">Sleeper</option>
            <option value="Semi-Sleeper">Semi-Sleeper</option>
            <option value="Mixed">Mixed</option>
        </select><br><br>
        <input type="submit" value="Add Bus">
    </form>
    <br>
    <a href="listBuses.jsp">Back to List</a>
</body>
</html>
    