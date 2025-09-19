# Sales Analysis Project

![Sales Analysis](images/revenue_per_city.png)

## Overview
This project demonstrates **sales data analysis** using Python, Pandas, SQLAlchemy, and Matplotlib.  
It connects to a MySQL database, merges multiple tables (`Customers`, `Products`, `Orders`, `OrderDetails`), performs revenue and sales analysis, and visualizes insights.

---

## Features
- Calculate **total revenue**.
- Analyze **revenue per city**.
- Identify **top customers** by spending.
- Find **best-selling products** (by quantity and revenue).
- Track **monthly sales trends**.
- Segment customers into **repeat vs one-time buyers**.
- Export the final merged sales dataset to **CSV**.
- Generate **visualizations** for reports.

---

## Database Schema
| Table | Columns |
|-------|---------|
| Customers | CustomerID, Name, City, Country |
| Products | ProductID, ProductName, Price |
| Orders | OrderID, CustomerID, OrderDate |
| OrderDetails | OrderDetailID, OrderID, ProductID, Quantity |

---

## Installation

1. Clone this repository:
```bash
git clone https://github.com/your-username/sales-analysis-project.git
cd sales-analysis-project
