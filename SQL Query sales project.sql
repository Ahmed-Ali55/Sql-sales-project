

   select* from sales 

   -- Data Cleaning


SELECT * FROM sales
WHERE 
    transactions_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantiy IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;
	
	--

	DELETE FROM sales
WHERE 
    transactions_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantiy IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;

	-- Data Exploration

-- How many sales we have?
SELECT COUNT(*) as total_sale FROM sales

-- How many uniuque customers we have ?

SELECT COUNT(DISTINCT customer_id) as total_sale FROM sales

-- Data Analysis & Business Key Problems & Answers

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)


 -- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

SELECT *
FROM sales
WHERE sale_date = '2022-11-05';

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 

SELECT 
  *
FROM sales
WHERE 
    category = 'Clothing'
    AND
    quantiy >= 4


-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
select
category,sum (total_sale) as total_sales
from sales
group by category;


-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.



-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.



-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

SELECT 
    category,
    gender,
    COUNT(*) as total_trans
FROM sales
GROUP 
    BY 
    category,
    gender
ORDER BY 1


-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.


SELECT 
    category,    
    COUNT(DISTINCT customer_id) as cnt_unique_cs
FROM sales
GROUP BY category

--end of project






