<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Error</title>
</head>
<body>
<h1>An error occurred while processing your request.</h1>
<p>Please try again later or contact the system administrator.</p>
<p><a href="home.jsp">Go back to the main page</a></p>
<p><%= request.getAttribute("errorMessage") %></p>
</body>
</html>
