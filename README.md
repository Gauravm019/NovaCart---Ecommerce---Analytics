# NovaCart---Ecommerce---Analytics
SQL and Business Intelligence analysis of student buying patterns for NovaCart E-Commerce.

## Project Overview

NovaCart E-Commerce Pvt. Ltd. engaged Insight Analytics Consulting Pvt. Ltd. to analyze student buying patterns across different age groups.

The project uses a relational database and SQL-based analytics to understand customer purchasing behaviour, spending habits, product preferences, payment methods, delivery preferences, customer satisfaction, wishlist behaviour, and eco-friendly product purchases.

The analysis is designed to support targeted marketing, customer engagement, product recommendations, and data-driven business decisions.

---

## Project Objectives

- Analyze student purchasing behaviour across different age groups.
- Identify popular product categories and brands.
- Analyze student spending and purchase frequency.
- Understand payment method and delivery preferences.
- Measure customer satisfaction through product ratings.
- Analyze wishlist and purchasing behaviour.
- Identify monthly purchasing trends.
- Analyze eco-friendly product purchases.
- Develop business intelligence dashboards.
- Introduce recommendation system concepts.
- Understand data warehouse and dimensional modelling concepts.

---

## Technologies Used

- **Database:** Microsoft SQL Server
- **SQL:** Joins, Aggregations, GROUP BY, CASE, Subqueries
- **Dashboard:** Microsoft Excel / Business Intelligence Dashboard
- **Database Design:** ER Modeling
- **Version Control:** GitHub

---

## Database Design

The project consists of six relational tables:

1. **STUDENT**
2. **PRODUCT_CATEGORY**
3. **PRODUCT**
4. **PURCHASE**
5. **REVIEW**
6. **WISHLIST**

### Table Relationships

- A student can make multiple purchases.
- A product can be purchased multiple times.
- A product belongs to one product category.
- A purchase can have one review.
- A student can add multiple products to their wishlist.
- A product can appear in multiple students' wishlists.

---

## ER Diagram

The ER diagram represents the database structure and relationships between students, purchases, products, categories, reviews, and wishlists.


---

## SQL Analysis

SQL queries were developed to analyze different aspects of student purchasing behaviour.

### Major Analyses

- Revenue by Product Category
- Student-wise Spending
- Monthly Sales and Revenue
- Average Rating by Category
- Most Popular Products
- Wishlist vs Purchase Interest
- Payment Method Analysis
- Delivery Preference Analysis
- Eco-Friendly Product Performance
- Gender-wise Purchase Analysis
- City-wise Purchase Analysis
- College-wise Purchase Analysis
- Age Group Purchase Analysis
- Brand-wise Sales Analysis
- Product Rating Analysis
- Product Revenue Analysis
- Rating Distribution
- Purchase Frequency by Age Group
- Rating vs Purchase Frequency
- Preferred Category by Age Group
- Payment Method by Age Group
- Eco-Friendly Purchases by Age Group

All SQL queries are available in the **SQL Queries** folder.

---

## Business Intelligence Dashboard

The dashboard provides a visual overview of NovaCart's student purchasing behaviour.

### Dashboard Includes

- Total Revenue
- Total Orders
- Average Order Value
- Eco-Friendly Revenue
- Revenue by Product Category
- Monthly Revenue Trend
- Payment Method Analysis
- Revenue by Age Group
- Brand Revenue
- Product Rating Distribution

The dashboard is available in the **Dashboard** folder.

---

## Key Business Insights

The analysis helps NovaCart understand:

- Which student age groups contribute the most revenue.
- Which product categories are most preferred.
- Which brands generate higher sales.
- Which payment methods are most commonly used.
- Which months have higher purchasing activity.
- Which products receive better customer ratings.
- How frequently different age groups make purchases.
- Which age groups show stronger interest in eco-friendly products.
- How wishlist behaviour can indicate potential future purchases.

---

## Recommendation System Concept

NovaCart can use customer purchase history to create personalized product recommendations.

A basic recommendation approach can consider:

1. Previous purchases
2. Product categories
3. Wishlist items
4. Popular products
5. Customer age group
6. Product ratings

### Example

```text
Student Purchase History
          ↓
Identify Preferred Category
          ↓
Analyze Similar Products
          ↓
Check Popular Products
          ↓
Check Wishlist Behaviour
          ↓
Generate Personalized Recommendations
