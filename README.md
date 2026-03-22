
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

## 🗄️ SQL Analysis

### Key Queries Performed:

* Monthly revenue and growth trends
* Top 10 customers by revenue
* Customer retention analysis
* Category-wise revenue ranking
* Region-wise contribution percentage

### Example Insights:

* A small percentage of customers generate a large share of revenue
* Repeat customers contribute significantly to consistent sales
* Certain regions outperform others in revenue generation
* Category ranking highlights top-performing product segments

---

## 📊 Dashboard (Power BI)

### Features:

* KPI Cards:

  * Total Sales
  * Average Sales
  * Total Orders

* Visualizations:

  * Sales Trend Over Time
  * Category Performance
  * Region Performance
  * Top Customers

* Interactive Filters:

  * Region
  * Category
  * Date

👉 Insights:

* Revenue growth is influenced by both order volume and customer value
* Top customers and categories drive business performance
* Interactive filtering allows dynamic analysis across dimensions

---

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
