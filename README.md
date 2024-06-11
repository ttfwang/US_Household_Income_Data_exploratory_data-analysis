# US Household Income Data Analysis

## Project Overview
This practice project is a part of the data analytics lesson offered by [Analyst Builder](https://www.analystbuilder.com/courses/mysql-for-data-analytics/lesson/us-household-income-exploratory-data-analysis). 

This project focuses on analyzing US household income data using MySQL. The primary objective is to clean the dataset and explore various factors affecting household income across different states and types of places in the US. The project is divided into two main stages: data cleaning and exploratory data analysis (EDA).

## Objectives

- **Data Cleaning:** Remove duplicates, handle missing values, correct errors, and standardize data for consistency.
- **Exploratory Data Analysis:** Identify patterns and correlations between household income and other variables such as state, type of place, and land/water area.

## Data

The data used in this project is sourced from publicly available datasets containing household income information for various states and places in the US.

## Files in this Repository

- [README.md](https://github.com/ttfwang/US_Household_Income_Data_exploratory_data-analysis): Documentation of the project.
- [data_cleaning.sql](https://github.com/ttfwang/US_Household_Income_Data_exploratory_data-analysis/blob/main/SQL%20Script/US_Household_Income_Data_cleaning_V1.sql): SQL script for data cleaning.
- [exploratory_analysis.sql](https://github.com/ttfwang/US_Household_Income_Data_exploratory_data-analysis/blob/main/SQL%20Script/US_Household_Income_Data_Exploratory_data%20analysis_v1.sql): SQL script for exploratory data analysis.
- [us_household_income.csv](https://github.com/ttfwang/US_Household_Income_Data_exploratory_data-analysis/tree/main/raw_data): Raw data file in CSV format.

## Data Cleaning Process

1. **Inspect the Data:** Used `SELECT` statements to explore the initial dataset.
2. **Identify and Remove Duplicates:** Used `GROUP BY` and `HAVING` clauses to find duplicates, and `ROW_NUMBER()` window function to remove them.
3. **Handle Missing Values:** Utilized `UPDATE` statements to fill in missing values based on specific conditions.
4. **Standardize Data:** Applied `UPDATE` and `ALTER TABLE` statements to correct errors and ensure consistency in data formatting.

## Exploratory Data Analysis

1. **Land and Water Area by State:** Analyzed the total land and water area by state using `SUM` and `GROUP BY` clauses.
2. **Top States by Land and Water Area:** Identified the top 10 states by land and water area using `ORDER BY` and `LIMIT` clauses.
3. **Income Correlation:** Examined the relationship between household income and other variables using `INNER JOIN` and `RIGHT JOIN` statements.
4. **Average and Median Income Analysis:** Identified states and types of places with the highest and lowest average and median incomes using `AVG`, `ROUND`, and `ORDER BY` clauses.


## Challenges and Insights

### Challenges

- **Data Quality Issues:** Encountered several instances of incorrect or missing data, which required careful handling to avoid skewed results.
- **Standardization of Data:** Faced challenges in correcting errors and standardizing data entries, especially for state and place names.

### Insights

- **State Income Analysis:** Identified significant differences in household income across states and types of places.
- **Correlation Patterns:** Observed clear correlations between the type of place and household income, highlighting the impact of urbanization on income levels.
- **Data Visualization Needs:** Realized the importance of visual tools like Tableau for better pattern recognition and presentation.

## Findings and Improvements

1. **Lowest Average Income States:** Puerto Rico has the lowest average income at $27,841.7 per person per year, followed by Mississippi at $49,385 per person per year, Arkansas, West Virginia, and Alabama.
2. **Highest Average Income States:** Columbia has the highest average income at $90,668 per person per year, followed by Connecticut, New Jersey, Maryland, and Massachusetts.
3. **Highest Median Income State:** New Jersey is the highest median income state at $126,772.7 per person per year, followed by Wyoming, Alaska, Connecticut, and Massachusetts.
4. **Lowest Median Income State:** Puerto Rico is the lowest median income state at $22,522.4 per person per year.
5. **Income by Place Type:** Municipality has the highest average income but lacks sufficient representation with only one city. Urban and Community types have significantly lower incomes compared to City, Track, and Municipality types.
6. **Community Type Analysis:** Puerto Rico is the only state with the Community type, explaining its lowest average income status.
7. **Average Income by State and City:** Delta Junction in Alaska has the highest average income, with many high-income cities located in the northeastern US.

## Conclusion

This project demonstrates the use of MySQL for data cleaning and exploratory data analysis, showcasing skills in handling real-world data, identifying patterns, and deriving insights.

## How to Use

1. Load the `us_household_income.csv` file into your MySQL database.
2. Run the `data_cleaning.sql` script to clean the data.
3. Execute the `exploratory_analysis.sql` script to perform exploratory data analysis.

## Acknowledgment

This project is a part of the data analytics lesson offered by [Analyst Builder](https://www.analystbuilder.com/courses/mysql-for-data-analytics/lesson/us-household-income-exploratory-data-analysis).

## Author

Tengfei Wang
