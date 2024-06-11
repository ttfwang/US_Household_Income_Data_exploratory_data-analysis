-- US Household Income Exploratory Data Analysis

-- Initial data inspection
SELECT * FROM us_income_project.us_household_income;
SELECT * FROM us_income_project.us_income_statistics;

SELECT State_Name, County, City, ALand, AWater
FROM us_income_project.us_household_income;

-- Land and water area analysis
SELECT State_Name, SUM(Aland) AS Total_Land, SUM(AWater) AS Total_Water
FROM us_income_project.us_household_income
GROUP BY State_Name
ORDER BY SUM(Aland) DESC;

-- Top 10 states by land and water area
SELECT State_Name, SUM(Aland) AS Total_Land, SUM(AWater) AS Total_Water
FROM us_income_project.us_household_income
GROUP BY State_Name
ORDER BY SUM(Aland) DESC
LIMIT 10;

SELECT State_Name, SUM(Aland) AS Total_Land, SUM(AWater) AS Total_Water
FROM us_income_project.us_household_income
GROUP BY State_Name
ORDER BY SUM(AWater) DESC
LIMIT 10;

-- Identify records with missing Mean values using joins
SELECT *
FROM us_income_project.us_household_income u
RIGHT JOIN us_income_project.us_income_statistics us
ON u.id = us.id
WHERE u.id IS NULL;

SELECT *
FROM us_income_project.us_household_income u
INNER JOIN us_income_project.us_income_statistics us
ON u.id = us.id
WHERE Mean <> 0;

-- Analysis of household income
SELECT u.State_Name, County, Type, 'Primary' AS Category, Mean, Median
FROM us_income_project.us_household_income u
INNER JOIN us_income_project.us_income_statistics us
ON u.id = us.id
WHERE Mean <> 0;

-- Average and median income analysis
SELECT u.State_Name,
       ROUND(AVG(Mean), 1) AS Avg_Mean,
       ROUND(AVG(Median), 1) AS Avg_Median
FROM us_income_project.us_household_income u
INNER JOIN us_income_project.us_income_statistics us
ON u.id = us.id
WHERE Mean <> 0
GROUP BY u.State_Name
ORDER BY ROUND(AVG(Mean), 1)
LIMIT 5;

SELECT u.State_Name,
       ROUND(AVG(Mean), 1) AS Avg_Mean,
       ROUND(AVG(Median), 1) AS Avg_Median
FROM us_income_project.us_household_income u
INNER JOIN us_income_project.us_income_statistics us
ON u.id = us.id
WHERE Mean <> 0
GROUP BY u.State_Name
ORDER BY ROUND(AVG(Mean), 1) DESC
LIMIT 10;

-- Median income analysis
SELECT u.State_Name,
       ROUND(AVG(Mean), 1) AS Avg_Mean,
       ROUND(AVG(Median), 1) AS Avg_Median
FROM us_income_project.us_household_income u
INNER JOIN us_income_project.us_income_statistics us
ON u.id = us.id
WHERE Mean <> 0
GROUP BY u.State_Name
ORDER BY ROUND(AVG(Median), 1) DESC
LIMIT 10;

SELECT u.State_Name,
       ROUND(AVG(Mean), 1) AS Avg_Mean,
       ROUND(AVG(Median), 1) AS Avg_Median
FROM us_income_project.us_household_income u
INNER JOIN us_income_project.us_income_statistics us
ON u.id = us.id
WHERE Mean <> 0
GROUP BY u.State_Name
ORDER BY ROUND(AVG(Median), 1) ASC
LIMIT 10;

-- Income analysis by type of place
SELECT Type,
       COUNT(Type) AS Count_Type,
       ROUND(AVG(Mean), 1) AS Avg_Mean,
       ROUND(AVG(Median), 1) AS Avg_Median
FROM us_income_project.us_household_income u
INNER JOIN us_income_project.us_income_statistics us
ON u.id =
