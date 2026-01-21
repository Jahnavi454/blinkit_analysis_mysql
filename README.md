# Blinkit Sales & Operations Analysis (MySQL • Python • Power BI)
This project delivers an end-to-end data analytics workflow using Blinkit’s open-source dataset to extract actionable business insights and performance trends. The analysis covers data ingestion, cleaning, exploratory analysis, KPI generation, and interactive dashboarding, designed to simulate real-world business intelligence workflows.

The goal was simple:
Turn raw operational data into insights that support smarter business decisions.

#Project Objectives
* Import, clean, and structure raw Blinkit data using MySQL
* Perform Exploratory Data Analysis (EDA) using Python
* Write optimized SQL queries to calculate business KPIs
* Build interactive Power BI dashboards for executive-level reporting
* Identify trends in sales, outlet performance, product categories, and customer behaviour

# Tech Stack
* MySQL – Data cleaning, schema design, KPI analysis
* Python (Pandas, Matplotlib, Seaborn) – Exploratory Data Analysis
* Power BI – Interactive dashboards & business storytelling
* GitHub – Version control & project documentation

# Data Loading & Preparation (MySQL)
* Imported raw CSV data into MySQL
Performed:
* Data cleaning (null handling, standardisation)
* Schema normalization
* Data validation checks
Built SQL queries to compute:
* Total & average sales
* Category performance
*Outlet efficiency metrics
* Customer behaviour indicators

This created a clean, analytics-ready dataset for downstream reporting.
  

# Exploratory Data Analysis (Python)
* Python was used to uncover early insights and validate patterns before dashboarding.
Key EDA steps:
* Distribution analysis of sales, ratings, outlet size, and item categories
* Correlation analysis between item visibility, ratings, and revenue
* Detection of outliers and skewed categories
* Trend analysis by outlet type and establishment year

This helped guide KPI selection and dashboard design decisions.


# Loading the database
I imported the Blinkit dataset into MySQL and performed:
* Data cleaning
* Schema design
* Exploratory SQL queries
* KPI calculations
  
This helped set a solid foundation before moving everything to Power BI.

# Visualising the metrics
# Power BI Dashboard — Overview
This dashboard pulls together all major Blinkit performance metrics in one place. It’s designed to be intuitive, filter-friendly, and focused on real business KPIs.

Key Highlights
* Total Sales: $1.20M
* Average Sales per Item: $141
* Total Items: 8,523
* Average Rating: 3.9

# Dashboard Sections Explained
# Filter Panel
You can drill down results by:
* Outlet type
* Outlet size
* Item category
  
Super handy when comparing performance across branches.

# Outlet Establishment Trend
A year-wise performance view showing:
* Revenue growth over time
* Spikes/drops in outlet performance
* How newly established outlets contribute to sales
  
It’s basically the pulse of Blinkit’s expansion journey.

# Sales Breakdown
* By Fat Content: Regular vs Low-Fat product performance
* By Item Type: Top categories like dairy, snacks, frozen foods, etc.
* By Outlet Size: Medium, small, and high-capacity stores
* By Outlet Location: Tier-wise revenue comparison
  
All of this helps understand what’s actually selling and where.

# Outlet Type Performance Table
A detailed matrix showing:
* Total sales
* Number of items
* Average sales
* Ratings
* Item visibility
  
Super useful for spotting high-performing outlets vs under-performers

# Dashboard Preview
<img width="650" height="371" alt="image" src="https://github.com/user-attachments/assets/ee5ce472-320b-4bc7-ad88-ba4e95a4edb0" />

# What’s Inside This Repo?
* Repository Contents
* SQL scripts for data cleaning and KPI calculations
* Python notebook for EDA
* Power BI dashboard (.pbix)
* Documentation & screenshots
* Business insight summaries
