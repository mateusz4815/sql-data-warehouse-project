/*
======================================================================
Quality Checks 
======================================================================
Script Purpose:
  This sccipt performs quality checks to validate the integrity, consistency, and accuracy od the Gold Layer.
  These check ensure:
  - Uniqueness of surrogate keys in dimension tables.
  - Referential integrity between fact and dimension tables.
  - Validiation of relationship in the data model for analytical purposes.

Usage Notes:
  - Run these checks after data loading Silver Layer.
  - Investigate and resolve any discrepancies found during the checks.
======================================================================
*/

-- ======================================================================
-- Chekcing 'gold.dim_customers'
-- ======================================================================
-- Check for Uniqueness of Customer Key in gold.dim_customers 
-- Expectations: No Result 
SELECT 
  customer_key,
  COUNT(*) AS duplicate_count 
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- ======================================================================
-- Checking 'gold.fact_sales'
-- ======================================================================
-- Check the data model connectivity between fact and dimensions 
SELECT *
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c 
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p 
ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL 
