## :chart_with_upwards_trend: Pivot Tables :chart_with_upwards_trend:
* A powerful tool to calculate, summarize, and analyze data that lets you see comparisons, patterns, and trends in your data.
* **Dimensions** are the categories you want to analyze (like products or regions), and **Measures** are the values you want to calculate (like sales or profit).
* **Summarize Values by**: an option that determines how the data will be aggregated.
  - **Sum**: Adds up all the values.
  - **Average**: Calculates the mean of the values.
  - **Count**: Counts the number of entries.
* **Show Values As**: an option that changes how the values are displayed.
  - **% of Grand Total**: Shows each value as a percentage of the overall total.
  - **% of Row Total**: Shows each value as a percentage of the total for its row.
  - **% of Column Total**: Shows each value as a percentage of the total for its column.
⭐Pro Tip: It's always best to strive for a long, narrow format for your PivotTable appearance, which makes it easier to read and analyze.

### 🧩 What You Can Do With It

- **Summarize data** (e.g., totals, averages, counts)
- **Group data** (by category, date, etc.)
- **Compare values** across rows and columns
- **Filter or slice data** interactively

---

### 📊 Basic Layout 📊

| Section     | What Goes There                            |
|-------------|---------------------------------------------|
| **Rows**    | Categories to group by (e.g., Region, Year) |
| **Columns** | Secondary categories to break down further  |
| **Values**  | What you're measuring (e.g., Sum of Sales)  |
| **Filters** | Optional filters to narrow the dataset      |

---

### 🧠 Example 🧠

You have a sales dataset:

- **Rows** → Product  
- **Columns** → Year  
- **Values** → Sum of Sales  

This shows you the **total sales per product per year** — automatically calculated!

### 🔢 Frequency Tables 🔢
* Used for finding out how often each unique value in a column appears, only for **numerical** data. Expressed as a *count.*

### 📊 Proportion Table 📊
* Uses **relative frequences** instead of absolute ones, meaning that the frequencies are expressed as a **percentage.** 
  * Calculated by diving how often a value occurs in a column (count) by the # of observations in that column (# of rows)
  * For example, you'd make a **PivotTable** with the rows as the label ```(Countries)``` and the then count of each row ```(could be ID number or order number)```

### :calendar: Automatic Date Grouping :calendar:
* Pivot Tables automatically group dates into **years, quarters, months, and days**.
* You can change this by right-clicking on a date field in the Pivot Table and selecting "Ungroup" to see the individual dates.

## Tables 
They use structured reference through a combo of the table name and column name, for example: ```Sales[Discount]``` with ```[Discount]``` being the column. 

---

### 🕜 Time Series Data 🕜 
* **Time series data**  is when you collect information from the same source at different times, like recording sales on the first day of each month.
* With PivotTables, you can change how often you look at your data—such as switching from monthly to quarterly views. This is called 🔄**resampling**.
* Many time series have *patterns* that repeat at certain times of the year, like higher sales in December. This is called **seasonality**.

---

### Slicers & Timelines
* **Slicers** are visual filters that let you quickly filter data in a PivotTable or table.
* **Timelines** are a special type of slicer for filtering dates in PivotTables.
  
⭐Pro Tip: Use the "Report Connections" option in the Slicer tab to link slicers to *multiple Pivot Tables* that share the same source data.


## 🧮 Calculated Fields 🧮
* These allow you to create measures based on existing fields in your PivotTable.
* Calculated Fields are **always based on the SUM of the fields** they contain. 