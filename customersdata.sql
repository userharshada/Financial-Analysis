CREATE DATABASE Finance;
SHOW DATABASES;
use Finance;
select * from customersdata;

--- Understanding Demographics and Credit Behavior--- 
--- Average Age of Customers: ---
SELECT AVG(Age) AS Average_Age FROM customersdata;
--- Total Number of Customers:---
SELECT COUNT(*) AS Total_Customers FROM customersdata;
--- Average Income: ---
SELECT AVG(`Income (USD)`) AS Average_Income FROM customersdata;
--- Highest Loan Amount Requested: ---
SELECT MAX(`Loan Amount Request (USD)`) AS Highest_Loan_Amount FROM customersdata;
--- Total Current Loan Expenses:---
SELECT SUM(`Current Loan Expenses (USD)`) AS Total_Loan_Expenses FROM customersdata;
--- Average Credit Score: ---
SELECT AVG(`Credit Score`) AS Average_Credit_Score FROM customersdata;
--- Number of Defaults:---
SELECT COUNT(`No. of Defaults`) AS Total_Defaults FROM customersdata;
--- Customers with Active Credit Cards:---
SELECT COUNT(*) AS Customers_with_Active_Credit_Card
FROM customersdata
WHERE `Has Active Credit Card` = 'Yes';
--- Property Types and their Count:---
SELECT `Property Type`, COUNT(*) AS Property_Count
FROM customersdata
GROUP BY `Property Type`;
--- Total Loan Sanctioned: ---
SELECT SUM(`Loan Sanction Amount (USD)`) AS Total_Loan_Sanctioned FROM customersdata;
--- Average Property Price: ---
SELECT AVG(`Property Price`) AS Average_Property_Price FROM customersdata;
--- Loan Requests by Profession: ---
SELECT Profession, COUNT(*) AS Request_Count
FROM customersdata
GROUP BY Profession;
--- Income Stability and Loan Sanctioned: ---
SELECT `Income Stability`, AVG(`Loan Sanction Amount (USD)`) AS Avg_Loan_Sanctioned
FROM customersdata
GROUP BY `Income Stability`;
--- Expense Analysis: ---
SELECT `Expense Type 1`, SUM(`Current Loan Expenses (USD)`) AS Total_Expense
FROM customersdata
GROUP BY `Expense Type 1`;
--- Dependents and Loan Amount Requested:---
SELECT Dependents, AVG(`Loan Amount Request (USD)`) AS Avg_Loan_Amount
FROM customersdata
GROUP BY Dependents;
--- Location-wise Loan Sanctioned:---
SELECT Location, SUM(`Loan Sanction Amount (USD)`) AS Total_Loan_Sanctioned
FROM customersdata
GROUP BY Location;
--- Average Property Age by Property Type:---
SELECT `Property Type`, AVG(`Property Age`) AS Avg_Property_Age
FROM customersdata
GROUP BY `Property Type`;
--- Loan Sanctioned for Different Employment Types:---
SELECT `Type of Employment`, SUM(`Loan Sanction Amount (USD)`) AS Total_Loan_Sanctioned
FROM customersdata
GROUP BY `Type of Employment`;
--- Average Income by Property Location:---
SELECT `Property Location`, AVG(`Income (USD)`) AS Avg_Income
FROM customersdata
GROUP BY `Property Location`;
--- Loan Sanctioned with Co-Applicant Status:--- 
SELECT `Co-Applicant`, SUM(`Loan Sanction Amount (USD)`) AS Total_Loan_Sanctioned
FROM customersdata
GROUP BY `Co-Applicant`;






