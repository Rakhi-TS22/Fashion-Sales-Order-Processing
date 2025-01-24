# 🛒 SQL Case Study: ABC Fashion Sales Order Processing


# 📌 Overview

ABC Fashion, a leading retailer, manages customer orders and interactions through a Sales Order Processing System. This case study explores SQL queries for data management, constraints, and retrieval operations to optimize sales performance.

📂 Dataset
The database consists of three key tables:

Salesman Table – Contains sales representatives' details.
Customer Table – Stores customer information and their interactions.
Orders Table – Tracks customer purchases and order details.
🔗 Table Creation & Sample Data

🛠️ SQL Tasks
This repository includes essential SQL operations such as:

✅ Data Insertion – Add a new record in the Orders table.

✅ Constraints Management:

Add Primary Key to SalesmanId in Salesman table.
Add Default Constraint for City column in Salesman table.
Add Foreign Key to SalesmanId in Customer table.
Ensure Customer_name column in Customer table is NOT NULL.

✅ Data Retrieval & Filtering:
Fetch customers with names ending in ‘N’ and purchases over $500.

✅ SET Operators:
Retrieve unique SalesmanId values from two tables.
Find SalesmanId without duplicates between tables.

✅ Conditional Queries:
Display Order Date, Salesman Name, Customer Name, Commission, and City for purchases between $1500 and $3000.

✅ Joins:
Use a RIGHT JOIN to fetch all records from Salesman and Orders tables.

🔍 Additional Features
Data integrity enforcement with constraints.
Efficient data filtering using SQL functions & operators.
Optimized queries for business insights.
