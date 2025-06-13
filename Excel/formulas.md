**Handy Excel Formulas Ahead!**

```=MEDIAN()```
* calculating the median helps when there is a huge outlier so averages aren’t skewed to the high outliers 

---

```=VLOOKUP(value_to_find, starting_column_to_find_it, index_for_return_value, false)```

*  value_to_find: The value you're trying to find
*  starting_column_to_find_it: The range, starting with the column that includes the value you're trying to find
*  index_for_return_value: The index number of the range where your answer is located
*  false: An exact (FALSE) or approximate (TRUE) return value

---
### Study AVERAGEIFS more- write down definition/use in own words
```=AVERAGEIFS(average_range, criteria_range1, criteria1, [criteria_range2, criteria2], ...)```
* Uses multiple criteria to determine which values it should act upon
#### Steps to use AVERAGEIFS
1. Create a table to store all your averages for each column
2. Insert the AVERAGEIF function
3. Select your average_range, i.e, windspeed
     * for criteria_range1, select your criteria and referring to your dataset, i.e., season, then select the value of the column that you want to use (like 1, 2, 3, etc)
     * for criteria_range2, select another criteria from another column, i.e., year, then select the value of the column you want to use (like 1, 2, 3, etc)

---

