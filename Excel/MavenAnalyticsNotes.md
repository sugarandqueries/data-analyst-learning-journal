## Spreadsheet Fundamentals
* A **spreadsheet** is a **grid of cells** arranged into rows and columns. 
  * Each **cell** can only store **one data type** (numbers, dates, text, or binary)
  * You can **sort and filter** data in a table in **ascending or descending** order
    * or you can filter manually using a specific condition based on its data type
  
### Data Validation
* Allows you to limit the values that a **cell** will accept
  * You can also add **dropdown** lists and **checkboxes** to cells to facilitate user input

### Conditional Formatting
* Allows you to format **cells** that meet a criteria
  * Examples include **color scales, data bars, or icon sets**


## Formula & Function Syntax
* **Formulas** are calculations that a performed in cells that start with "="
* **Functions** are preset calculations used in formulas that take arguments as inputs between ( ) and return an output

### Function Syntax
* `=SUMIF(range, criteria, [sum_range])`
  * **arguments** are surrounded by **parentheses** and separated by commas
  * **optional arguments** are surrounded by brackets

#### Types of Functions
1. Traditional functions that return **one value** 
    * ex: `=SUM(D2:D32)` - adds all the values in the specified range
2. **Array functions** that return **multiple values**
    * ex: `=UNIQUE(C2:C9)` - returns a list of unique cell values
3. **Volatile functions** that recalculate automatically
    * `=NOW()` - returns the current date and time