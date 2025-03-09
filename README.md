# Linear Regression for Predicting House Prices (SQL-based ML Project)
Objective: Use SQL to perform linear regression and predict house prices based on square footage.
Algorithm: Linear Regression (implemented in SQL).
Dataset: Sample dataset loaded into a PostgreSQL database.
Files:
create_dataset.sql – Creates the houses table and inserts sample data.
linear_regression.sql – Runs SQL queries to compute linear regression parameters.

To run the query, run the following command in the terminal;
export PGHOST=your database endpoint
export PGPORT=5432
export PGDATABASE=your database username
export PGUSER=your master username
export PGPASSWORD=your master password
export PGSSLMODE=require