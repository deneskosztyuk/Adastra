<!DOCTYPE html>
<html>
<head>
    <title>Login - Adastra</title>
    <link rel="stylesheet" type="text/css" href="../cssDir/login.css">
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
            <h1>Login to Adastra</h1>
            <form action="login-handler.jsp" method="post">
                <div>
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Login</button>
                <div class="login">
                    <div class="register">
                        <br><a href="register.jsp"><button type="button" class="btn-register">Register Now</button> </a>
                    </div>
                    <button type="button" class="btn-google">Sign In with Google</button>
                    <button type="button" class="btn-link">Forgot Password?</button>
                </div>
            </form>
        </main>
    </div>
</div>
</body>
</html>
