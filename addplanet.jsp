<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Planet</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/cssDir/addPlanet.css">
    <script>
        function validateForm() {
            const name = document.forms["addPlanetForm"]["name"].value.trim();
            const type = document.forms["addPlanetForm"]["type"].value.trim();
            const price = document.forms["addPlanetForm"]["price"].value.trim();
            const distance = document.forms["addPlanetForm"]["distance"].value.trim();
            const moons = document.forms["addPlanetForm"]["moons"].value.trim();
            const mass = document.forms["addPlanetForm"]["mass"].value.trim();
            const size = document.forms["addPlanetForm"]["size"].value.trim();
            const temperature = document.forms["addPlanetForm"]["temperature"].value.trim();
            const orbitalPeriod = document.forms["addPlanetForm"]["orbitalPeriod"].value.trim();

            if (name === "" || type === "" || price === "" || distance === "" || moons === "" || mass === "" || size === "" || temperature === "" || orbitalPeriod === "") {
                alert("Please fill out all fields.");
                return false;
            }

            if (isNaN(price) || price < 0) {
                alert("Price must be a positive number.");
                return false;
            }

            if (isNaN(distance) || distance < 0) {
                alert("Distance must be a positive number.");
                return false;
            }

            if (isNaN(moons) || moons < 0) {
                alert("Number of moons must be a positive number.");
                return false;
            }

            if (isNaN(mass) || mass < 0) {
                alert("Mass must be a positive number.");
                return false;
            }

            if (isNaN(size) || size < 0) {
                alert("Size must be a positive number.");
                return false;
            }

            if (isNaN(temperature)) {
                alert("Surface temperature must be a number.");
                return false;
            }

            if (isNaN(orbitalPeriod) || orbitalPeriod < 0) {
                alert("Orbital period must be a positive number.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

<h1>Add a New Planet or Space Object</h1>
<form action="${pageContext.request.contextPath}/AddPlanetServlet" method="post" name="addPlanetForm" onsubmit="return validateForm()">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>
    <label for="type">Type:</label>
    <input type="text" id="type" name="type" required><br>
    <label for="price">Price:</label>
    <input type="number" id="price" name="price" required><br>
    <label for="distance">Distance from Earth (km):</label>
    <input type="number" id="distance" name="distance" required><br>
    <label for="moons">Number of Moons:</label>
    <input type="number" id="moons" name="moons" required><br>
    <label for="mass">Mass (kg):</label>
    <input type="number" id="mass" name="mass" required><br>
    <label for="size">Size (diameter in km):</label>
    <input type="number" id="size" name="size" required><br>
    <label for="temperature">Surface Temperature (Celsius):</label>
    <input type="number" id="temperature" name="temperature" required><br>
    <label for="orbitalPeriod">Orbital Period (days):</label>
    <input type="number" id="orbitalPeriod" name="orbitalPeriod" required><br>
    <button type="submit">Add</button>
</form>
<script>
    function validateForm() {
        const name = document.forms["addPlanetForm"]["name"].value.trim();
        const type = document.forms["addPlanetForm"]["type"].value.trim();
        const price = document.forms["addPlanetForm"]["price"].value.trim();
        const distance = document.forms["addPlanetForm"]["distance"].value.trim();
        const moons = document.forms["addPlanetForm"]["moons"].value.trim();
        const mass = document.forms["addPlanetForm"]["mass"].value.trim();
        const size = document.forms["addPlanetForm"]["size"].value.trim();
        const temperature = document.forms["addPlanetForm"]["temperature"].value.trim();
        const orbitalPeriod = document.forms["addPlanetForm"]["orbitalPeriod"].value.trim();

        if (name === "" || type === "" || price === "" || distance === "" || moons === "" || mass === "" || size === "" || temperature === "" || orbitalPeriod === "") {
            alert("Please fill out all fields.");
            return false;
        }

        if (isNaN(price) || price < 0) {
            alert("Price must be a positive number.");
            return false;
        }

        if (isNaN(distance) || distance < 0) {
            alert("Distance must be a positive number.");
            return false;
        }

        if (isNaN(moons) || moons < 0) {
            alert("Number of moons must be a positive number.");
            return false;
        }

        if (isNaN(mass) || mass < 0) {
            alert("Mass must be a positive number.");
            return false;
        }

        if (isNaN(size) || size < 0) {
            alert("Size must be a positive number.");
            return false;
        }

        if (isNaN(temperature)) {
            alert("Surface temperature must be a number.");
            return false;
        }

        if (isNaN(orbitalPeriod) || orbitalPeriod < 0) {
            alert("Orbital period must be a positive number.");
            return false;
        }

        return true;
    }
</script>
