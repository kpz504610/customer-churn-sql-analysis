# Customer Churn Analysis Using SQL

## Project Overview

This project analyzes customer churn using SQL based on the IBM Telco Customer Churn dataset.

The goal of this analysis is to identify customer segments associated with higher churn rates and explore how churn varies across contract type, payment method, customer tenure, and additional services.

The analysis was performed using SQLite and DB Browser for SQLite.

## Dataset

- Dataset: IBM Telco Customer Churn
- Number of customers: 7,043
- Database: SQLite
- SQL tool: DB Browser for SQLite
- Source: IBM Telco Customer Churn dataset

## Business Questions

This analysis focuses on the following questions:

1. What is the overall customer churn rate?
2. How does churn vary by contract type?
3. Which payment methods are associated with higher churn?
4. How does customer tenure relate to churn?
5. Are customers with additional services associated with lower churn?
6. Which customer segments have the highest churn rates when combining contract type and tenure?

## SQL Analysis

The project uses SQL techniques including:

- `SELECT`
- `COUNT()`
- `AVG()`
- `ROUND()`
- `CASE WHEN`
- `WHERE`
- `IN`
- `GROUP BY`
- Subqueries
- Multi-dimensional segmentation

## Key Findings

### 1. Contract Type

Month-to-month customers had the highest churn rate:

- Month-to-month: 42.71%
- One year: 11.27%
- Two year: 2.83%

### 2. Payment Method

Customers using electronic checks had the highest churn rate:

- Electronic check: 45.29%
- Mailed check: 19.11%
- Bank transfer (automatic): 16.71%
- Credit card (automatic): 15.24%

### 3. Customer Tenure

New customers had substantially higher churn than longer-tenure customers:

- New customers: 47.44%
- Existing customers: 23.64%
- Long-term customers: 9.51%

### 4. Additional Services

Customers with additional services such as Online Security, Online Backup, Device Protection, and Tech Support generally showed lower churn rates than customers without those services.

For example:

- Online Security: 14.61% vs. 41.77%
- Tech Support: 15.17% vs. 41.64%

These results show an association between service adoption and lower churn, but do not establish causation.

### 5. Contract + Tenure Segmentation

The highest churn segment was:

- Month-to-month + New Customer: 51.35%

This was higher than the overall churn rate for either new customers or month-to-month customers individually.

## Project Files

customer-churn-sql-analysis/
│
├── README.md
└── churn_analysis.sql


## Skills Demonstrated

- SQL data analysis
- Customer segmentation
- Churn rate calculation
- Aggregation and grouping
- Conditional logic with `CASE WHEN`
- Subqueries
- Data quality validation
- Business-oriented data interpretation

## Visualizations

### Churn Rate by Contract Type

![Churn Rate by Contract Type](Churn%20Rate%20by%20Contract%20Type.png)

### Churn Rate by Payment Method

![Churn Rate by Payment Method](Churn%20Rate%20by%20Payment%20Method.png)

### Churn Rate by Tenure Group

![Churn Rate by Tenure Group](Churn%20Rate%20by%20Tenure%20Group.png)

