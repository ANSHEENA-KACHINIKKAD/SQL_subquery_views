# SQL_subquery_views

## Objective

Creation of database ,table and perform basic SQL subqueries and views tasks.
## Steps

Created a databse and also created 2 tables with name Country and persons ,then performed sql subqueries staements.
Created a database named "product" ,within the database created a table with name " Customer" then create morethan one views and then performes DML operations on it.

## Tables
Country
![Screenshot (216)](https://github.com/user-attachments/assets/90f17119-6421-4fd3-8ce8-c819681206ff)

persons
![Screenshot (217)](https://github.com/user-attachments/assets/1a34493f-7158-4b9d-90c0-52f2a71a3c5e)

Customer
![Screenshot (218)](https://github.com/user-attachments/assets/8dc01971-fa9b-44b7-b4ab-9142501854fa)

## Questions

1. Find the number of persons in each country.
   
2. Find the number of persons in each country sorted from high to low.
   
3. Find out an average rating for Persons in respective countries if the average is greater than 3.0

4. Find the countries with the same rating as the USA. (Use Subqueries)

5. Select all countries whose population is greater than the average population of all nations

-------------------------------------------------------------------------------------------------------------------
(Create a database named Product and create a table called Customer with the following fields in the Product database: Customer_Id - Make PRIMARY KEY First_name Last_name Email Phone_no Address City State Zip_code Country )

1. Create a view named customer_info for the Customer table that displays Customer’s Full name and email address. Then perform the SELECT operation for the customer_info view.

2. Create a view named US_Customers that displays customers located in the US.

3. Create another view named Customer_details with columns full name(Combine first_name and last_name), email, phone_no,City and state.

4. Update phone numbers of customers who live in San jose for Customer_details view.

5. Count the number of customers in each state and show only states with more than 3 customers.

6. Write a query that will return the number of customers in each state, based on the "state" column in the "customer_details" view.

7. Write a query that returns all the columns from the "customer_details" view, sorted by the "state" column in ascending order.

## Results

https://github.com/ANSHEENA-KACHINIKKAD/SQL_subquery_views/blob/main/Subquery_view_sql_8.sql

## Key Points:
 A subquery is a SELECT statement nested within another SQL statement. It's like a query within a query. It's used to filter data based on conditions involving the results of another query.

 A view in SQL is a virtual table that doesn't store data directly. It's a saved SQL query that acts as a customized view of data from one or more tables. Views can simplify complex queries, enhance data security, and provide tailored data views for different users.

