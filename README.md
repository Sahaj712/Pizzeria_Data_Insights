# Pizzeria_Data_Insights
An end-to-end pizzeria analytics project: data collection, SQL setup, and Power BI dashboards. Explored sales trends, peak hours, and product performance using custom queries and visualizations to deliver actionable business insights.

Overview
This project provides a complete analytics solution for a pizzeria business. It includes a fully structured MySQL database, Power BI dashboards, SQL analysis queries, and exportable reports. The goal is to deliver actionable insights into sales, inventory, and operations using real-world business data.

Project Structure
/reports/                    # CSV analysis outputs from SQL queries
/sql/                        # SQL backup and schema files
/docs/                       # Database schema diagram (ERD)
/Order_Activity_Dashboard.pbix # Power BI dashboard (interactive)
/Order_Activity_Dashboard.pdf  # Power BI dashboard (PDF, read-only)
README.md

Contents
/sql/
pizzeria_db_backup.sql: Full database backup (schema and data) for MySQL.
pizzeria_db_schema.sql: Database schema only (table definitions).

/reports/
ingredient_inventory_status.csv: Ingredient stock status after order fulfillment.
ingredient_usage_report.csv: Ingredient usage breakdown by item and period.
order_ingredient_costs.csv: Ingredient cost analysis per order.

/docs/
pizzeria_db_erd.png: Entity Relationship Diagram (database structure visualization).

Other Files
Order_Activity_Dashboard.pbix: Power BI dashboard for interactive analysis.
Order_Activity_Dashboard.pdf: Exported PDF version of the dashboard for quick reference.

Database Schema
The pizzeria database is a normalized relational model. It manages orders, menu items, ingredients, inventory, staff scheduling, and customer/delivery information. The Entity Relationship Diagram is available in /docs/pizzeria_db_erd.png for reference.



Getting Started
1. Restore the Database
To create the full pizzeria database locally:
mysql -u your_username -p < sql/pizzeria_db_backup.sql

This will create all tables and insert all sample data.
Alternatively, use pizzeria_db_schema.sql to create just the schema.

2. Explore the Power BI Dashboard
Open Order_Activity_Dashboard.pbix in Power BI Desktop to interact with the visualizations.
If you do not have Power BI, view Order_Activity_Dashboard.pdf for a static version.

3. Review Analysis Reports
The /reports/ directory contains output CSVs from key SQL analysis queries.

Key Analyses and Features
Total sales, orders, and average order value
Sales and order breakdowns by category, item, address, and hour
Ingredient usage and costing per order
Staff shift scheduling and payroll analysis
Database schema diagram for quick understanding

Credits
All data and analytics were designed, queried, and visualized as part of an end-to-end business intelligence project.

For any questions, please refer to this repository or contact the project author.





