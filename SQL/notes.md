# SQL Basics
- **ANSI SQL** is a standardized version of SQL, ensuring the core remains functional accross all different dialects. For my current learning, I'm learning **SQLite** (this is what DataQuest uses for the curriculum)
- Use ```--``` to insert **comments**! They can be inline, useful for clarifying what a specific line of code does. 
- Use ```/*``` and ```*/``` to write **multi-line comments**

## C.R.U.D.
* The types of operations SQL can perform are often called "CRUD," aka "creatue, read, update, delete. For data professionals, we usually perform read operations. 


## 🧠 Key Concepts
- `SELECT`: used to choose different fields, `FROM`: tells SQL which table to read data from, `WHERE`
- `ORDER BY` and `LIMIT`: only returns the specified amount of records
  - **Records** are to **databases** as **rows** are to **spreadsheets**
  - **Fields** are **columns** of a **database**
- `GROUP BY` and `COUNT()`
- `INNER JOIN` vs `LEFT JOIN`
- ```*``` is a special character meaning "all"

### SELECT
- with the help of the ```AS``` keyword, you can **tempoarily rename the fields**
  - you can also just type the alias using **single or double quotes**, which is generally supported (AS is still perferred) 
  - ex: ```SELECT state_name AS 'State'```

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
