<%@ page import="com.example.adastra_tomcat.Planet" %>
<%@ page import="com.example.adastra_tomcat.PlanetDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Planets</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/cssDir/planets.css">
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
    <h2>Planets</h2>
    <a href="addPlanet.jsp" class="button">Add a new Planet or Space Object</a>
    <table>
      <thead>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Price</th>
        <th>Distance From Earth</th>
        <th>Number Of Moons</th>
        <th>Mass(kg)</th>
        <th>Diameter(km)</th>
        <th>Surface temperature (C)</th>
        <th>Orbital Period (days)</th>
      </tr>
      </thead>

      <tbody>
      <%!
        private List<Planet> getPlanets() {
          PlanetDAO planetDAO = new PlanetDAO();
          List<Planet> planets = null;
          try {
            planets = planetDAO.getAllPlanets();
          } catch (SQLException e) {
            System.err.println("Error in planets.jsp: " + e.getMessage());
            e.printStackTrace();
          }
          return planets;
        }
      %>
      <%
        List<Planet> planets = getPlanets();
        if (planets != null) {
          for (Planet planet : planets) {
            out.println("<tr>");
            out.println("<td>" + planet.getName() + "</td>");
            out.println("<td>" + planet.getType() + "</td>");
            out.println("<td>" + planet.getPrice() + "</td>");
            out.println("<td>" + planet.getDistanceFromEarth() + "</td>");
            out.println("<td>" + planet.getNumberOfMoons() + "</td>");
            out.println("<td>" + planet.getMass() + "</td>");
            out.println("<td>" + planet.getSizeDiameter() + "</td>");
            out.println("<td>" + planet.getSurfaceTemperature() + "</td>");
            out.println("<td>" + planet.getOrbitalPeriod() + "</td>");
            out.println("</tr>");
          }
        } else {
          out.println("<tr><td colspan='9'>No planets found</td></tr>");
        }
      %>
      </tbody>
    </table>
  </main>
</div>
<footer>
  <p>&copy; 2023 Adastra</p>
</footer>
</body>
</html>
