### Data Analysis Using SQL

-- top 5 transactions
SELECT * FROM transactions limit 5 ;

-- total no of transactions
SELECT count(*) FROM transactions;

-- total no of transactions for Chennai market
SELECT count(*) FROM transactions WHERE market_code = "Mark001";

-- transactions for USD currency
SELECT * FROM transactions WHERE currency = "USD";

-- total sales for year 2020
SELECT SUM(sales_amount) FROM transactions t INNER JOIN date d
ON t.order_date = d.date 
WHERE d.year= 2020 ;

-- total sales in chennai for year 2020
SELECT SUM(sales_amount) FROM transactions t INNER JOIN date d
ON t.order_date = d.date 
WHERE d.year= 2020 and t.market_code = "Mark001";

-- unique products in chennai market
SELECT DISTINCT product_code FROM transactions where market_code = "Mark001";

-- markets not in india
SELECT * FROM markets WHERE zone = "";

-- transactions with invalid sales amount
SELECT count(*) from transactions where sales_amount <= 0;

-- unique currency values
SELECT distinct currency from transactions;

-- total revenue for year 2020
SELECT SUM(t.sales_amount) FROM transactions t INNER JOIN date d ON t.order_date=d.date where d.year=2020;

-- total revenue for chennai market in year 2020
SELECT SUM(t.sales_amount) FROM transactions t INNER JOIN date d ON t.order_date=d.date where d.year=2020
and t.market_code="Mark001";
