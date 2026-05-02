# SQL Basics
- **ANSI SQL** is a standardized version of SQL, ensuring the core remains functional accross all different dialects. For my current learning, I'm learning **SQLite** (this is what DataQuest uses for the curriculum)
- Use ```--``` to insert **comments**! They can be inline, useful for clarifying what a specific line of code does. 
- Use ```/*``` and ```*/``` to write **multi-line comments**

## C.R.U.D.
* The types of operations SQL can perform are often called "CRUD," aka "creatue, read, update, delete." For data professionals, we usually perform read operations. 

## 🧠 Key Concepts
- `SELECT`: used to choose different fields, `FROM`: tells SQL which table to read data from
- `LIMIT`: only returns the specified amount of records
  - **Records** are to **databases** as **rows** are to **spreadsheets**
  - **Fields** are **columns** of a **database**
- `ROUND`: rounds numerical values to a specified number of decimal places
  - ```ROUND(sales, 2) AS rounded_sales``` will round the sales field to 2 decimal places and rename it rounded_sales
- `UPPER() and LOWER()` convert all characters in a given text string to upper or lowercase
  - This is useful for **normalizing text data** when importing from various sources. 
- **Concatenate** pieces of text in SQLite, use `||` on each side of a string to combine them into one
  - ``SELECT city || "," || state AS "location"``

### SELECT
- with the help of the ```AS``` keyword, you can **temporarily rename the fields**
  - you can also just type the alias using **single or double quotes**, which is generally supported (AS is still perferred) 
  - ex: ```SELECT state_name AS 'State'```

### Divison
- Using the ```/``` symbol only performs *integer* division, discarding the factional part
- To combat this, we can change the datatype of a column using ```CAST(column AS new_datatype)```
  - ex: ```CAST(3 AS REAL) / 2 AS three_div_two``` will print:
  - | three_div_two | 
    | ------------- |
    | 1.5           | 

### WHERE
- `WHERE` will specify any criteria that records in those fields should meet
  - ```WHERE sales > 10000;``` checks to see if there's any sales over $10k

## 💡 Practice Query
```sql
SELECT order_id, product_name, sales, quantity,
       CASE 
       WHEN sales BETWEEN 0 AND 50 THEN 'small sale'
       WHEN sales BETWEEN 51 AND 100 THEN 'medium sale'
       ELSE 'large sale'
       END AS sales_amount                        
  FROM orders
 WHERE order_id LIKE 'CA%'
 ORDER BY quantity
 LIMIT 10;
```
* This query returns a list of orders by sale size

### 💡 2nd Practice Query
```sql
SELECT city || ", " || state || " " || postal_code AS address,
    sales,
    ROUND(sales/0.7, 2) AS tax,
    4.99 AS shipping_cost,
    ROUND(sales+4.99 *0.7, 2) AS total_cost
FROM orders
LIMIT 10;
```
* This query combines city, state, and postal code into one field, calculates the tax, shipping cost, and totals them. 