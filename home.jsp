<!DOCTYPE html>
<html>

<head>
    <title>Adastra</title>
    <link rel="stylesheet" type="text/css" href="../cssDir/home.css">
    <!-- Add a title and a stylesheet to the page -->
</head>

<body>

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
        <h1>Welcome to Adastra</h1>
        <form>
            <input type="text" placeholder="Search the Solar System...">
            <button type="submit">Search</button>
        </form>
        <form action="planets.jsp" method="get">
            <button type="submit">Search All</button>
        </form>
    </main>

    <div class="bg-image">
        <img src="https://cdn.discordapp.com/attachments/934089727743787008/1092823596172324904/earthIMG.png" alt="Background Image style=margin-top: 100px;">
    </div>
</div>
</body>

</html>
