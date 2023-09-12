<!DOCTYPE html>
<html>
<head>
    <title>Register - Adastra</title>
    <link rel="stylesheet" type="text/css" href="../cssDir/register.css">
    <!-- Add any additional CSS or JS files here -->
    <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            if (password.length < 16) {
                alert("Password must be at least 8 characters long.");
                return false;
            }
            return true;
        }
    </script>

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
                    <!-- This list item is marked as active to show the current page -->
                    <li class="active"><a href="register.jsp">Register</a></li>
                    <li><a href="about.jsp">About</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <h1>Register to Adastra</h1>
            <form action="register" method="post" onsubmit="return validateForm()">
                <div>
                    <label for="name">Username:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Register</button>
            </form>
            <div class="login">
                <div class="register">
                    <br><a href="login.jsp"><button type="button" class="btn-login">Login Now</button> </a>
                </div>
                <!-- Buttons to allow users to sign up or login with other services -->
                <button type="button" class="btn-google">Sign In with Google</button>
                <button type="button" class="btn-link">Forgot Password?</button>
            </div>
        </main>
    </div>
</div>
</body>
</html>
