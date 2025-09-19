import pandas as pd
from sqlalchemy import create_engine

# format: mysql+mysqlconnector://username:password@host:port/dbname
engine = create_engine("mysql+mysqlconnector://root:root@localhost/salesdb")

customers_df = pd.read_sql("SELECT * FROM Customers", engine)
products_df  = pd.read_sql("SELECT * FROM Products", engine)
orders_df    = pd.read_sql("SELECT * FROM Orders", engine)
details_df   = pd.read_sql("SELECT * FROM OrderDetails", engine)

print(customers_df.head())
print(products_df.head())
print("2\n")

sales = (details_df
         .merge(orders_df, on="OrderID")
         .merge(customers_df, on="CustomerID")
         .merge(products_df, on="ProductID"))
print("THIS IS MERGED DATA " , "\n")
print(sales)

print("\n")
sales['REVENUE'] = sales["Quantity"] * sales["Price"]
print("TOP SALES " , "\n")
print(sales.head())


# BASIC ANALYSIS

# Total Revenue
total_revenue = sales['REVENUE'].sum()
print(total_revenue)

# Revenue per City
print("Revenue per City" , "\n")
city = sales.groupby('City') ['REVENUE'].sum() .sort_values(ascending=False)
print(city)

# Top 5 Customers by Spending
print("Top 5 Customers by Spending" , "\n")
spending = sales.groupby('Name') ['REVENUE'].sum().sort_values(ascending = False) .head(5)
print(spending)

# Best-Selling Product (by Quantity)
print("Best-Selling Product (by Quantity)" , "\n")
best = sales.groupby('ProductName') ['Quantity'].sum().sort_values(ascending = False)
print(best)

# Highest Revenue Product
print("Highest Revenue Product" "\n")
highest = sales.groupby('ProductName') ['REVENUE'].sum().sort_values(ascending = False)
print(highest)

# Monthly Sales Trend (Time-Series Analysis)
print("Monthly Sales Trend" , "\n")
sales['OrderDate'] = pd.to_datetime(sales['OrderDate'])
monthly_revenue = sales.groupby(sales['OrderDate'].dt.to_period('M'))['REVENUE'].sum()
print(monthly_revenue)

# Customer Segmentation (Repeat vs One-time)
print("Customer Segmentation (Repeat vs One-time)" , "\n")
customer_orders = sales.groupby('CustomerID')['OrderID'].nunique()
repeat_customers = (customer_orders > 1).sum()
one_time_customers = (customer_orders == 1).sum()
print("Repeat Customers:", repeat_customers)
print("One-time Customers:", one_time_customers)

# sales to csv
print("sales successfully converted to csv" , "\n")
sales.to_csv("sales_report.csv", index=False)

# Matplotlib

import matplotlib.pyplot as plt

# --- 1. Revenue per City ---
plt.figure(figsize=(10,6))
city.plot(kind="bar", color="skyblue")
plt.title("Revenue per City", fontsize=16)
plt.xlabel("City")
plt.ylabel("Revenue")
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.show()


# --- 2. Top 5 Customers by Spending ---
plt.figure(figsize=(10,6))
spending.plot(kind="bar", color="orange")
plt.title("Top 5 Customers by Spending", fontsize=16)
plt.xlabel("Customer")
plt.ylabel("Total Spending")
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.show()


# --- 3. Best-Selling Products (Quantity) ---
plt.figure(figsize=(10,6))
best.head(10).plot(kind="bar", color="green")   # Top 10 products
plt.title("Top 10 Best-Selling Products (by Quantity)", fontsize=16)
plt.xlabel("Product")
plt.ylabel("Quantity Sold")
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.show()


# --- 4. Highest Revenue Products ---
plt.figure(figsize=(10,6))
highest.head(10).plot(kind="bar", color="purple")
plt.title("Top 10 Products by Revenue", fontsize=16)
plt.xlabel("Product")
plt.ylabel("Revenue")
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.show()


# --- 5. Monthly Sales Trend ---
plt.figure(figsize=(12,6))
monthly_revenue.plot(kind="line", marker="o", color="red")
plt.title("Monthly Sales Trend", fontsize=16)
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.grid(True, linestyle="--", alpha=0.6)
plt.tight_layout()
plt.show()


# --- 6. Customer Segmentation ---
plt.figure(figsize=(6,6))
plt.pie([repeat_customers, one_time_customers],
        labels=["Repeat Customers", "One-time Customers"],
        autopct="%1.1f%%", startangle=140, colors=["#66b3ff","#ff9999"])
plt.title("Customer Segmentation", fontsize=16)
plt.show()

