SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM countrylanguage;
SELECT city.ID, city.name, countrylanguage.Language FROM city JOIN countrylanguage ON countrylanguage.CountryCode = city.CountryCode WHERE city.name = 'Moscow' ORDER BY id;