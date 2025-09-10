# 📊 Project Title: Manufacturing Data Analysis (SQL Project)

## 📖 Project Overview
This project demonstrates the use of **SQL** for analyzing a **manufacturing dataset**, specifically focusing on **cellphone sales and transactions**.  
The database design follows a **star schema**, consisting of **dimension tables** (customers, dates, locations, manufacturers, models) and a **fact table** (transactions).  

The project showcases the ability to query, join, and extract insights from structured data to answer real-world business questions.

---

## 🗄️ Database
**Database Name:** `manufacturing_project`  
**Schema Used:** `dbo`

## 🖼️ Database Schema (ERD)

Every strong analysis begins with a well-designed schema.  
The project follows a **Star Schema** design, where the **Fact table (transactions)** is at the center and is connected to multiple **Dimension tables**.  

Think of it like a galaxy 🌌 — the **FACT_TRANSACTIONS** table is the "sun," and all the dimension tables are "planets" orbiting around it, each providing context and meaning.  

### 🌟 Tables & Their Roles
- **DIM_CUSTOMER** → Who is buying? (Customer details: ID, Name, Email, Phone)  
- **DIM_DATE** → When was the purchase? (Year, Quarter, Month)  
- **DIM_LOCATION** → Where was it bought? (Country, State, City, Zip)  
- **DIM_MANUFACTURER** → Who made the phone? (Manufacturer info)  
- **DIM_MODEL** → What exactly was bought? (Model name, Price, Manufacturer link)  
- **FACT_TRANSACTIONS** → The beating heart ❤️ (Brings everything together: model, customer, location, date, price, quantity)  

This design ensures **scalability** and allows running **complex analytical queries** with ease.

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
