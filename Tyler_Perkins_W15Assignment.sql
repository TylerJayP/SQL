SELECT * FROM pregnancy_deaths.pregnancy_deaths_data;

-- Just wanted to truncate the data to closer and more relevant years for better understanding
-- DELETE FROM pregnancy_deaths_data WHERE Year < 2015;

-- Anything below this id was not a country or these countries were included, so it didn't really matter because I'm trying to see countryside deaths.
-- DELETE FROM pregnancy_deaths_data WHERE id < 965;

-- Doing this to help find Developing countries
-- SELECT * FROM pregnancy_deaths_data WHERE Deaths > 50 ORDER BY Deaths desc;

-- UPDATE pregnancy_deaths_data 
-- SET Developing_Developed = 'Developed' WHERE Deaths < 83;

-- UPDATE pregnancy_deaths_data
-- SET Developed_Yes_No = 1 WHERE Developing_Developed = 'Developing';

-- UPDATE pregnancy_deaths_data
-- SET Developed_Yes_No = 0 WHERE Developing_Developed = 'Developed';

-- Making sure that all 0 says Developed.
-- SELECT * FROM pregnancy_deaths_data WHERE Developed_Yes_No = 0;

-- Wanted to see what countries have low amount of deaths per year, specifically The United States compared to other Countries.
-- SELECT * FROM pregnancy_deaths_data WHERE Deaths < 20 ORDER BY Deaths DESC;

-- I wanted to see Average amount of deaths for developing and developed countries. The difference is significant and rather really sad and scary.
SELECT Developing_Developed, AVG(Deaths) AS avg_deaths FROM pregnancy_deaths_data GROUP BY Developing_Developed ORDER BY avg_deaths DESC;

-- SET @n := 0;
-- SELECT @n := @n + 1 AS ranked_deaths, Country, Deaths, Developed_Yes_No FROM pregnancy_deaths_data WHERE Year = 2015 ORDER BY Deaths DESC;

-- SELECT Developing_Developed, COUNT(Developing_Developed) AS Total FROM pregnancy_deaths_data GROUP BY Developing_Developed;
