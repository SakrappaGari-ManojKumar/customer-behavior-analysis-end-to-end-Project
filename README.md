# 🛍️ Customer Behavior Analysis

## 📌 Project Overview

**Customer Behavior Analysis** is an end-to-end data analytics project focused on understanding customer purchasing patterns, product performance, customer demographics, subscription behavior, shipping preferences, payment methods, and review ratings.

The project follows a complete data analytics workflow, starting from **raw customer data**, followed by **data cleaning and transformation using Python/Pandas**, **database analysis using MySQL and SQL**, and finally **interactive visualization and dashboard development using Power BI**.

The main objective of this project is to transform raw customer shopping data into meaningful business insights that can help organizations understand their customers, identify high-performing product categories, analyze purchasing behavior, and support data-driven decision-making.

---

## 🎯 Project Objectives

* Clean and preprocess raw customer shopping data.
* Handle missing and inconsistent data.
* Standardize column names and data formats.
* Perform feature engineering for customer segmentation.
* Store and analyze the transformed data using MySQL.
* Perform SQL-based customer and sales analysis.
* Create meaningful KPIs and measures in Power BI.
* Build an interactive customer behavior dashboard.
* Identify important customer purchasing patterns.
* Generate actionable business insights and recommendations.

---

## 🛠️ Technologies & Tools Used

### 🐍 Python

Used as the primary programming language for data preparation and transformation.

### 🐼 Pandas

Used for:

* Data loading
* Data inspection
* Data cleaning
* Missing-value treatment
* Column transformation
* Feature engineering
* Data aggregation
* Data preparation for database loading

### 📓 Jupyter Notebook

Used to perform and document the complete Python/Pandas data-cleaning and transformation workflow.

### 🗄️ MySQL

Used as the relational database for storing the transformed customer dataset and performing structured data analysis.

### 💻 SQL

Used for:

* Data exploration
* Aggregation
* Filtering
* Grouping
* Subqueries
* Customer analysis
* Revenue analysis
* High-value customer analysis

### 🔗 SQLAlchemy

Used to establish the connection between Python/Pandas and MySQL and load the transformed DataFrame into the database.

### 📊 Power BI

Used to create the interactive dashboard and visualize customer behavior through KPIs, charts, and slicers.

### 📐 Power BI Measures

Created measures for important business KPIs such as:

* Average Purchase Amount
* Average Review Rating
* Customer Count

---

# 🔄 Project Workflow

```text
Raw Customer Dataset
        ↓
Data Cleaning & Preprocessing
        ↓
Feature Engineering using Pandas
        ↓
Transformed Dataset
        ↓
MySQL Database
        ↓
SQL Analysis
        ↓
Power BI Measures
        ↓
Interactive Dashboard
        ↓
Business Insights
```

---

# 🧹 Data Cleaning & Transformation

The raw customer dataset was cleaned and transformed using **Python and Pandas**.

### Major transformations performed:

* Converted column names to lowercase.
* Replaced spaces in column names with underscores.
* Renamed `purchase_amount_(usd)` to `purchase_amount`.
* Identified missing values in the dataset.
* Filled missing `review_rating` values using the **median review rating within each product category**.
* Compared discount-related fields and removed the redundant `promo_code_used` column.
* Created a numerical `purchase_frequency_days` feature from categorical purchase-frequency values.
* Created an `age_group` feature using quartile-based segmentation.
* Prepared the transformed DataFrame for loading into MySQL.
* Used SQLAlchemy and Pandas `to_sql()` to transfer the cleaned data into the MySQL database.

---

# 🗄️ SQL Analysis

The transformed dataset was loaded into a MySQL database for further analysis.

SQL was used to investigate customer purchasing behavior and revenue patterns.

### Analysis included:

* Inspecting the customer table.
* Renaming database columns where required.
* Calculating total purchase amount by gender.
* Comparing customer groups.
* Identifying high-value purchases.
* Filtering customers based on discount usage.
* Comparing individual purchase amounts against the overall average purchase amount.
* Using aggregation and subquery-based analysis.

The SQL layer provides a structured way to analyze the cleaned customer data and extract business-oriented insights.

---

# 📊 Power BI Dashboard

An interactive **Customer Behavior Dashboard** was developed using Power BI.

The dashboard provides a high-level overview of customer purchasing behavior and allows users to interactively filter the analysis.

### 📌 Key KPIs

The dashboard contains important KPI measures including:

* **Average Amount**
* **Average Review Rating**
* **Customer Count**

### 📈 Dashboard Visualizations

The dashboard analyzes:

* Customer distribution by subscription status
* Revenue/amount by product category
* Customer count by product category
* Revenue/amount by age group
* Customer count by age group
* Customer behavior based on gender
* Shipping-type analysis

### 🎛️ Interactive Filters

The dashboard includes slicers for:

* Subscription Status
* Gender
* Category
* Shipping Type

These filters allow users to explore different customer segments dynamically.

---

# 🔍 Key Business Insights

## 1. Product Category Performance

**Clothing** generates the highest revenue among the major product categories in the dataset, followed by **Accessories**.

This indicates that these categories have a significant contribution to overall customer spending and can be prioritized for merchandising and promotional strategies.

---

## 2. Gender-Based Purchasing Behavior

Male customers contribute a larger share of the total revenue and customer records than female customers.

However, the **average purchase amount between male and female customers is relatively close**.

This suggests that the revenue difference is influenced more by customer/record volume than by a major difference in individual purchase value.

---

## 3. Age Group Analysis

Customers were divided into four quartile-based age groups:

* Young Adult
* Adult
* Middle
* Old

The **Young Adult** group generates the highest revenue among the four groups.

This segment could therefore be an important target for personalized marketing campaigns, promotions, and product recommendations.

---

## 4. Subscription Behavior

The dataset contains both subscribed and non-subscribed customers.

The average purchase amount between subscribers and non-subscribers is relatively close.

Therefore, subscription status alone does not appear to create a major difference in average transaction value in this dataset.

Further analysis could investigate whether subscribers have higher purchase frequency or long-term customer value.

---

## 5. Shipping Behavior

Different shipping methods show differences in average purchase amount.

**Free Shipping** and **Express Shipping** show relatively strong average purchase values, while some other shipping methods have lower average transaction values.

This can help businesses evaluate whether shipping preferences are associated with customer spending behavior.

---

## 6. Payment Method Behavior

Customer spending is distributed across multiple payment methods, including:

* Credit Card
* PayPal
* Cash
* Debit Card
* Venmo
* Bank Transfer
* Other methods

Credit Card contributes the highest revenue among the payment methods in the analyzed dataset.

The relatively distributed payment behavior suggests that supporting multiple payment options can be useful for serving different customer preferences.

---

## 7. Purchase Frequency

The dataset contains multiple purchase-frequency categories such as:

* Weekly
* Bi-Weekly
* Monthly
* Quarterly
* Every 3 Months
* Annually
* Fortnightly

The analysis helps identify how frequently customers make purchases and provides a foundation for customer segmentation and future retention analysis.

---

## 8. Review Ratings

Review ratings were analyzed to understand customer satisfaction across product categories.

Missing review ratings were handled using **category-level median imputation**, allowing the rating-related analysis and Power BI KPIs to use a more complete dataset.

---

# 💡 Business Recommendations

Based on the analysis, the following recommendations can be considered:

### 📌 Category Strategy

Focus merchandising and promotional campaigns on high-performing categories such as **Clothing and Accessories**.

### 📌 Customer Segmentation

Use age, gender, subscription status, and purchasing behavior to create targeted customer segments.

### 📌 Young Customer Engagement

Develop targeted campaigns for the **Young Adult** segment because it contributes the highest revenue among the age groups.

### 📌 Subscription Strategy

Analyze subscribers and non-subscribers separately to identify opportunities for improving subscription adoption and retention.

### 📌 Shipping Strategy

Evaluate customer spending patterns across shipping types and consider using free or expedited shipping as a promotional strategy for selected customer segments.

### 📌 High-Value Customers

Identify customers whose purchase amounts are above the overall average and develop personalized offers and loyalty strategies.

### 📌 Payment Options

Continue supporting multiple payment methods to accommodate different customer preferences.

---

# 📐 Key KPIs

The project dashboard focuses on the following major KPIs:

| KPI                           | Purpose                                                             |
| ----------------------------- | ------------------------------------------------------------------- |
| **Customer Count**            | Measures the number of customer records represented in the analysis |
| **Average Purchase Amount**   | Measures the average amount spent per purchase                      |
| **Average Review Rating**     | Measures overall customer rating/satisfaction                       |
| **Category Revenue**          | Identifies high-performing product categories                       |
| **Age Group Revenue**         | Compares spending across customer age segments                      |
| **Subscription Distribution** | Compares subscribed and non-subscribed customers                    |

---

# 📁 Project Structure

```text
Customer-Behavior-Analysis/
│
├── Customer_Behavior_Dataset.csv
│
├── Data_Cleaning_and_Transformation.ipynb
│
├── Customer_Behavior_Analysis.sql
│
├── Customer_Behavior_Dashboard.pbix
│
├── Customer_Behavior_Analysis_Project_Report.docx
│
└── README.md
```

---

# 🚀 Skills Demonstrated

This project demonstrates practical experience in:

* Python
* Pandas
* Jupyter Notebook
* Data Cleaning
* Data Preprocessing
* Missing Value Handling
* Feature Engineering
* Data Transformation
* Exploratory Data Analysis
* SQL
* MySQL
* SQLAlchemy
* Database Connectivity
* Data Aggregation
* Subqueries
* Business Analysis
* KPI Development
* Power BI
* Dashboard Development
* Data Visualization
* Customer Segmentation
* Business Insights
* Data-Driven Decision Making

---

# 📌 Conclusion

This project demonstrates a complete **end-to-end data analytics pipeline**, from raw data preparation to business intelligence reporting.

Using **Python and Pandas**, the raw customer data was cleaned and transformed. The processed data was then loaded into **MySQL using SQLAlchemy** for structured SQL analysis. Finally, **Power BI** was used to create an interactive dashboard containing KPIs, visualizations, and filters.

The project provides insights into **customer demographics, purchasing behavior, product categories, subscription status, shipping methods, payment preferences, purchase frequency, and customer ratings**.

Overall, the project demonstrates how raw customer data can be transformed into meaningful business intelligence that supports **customer segmentation, marketing strategies, product planning, and data-driven decision-making**.
