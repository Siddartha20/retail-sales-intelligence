
# 🛍️ Retail Sales Intelligence & Customer Analytics

## 📌 Project Overview

This project focuses on analyzing retail sales data to extract meaningful business insights using Python, SQL, and Power BI. It simulates a real-world analytics workflow including data cleaning, transformation, querying, and visualization to support data-driven decision-making.

---
# retail-sales-intelligence
Developed an end-to-end retail sales analytics project using Python, SQL, and Power BI. Performed data cleaning and RFM-based customer segmentation, analyzed sales trends and customer behavior using SQL, and built an interactive dashboard to track KPIs and deliver actionable business insights.
## 🎯 Objectives

* Analyze sales performance across categories and regions
* Identify high-value and at-risk customers
* Understand revenue trends over time
* Provide actionable business insights

---

## 🛠️ Tools & Technologies

* **Python**: Pandas, Matplotlib
* **SQL**: MySQL (data querying & analysis)
* **Power BI**: Interactive dashboard and visualization

---

## 📂 Dataset

* Superstore Sales Dataset
* Contains transactional data including orders, customers, sales, category, and region

---

## 🧹 Data Preprocessing (Python)

* Removed duplicates and missing values
* Converted order dates into proper datetime format
* Created additional features such as Year and Month

---

## 📊 Customer Segmentation (RFM Analysis)

* **Recency**: Days since last purchase
* **Frequency**: Number of orders
* **Monetary**: Total spending

### Segments Identified:

* High Value Customers
* Loyal Customers
* Potential Customers
* At-Risk Customers

👉 Insight:
High-value customers contribute a significant portion of total revenue, indicating strong revenue concentration.

---

## 📈 Exploratory Data Analysis (Python)

### Key Outputs:

* Monthly Sales Trend
* Category-wise Sales Distribution
* Region-wise Sales Performance
* Customer Segment Distribution

👉 Insights:

* Sales show a consistent trend with periodic peaks
* Certain categories dominate overall revenue
* Regional differences indicate market opportunities
* Customer segmentation reveals clear behavioral patterns

---

🗄️ SQL Analysis

The following key queries were implemented:
👉 Refer SQL file:

🔍 Analysis Performed:
Total revenue calculation
Region-wise sales distribution
Category-wise performance ranking
Monthly sales trend and growth analysis
Top customers by revenue
Customer retention (repeat buyers)
Customer lifetime value (CLV)
Sales by day of week
📊 Key Insights from SQL
💰 Revenue Overview
Total sales reached ~2.26M, indicating strong overall business performance
🌍 Region Performance
West region generated the highest revenue
South region contributed the least
👉 Indicates regional imbalance and opportunity for expansion
📦 Category Performance
Technology category leads in total revenue
Followed by Furniture and Office Supplies
👉 High demand for tech-related products
📈 Monthly Sales Trend
Sales show consistent fluctuations with peak months
Growth analysis (using LAG function) highlights periodic increases and declines
🏆 Top Customers
A small group of customers contributes significantly to total revenue
👉 Confirms Pareto principle (80/20 rule)
🔁 Customer Retention
Multiple customers have more than one order
👉 Repeat customers form a stable revenue base
💎 Customer Lifetime Value (CLV)
High-value customers show:
More orders
Higher total spending
👉 Important for targeted marketing strategies
📅 Sales by Day of Week
Certain days generate higher revenue
👉 Indicates customer buying patterns and peak days
📊 Power BI Dashboard
🔥 KPIs:
Total Sales: 2.26M
Average Sales: 230.77K
Total Orders: 9.8K
📈 Visualizations:
Sales by Region
Sales by Category
Sales by Segment
Sales by City (Top cities analysis)
Geographic distribution (Map visualization)
🎛️ Features:
Interactive slicers:
State
Ship Mode
Category

👉 Enables dynamic filtering and analysis

🧠 Business Insights
Top customers contribute a major portion of revenue
Technology products drive the highest sales
West region dominates sales performance
Customer retention plays a key role in revenue stability
Sales patterns vary across regions and time
🏁 Conclusion

This project demonstrates the ability to:

Work with real-world datasets
Perform data cleaning and transformation
Use SQL for business-level analysis
Build interactive dashboards for decision-making

It highlights a complete data analytics workflow from raw data to actionable insights.

## 🚀 Business Insights

* Top 20% of customers contribute majority of revenue
* Repeat customers form a stable revenue base
* Certain categories consistently outperform others
* Regional sales trends highlight potential expansion areas

---

## 📁 Project Structure

```
retail-sales-intelligence/
│
├── data/
├── notebooks/
├── sql/
├── dashboard/
└── README.md
```

---

## 🏁 Conclusion

This project demonstrates an end-to-end data analytics workflow, combining Python, SQL, and Power BI to transform raw data into actionable insights. It highlights the ability to analyze business problems and present findings effectively.

---

## 📌 Future Improvements

* Add predictive modeling for sales forecasting
* Deploy dashboard for real-time analysis
* Integrate larger datasets for scalability

---
