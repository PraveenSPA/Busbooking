<!DOCTYPE html>
<html>
<head><title>Add Bus</title></head>
<body>
    <h2>Add New Bus</h2>
    <form action="insertBus.jsp" method="post">
        Bus Number: <input type="text" name="bus_number" required><br><br>

        Bus Model: <input type="text" name="bus_model" placeholder="Volvo/Deluxe/Express/etc" required><br><br>

        Category (AC/Non-AC): 
        <select name="category">
            <option value="AC">AC</option>
            <option value="Non-AC">Non-AC</option>
        </select><br><br>

        Seat Type: 
        <select name="seat_type">
            <option value="Seater">Seater</option>
            <option value="Sleeper">Sleeper</option>
            <option value="Semi-Sleeper">Semi-Sleeper</option>
            <option value="Mixed">Mixed</option>
        </select><br><br>

        Total Seats: <input type="number" name="total_seats" required><br><br>

        <input type="submit" value="Add Bus">
    </form>
</body>
</html>

