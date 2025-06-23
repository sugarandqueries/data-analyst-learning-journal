## :chart_with_upwards_trend: Pivot Tables
* A powerful tool to calculate, summarize, and analyze data that lets you see comparisons, patterns, and trends in your data.

### 🧩 What You Can Do With It

- **Summarize data** (e.g., totals, averages, counts)
- **Group data** (by category, date, etc.)
- **Compare values** across rows and columns
- **Filter or slice data** interactively

---

### 📊 Basic Layout

| Section     | What Goes There                            |
|-------------|---------------------------------------------|
| **Rows**    | Categories to group by (e.g., Region, Year) |
| **Columns** | Secondary categories to break down further  |
| **Values**  | What you're measuring (e.g., Sum of Sales)  |
| **Filters** | Optional filters to narrow the dataset      |

---

### 🧠 Example

You have a sales dataset:

- **Rows** → Product  
- **Columns** → Year  
- **Values** → Sum of Sales  

This shows you the **total sales per product per year** — automatically calculated!

### 🔢 Frequency Tables
* Used for finding out how often each unique value in a column appears, only for **numerical** data. Expressed as a *count.*

### 📊 Proportion Table
* Uses **relative frequences** instead of absolute ones, meaning that the frequencies are expressed as a **percentage.** 
  * Calculated by diving how often a value occurs in a column (count) by the # of observations in that column (# of rows)
  * For example, you'd make a **PivotTable** with the rows as the label ```(Countries)``` and the then count of each row ```(could be ID number or order number)```
  * 
---

## Tables 
They use structured reference through a combo of the table name and column name, for example: ```Sales[Discount]``` with ```[Discount]``` being the column. 

---


### Time Series Data 📅 
* **Time series data**  is when you collect information from the same source at different times, like recording sales on the first day of each month.
* With PivotTables, you can change how often you look at your data—such as switching from monthly to quarterly views. This is called 🔄**resampling**.
* Many time series have *patterns* that repeat at certain times of the year, like higher sales in December. This is called **seasonality**.

---

