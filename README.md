# 📊 Project Title: Manufacturing Data Analysis (SQL Project)

## 📖 Project Overview
This project demonstrates the use of **SQL** for analyzing a **manufacturing dataset**, specifically focusing on **cellphone sales and transactions**.  
The database design follows a **star schema**, consisting of **dimension tables** (customers, dates, locations, manufacturers, models) and a **fact table** (transactions).  

The project showcases the ability to query, join, and extract insights from structured data to answer real-world business questions.

---

## 🗄️ Database
**Database Name:** `manufacturing_project`  
**Schema Used:** `dbo`

### Tables
- **DIM_CUSTOMER** – customer information  
- **DIM_DATE** – time and date details  
- **DIM_LOCATION** – customer locations (states, regions, countries)  
- **DIM_MANUFACTURER** – phone manufacturers  
- **DIM_MODEL** – cellphone models  
- **FACT_TRANSACTIONS** – transaction records (sales, purchase dates, customer IDs, etc.)  

---

## 🗂️ Example Business Questions Answered
The SQL queries in this project answer several analytical questions, such as:

1. **Customer Insights**  
   - List all the states in which customers bought cellphones from **2005 onwards**.  

2. **Sales by Manufacturer & Region**  
   - Identify the **US state** purchasing the most **Samsung phones**.  
   - Find the **most popular cellphone manufacturer** in each region.  

3. **Model & Transaction Analysis**  
   - Determine the **top 5 cellphone models** with the highest sales.  
   - Track sales trends of specific models across years.  

4. **Revenue & Growth Trends**  
   - Calculate **total sales per year**.  
   - Identify **peak sales periods**.  

---

## 🛠️ SQL Skills Demonstrated
- **Joins & Relationships:** Combining fact and dimension tables for analysis.  
- **Common Table Expressions (CTEs):** Used for simplifying complex queries.  
- **Aggregate Functions:** `SUM`, `COUNT`, `AVG`, `MAX`, `MIN` for KPIs.  
- **Grouping & Filtering:** Extracting insights by year, region, manufacturer.  
- **Window Functions:** Ranking and trend analysis.  
- **Subqueries:** Breaking down insights into smaller steps.  

---

## 📌 Key Findings (from queries)
- **Geographical Insights:** Certain US states contribute significantly to cellphone purchases.  
- **Brand Popularity:** Samsung emerges as a strong competitor in multiple regions.  
- **Sales Trends:** Growth in cellphone purchases is evident post-2005 with steady year-on-year increases.  
- **Customer Behavior:** Repeated purchases from specific states/regions highlight strong brand loyalty.  

---

## ✅ Conclusion  
By working with dimension and fact tables, the analysis simulates real-world **business intelligence (BI) practices** such as sales trend tracking, customer segmentation, and brand performance evaluation.  
