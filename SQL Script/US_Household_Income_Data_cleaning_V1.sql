-- US Household Income Data Cleaning

-- Initial data inspection
SELECT * 
FROM us_income_project.us_income_statistics;

-- Correct column title
ALTER TABLE us_income_statistics RENAME COLUMN `***id` TO `id`;

-- Count records
SELECT COUNT(id) 
FROM us_income_project.us_household_income;

SELECT COUNT(id)  
FROM us_income_project.us_income_statistics;

-- Find and remove duplicated ids
SELECT id, COUNT(id) 
FROM us_income_project.us_household_income
GROUP BY id
HAVING COUNT(id) > 1;

DELETE FROM us_household_income
WHERE row_id IN (
    SELECT *
    FROM (
        SELECT row_id,
               id,
               ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) AS row_num
        FROM us_income_project.us_household_income
    ) duplicates
    WHERE row_num > 1
);

-- Correct errors in State_Name column
SELECT State_Name, COUNT(State_Name)
FROM us_income_project.us_household_income
GROUP BY State_Name;

SELECT DISTINCT State_Name
FROM us_income_project.us_household_income;

UPDATE us_income_project.us_household_income
SET State_Name = 'Georgia'
WHERE State_Name = 'georia';

UPDATE us_income_project.us_household_income
SET State_Name = 'Alabama'
WHERE State_Name = 'alabama';

-- Handle missing place values
SELECT DISTINCT State_ab
FROM us_income_project.us_household_income;

SELECT *
FROM us_income_project.us_household_income
WHERE place = '';

UPDATE us_income_project.us_household_income
SET Place = 'Autaugavillle'
WHERE County = 'Autauga County'
AND Place = 'Vinemont';

-- Correct errors in Type column
SELECT Type, COUNT(Type)
FROM us_income_project.us_household_income
GROUP BY Type;

UPDATE us_household_income
SET Type = 'Borough'
WHERE Type = 'Boroughs';

-- Identify records with missing or zero AWater values
SELECT Aland, AWater
FROM us_income_project.us_household_income
WHERE AWater = 0 OR AWater = '' OR AWater IS NULL;
