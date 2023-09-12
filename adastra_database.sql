USE adastramdb;

CREATE TABLE planets (
	  id INT PRIMARY KEY AUTO_INCREMENT,
	  name VARCHAR(20) NOT NULL,
	  type VARCHAR(20) NOT NULL,
	  price INT NOT NULL,
	  distance_from_earth_km BIGINT NOT NULL,
	  number_of_moons INT NOT NULL,
	  mass_kg FLOAT(7,2) NOT NULL,
	  size_diameter_km FLOAT(7,2) NOT NULL,
	  surface_temperature_celsius INT NOT NULL,
	  orbital_period_days BIGINT NOT NULL
);

CREATE TABLE users (
id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(10) NOT NULL,
user_pwd VARCHAR(16) NOT NULL,
user_email VARCHAR(30) NOT null
)

CREATE TABLE bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    planet_id INT,
    date DATE NOT NULL,
    time TIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (planet_id) REFERENCES planets(id)
);


INSERT INTO planets (
	  name, 
	  type, 
	  price, 
	  distance_from_earth_km, 
	  number_of_moons, 
	  mass_kg, 
	  size_diameter_km, 
	  surface_temperature_celsius, 
	  orbital_period_days
) VALUES 
	('Mercury', 'Terrestrial', 299, 91691000, 0, 3.301e23, 4879, 167, 87),
	('Venus', 'Terrestrial', 249, 41400000, 0, 4.867e24, 12104, 464, 224),
	('Earth', 'Terrestrial', 200, 0, 1, 5.972e24, 12756, 15, 365), 
	('Mars', 'Terrestrial', 319, 78234000, 2, 6.39e23, 6792, -63, 686),
	('Jupiter', 'Gas Giant', 499, 628743036, 79, 1.898e27, 142984, -108, 4332),
	('Saturn', 'Gas Giant', 699, 1277400000, 82, 5.683e26, 120536, -139, 10759),
	('Uranus', 'Ice Giant', 749, 2723950966, 27, 8.681e25, 51118, -197, 30688),
	('Neptune', 'Ice Giant', 949, 4351800000, 14, 1.024e26, 49528, -201, 60182),
	('Pluto', 'Dwarf', 1149, 5.91e9, 5, 1.309e22, 2370, -229, 90553);

INSERT INTO bookings (user_id, planet_id, date, time) 
VALUES (UserID, PlanetID, 'YYYY-MM-DD', 'HH:MM:SS');

DELETE FROM bookings WHERE id = BookingID;

DELETE FROM planets WHERE id = PlanetID;

UPDATE bookings 
SET date = 'NewDate', time = 'NewTime' 
WHERE id = BookingID;
