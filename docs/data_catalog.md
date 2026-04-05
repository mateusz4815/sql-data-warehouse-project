# Data Dictionary – Gold Layer

## Overview
The **Gold Layer** represents the business-level data model designed for analytical and reporting purposes.  
It consists of **dimension tables** and **fact tables** that store enriched and structured data used for business insights.

---

## 1. gold.dim_customers

### Purpose
Stores customer details enriched with **demographic** and **geographic** information.

---

### Columns

| Column Name       | Data Type     | Description |
|-------------------|---------------|------------|
| customer_key      | INT           | Surrogate key uniquely identifying each customer record in the dimension table. |
| customer_id       | INT           | Unique numerical identifier assigned to each customer. |
| customer_number   | NVARCHAR(50)  | Alphanumeric identifier representing the customer, used for tracking and referencing. |
| first_name        | NVARCHAR(50)  | The customer's first name, as recorded in the system. |
| last_name         | NVARCHAR(50)  | The customer's last name or family name. |
| country           | NVARCHAR(50)  | The country of residence for the customer (e.g., 'Poland'). |
| marital_status    | NVARCHAR(50)  | The marital status of the customer (e.g., 'Married'). |
| gender            | NVARCHAR(50)  | The gender of the customer (e.g., 'Male'). |
| birthdate         | DATE          | The date of birth of the customer (format: YYYY-MM-DD, e.g., 1990-10-10). |
| create_date       | DATE          | The date when the customer record was created in the system. |

---
