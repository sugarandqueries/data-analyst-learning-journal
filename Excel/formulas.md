**Handy Excel Formulas Ahead!**

### MEDIAN()
```=MEDIAN()```
* calculating the median helps when there is a huge outlier so averages aren’t skewed to the high outliers 

---
### VLOOKUP() 
```=VLOOKUP(value_to_find, starting_column_to_find_it, index_for_return_value, false)```

*  value_to_find: The value you're trying to find
*  starting_column_to_find_it: The range, starting with the column that includes the value you're trying to find
*  index_for_return_value: The index number of the range where your answer is located
*  false: An exact (FALSE) or approximate (TRUE) return value

---
### AVERAGEIF() 
```=AVERAGEIFS(average_range, criteria_range1, criteria1, [criteria_range2, criteria2], ...)```
* Uses multiple criteria to determine which values it should act upon
#### How to Use AVERAGEIFS in Excel
1. **Set up a table** where you'll store the average results.
2. Use the AVERAGEIFS function to calculate the average based on conditions.
3. **average_range** – choose the column with the numbers you want to average (e.g., windspeed).
4. **criteria_range1** – pick the first condition column (like "Season") and specify the value to filter by (e.g., 1, 2, 3...).
5. **criteria_range2** – pick a second condition column (like "Year") and its specific value (e.g., 2020, 2021...).

---
### =DATEDIF()
```=DATEDIF(A1, B1, "d")``` 
* Calculate the difference between two dates in days. "d" is # of days, "m" is # of months

---
### =UNIQUE()
```=UNIQUE()```
* Lists all distinct values in any range, aka the unique values
* Wrap it inside the ```=COUNTA()``` function to find the number(count) of distinct values 
  * ```=COUNTA(UNIQUE(products[country_of_origin]))```

### =RANDARRAY()
```=RANDARRAY()```
* Creates random data you can experiment with!
  * ```=RANDARRAY(100, 1, 1, 30, TRUE)``` will generate 100 random integers between 1 and 30. 

![alt text](image-3.png)