<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking System</title>
    <link rel="stylesheet" type="text/css" href="../cssDir/book.css">
</head>
<body>
<div class="bg-image">
    <div class="container">
        <header>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="book.jsp">Book a flight</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="about.jsp">About</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <h1>Booking System</h1>
            <form method="POST" action="book.jsp">
                <div class="form-row">
                    <div class="form-group">
                        <label for="customerName">Name:</label>
                        <input type="text" id="customerName" name="customerName" required>
                    </div>
                    <div class="form-group">
                        <label for="flightNumber">Flight Number:</label>
                        <select id="flightNumber" name="flightNumber">
                            <option value="FS001">FS001</option>
                            <option value="FS002">FS002</option>
                            <option value="FS003">FS003</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label for="departureDate">Departure Date:</label>
                        <input type="date" id="departureDate" name="departureDate" required>
                    </div>
                    <div class="form-group">
                        <label for="departureTime">Departure Time:</label>
                        <input type="time" id="departureTime" name="departureTime" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label for="seats">Number of Seats:</label>
                        <input type="number" id="seats" name="seats" min="1" max="10" required>
                    </div>
                </div>
                <input type="submit" value="Book Now">
            </form>
        </main>
    </div>
</div>
</body>
</html>
