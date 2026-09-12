# Building-Materials-Sales-Analytics-Using-SQL-Python-
## Objective
Analyze 340,000 building-material transaction records to understand revenue, units, pricing, product, region, channel, customer type, and macro-driver relationships.The project integrates SQL and Python to demonstrate complete data analytics capabilities.

## Data
- `building_materials_transactions.csv`: transaction-level sales data.
- `data_dictionary_materials.csv`: field definitions.
- `macro_drivers_weekly.csv`: weekly housing, lumber-price, and mortgage-rate indicators.
-  Dataset source link path = kagglehub.dataset_download("sergionefedov/us-building-materials-sales-transactions-20192024")

## Questions Answered
1. What is the monthly and yearly revenue trend?
2. Which regions generate the most revenue and units?
3. Which product categories and SKUs drive sales?
4. How do channels and customer types contribute to revenue?
5. What is revenue per unit and average selling price?
6. Which SKUs have concentration risk?
7. Is price associated with revenue or volume?
8. What is year-over-year growth?
9. Do housing starts, lumber prices, or mortgage rates move with sales?
10. Where are underperforming regions/categories for action?

# Dataset Description

The project uses three datasets:

1. Building Materials Transactions
Contains transaction-level sales data including:
Revenue
Units Sold
Product Category
SKU
Region
Channel
Customer Type
Unit Price

2. Macro Drivers Weekly
Contains weekly market indicators:
Housing Starts Index
Lumber Price Index
Mortgage Rate

3. Data Dictionary
Provides definitions and descriptions of all dataset columns.

**Tools & Technologies**
Tool	Purpose
SQL	Data querying and business analysis
Python	EDA and advanced analytics
Pandas	Data manipulation
NumPy	Numerical analysis
Matplotlib	Data visualization
Seaborn	Statistical visualization

**SQL Analysis Performed**
The SQL analysis includes:
-Revenue aggregation
-Monthly and yearly trends
-Regional performance
-Product category analysis
-Top SKU analysis
-Customer segmentation
-Channel performance
-YoY growth
-Window functions
-Ranking analysis
-Correlation analysis

**Python EDA Performed**
The Python analysis includes:
-Data loading
-Data quality validation
-Missing value detection
-Duplicate detection
-Statistical summary
-Feature engineering
-Correlation analysis
-Group-by analysis
-Business insights generation

## Business Insights

The project focuses on identifying:
Revenue growth opportunities
High-performing regions
Profitable product categories
Underperforming SKUs
Customer and channel contribution
Pricing opportunities
Market-driven sales patterns
