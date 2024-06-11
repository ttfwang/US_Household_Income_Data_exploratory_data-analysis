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

1. **Inspect the Data:** Initial exploration of the dataset.
2. **Identify and Remove Duplicates:** Locate and delete duplicate records.
3. **Handle Missing Values:** Identify missing data and fill gaps appropriately.
4. **Standardize Data:** Correct errors in data entries and ensure consistency in data formatting.

## Exploratory Data Analysis

1. **Land and Water Area by State:** Analyze the total land and water area by state.
2. **Top States by Land and Water Area:** Identify the top 10 states by land and water area.
3. **Income Correlation:** Examine the relationship between household income and other variables.
4. **Average and Median Income Analysis:** Identify states and types of places with the highest and lowest average and median incomes.

## Challenges and Insights

### Challenges

- **Data Quality Issues:** Encountered several instances of incorrect or missing data, which required careful handling to avoid skewed results.
- **Standardization of Data:** Faced challenges in correcting errors and standardizing data entries, especially for state and place names.

### Insights

- **State Income Analysis:** Identified significant differences in household income across states and types of places.
- **Correlation Patterns:** Observed clear correlations between the type of place and household income, highlighting the impact of urbanization on income levels.
- **Data Visualization Needs:** Realized the importance of visual tools like Tableau for better pattern recognition and presentation.

## Findings and Improvements

- **Key Findings:** The project identified states and places with the highest and lowest household incomes, as well as significant correlations between income and other factors.
- **Areas for Improvement:** Data quality issues such as incorrect entries and missing values need to be addressed for more accurate analysis.

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
