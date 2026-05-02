# 30-Day SQL Learning Path

## Week 1: Core SQL Foundations

### Day 1: SELECT + FROM

- Learn how to pull columns from a table.

```sql
SELECT part_number, quantity
FROM inventory;
```

### Day 2: WHERE Filters

- Learn how to filter rows using conditions.

```sql
SELECT *
FROM inventory
WHERE quantity < 5;
```

- Practice using these operators:
  - `=`
  - `<>`
  - `>`
  - `<`
  - `AND`
  - `OR`

### Day 3: ORDER BY

- Learn how to sort query results.

```sql
SELECT *
FROM inventory
ORDER BY quantity ASC;
```

### Day 4: TOP / LIMIT

- Learn how to return a limited number of rows.

```sql
SELECT TOP 10 *
FROM inventory;
```

### Day 5: DISTINCT

- Learn how to return unique values.

```sql
SELECT DISTINCT location
FROM inventory;
```

### Day 6: Practice Day

- Try writing queries for:
  - Low stock items
  - Items in one hub
  - Highest quantity parts

### Day 7: Mini Project

- Create a report called **Warehouse Stock Watchlist**.
- Include these columns:
  - Part #
  - Description
  - Qty
  - Location

## Week 2: Aggregation Skills

### Day 8: COUNT

- Learn how to count rows.

```sql
SELECT COUNT(*)
FROM inventory;
```

### Day 9: SUM

- Learn how to total numeric values.

```sql
SELECT SUM(quantity)
FROM inventory;
```

### Day 10: AVG / MIN / MAX

- Learn how to calculate averages, minimums, and maximums.

```sql
SELECT AVG(quantity)
FROM inventory;
```

### Day 11: GROUP BY

- Learn how to group rows before aggregating.

```sql
SELECT location, COUNT(*)
FROM inventory
GROUP BY location;
```

### Day 12: HAVING

- Learn how to filter grouped results.

```sql
SELECT location, COUNT(*)
FROM inventory
GROUP BY location
HAVING COUNT(*) > 20;
```

### Day 13-14: Project

- Create a **Hub Performance Dashboard**.
- Include:
  - Items per location
  - Total stock per hub
  - Average qty per hub

## Week 3: JOINS

### Day 15: INNER JOIN

- Learn how to return matching rows from two tables.

```sql
SELECT i.part_number, p.description
FROM inventory i
JOIN parts p
ON i.part_number = p.part_number;
```

### Day 16: LEFT JOIN

- Learn how to return all records from the left table, even when matches are missing.
- Great for finding missing matches.

```sql
SELECT *
FROM inventory i
LEFT JOIN parts p
ON i.part_number = p.part_number;
```

### Day 17: Multiple Joins

- Practice joining:
  - Inventory
  - Parts
  - Vendors

### Day 18: Aliases

- Learn how to use table aliases to make joins easier to read.

```sql
SELECT i.part_number, p.description
FROM inventory i
JOIN parts p
ON i.part_number = p.part_number;
```

### Day 19-21: Project

- Create a **Receiving Exception Report**.
- Include:
  - Parts received
  - Missing descriptions
  - No assigned vendor
  - Duplicate SKUs

## Week 4: Analyst Level SQL

### Day 22: CASE Statements

- Learn how to create conditional values in a query.

```sql
SELECT part_number,
CASE
  WHEN quantity = 0 THEN 'Out'
  WHEN quantity < 5 THEN 'Low'
  ELSE 'Good'
END AS stock_status
FROM inventory;
```

### Day 23: Dates

- Learn how to filter records by date.

```sql
WHERE received_date >= GETDATE() - 30;
```

### Day 24: Subqueries

- Learn how to use one query inside another query.

### Day 25: CTEs

- Learn how to use common table expressions to organize a query.

```sql
WITH lowstock AS (
  SELECT *
  FROM inventory
  WHERE quantity < 5
)
SELECT *
FROM lowstock;
```

### Day 26: Window Functions

- Learn how to rank or number rows within groups.

```sql
SELECT location,
       quantity,
       ROW_NUMBER() OVER(PARTITION BY location ORDER BY quantity DESC)
FROM inventory;
```
