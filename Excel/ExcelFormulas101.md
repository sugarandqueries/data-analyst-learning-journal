## Excel Formulas 101
Notes I take while I progress through Maven Analytics' Microsoft Excel: Formulas & Functions Course

### Formula Syntax
=MATCH(lookup_value, lookup_array, [match_type])
1. Function name (MATCH) is what type of operation you're about to perform
2. Arguments (lookup_value, lookup_array, [match_type]) provide Excel the info needed to perform the operation
   - Not all arguments are required, optional ones are *[surrounded by brackets]*

### Reference Types
- Allow you to reuse and recycle formulas across multiple cells, without having to manually update the references
- You can fix entire cells ($A$1) or just rows/columns ($A1 or A$1)

### Auditing Tools
- **Trace Precedents**: tracks cells that *affect* the value of the *selected* cell
  - ```Ctrl+[``` selects all cells that feed into the selected cell
- **Trace Dependents**: tracks cells that *are affected by* the value of the *selected* cell
- **Show Formulas**: displays the formulas used in the worksheet instead of the resulting values
  - useful for checking formula accuracy and consistency
- **Evaluate Formula** allows you to cycle through each calculation step to see how each component evaluates and pinpoint the source of the error
- **Error Checking** scans the sheet for errors and provides a summary with options to help identify and fix the problem 

⭐Pro Tip: Use ```Ctrl+G``` -> Formulas to view which cells are formulas quickly 

### Easy Way to fix missing zero for Zip Codes
```=IF(LEN(K2)=5,TEXT(K2,"#####"),IF(LEN(K2)=4, TEXT(K2,"0####")))```
- With K2 being the cell reference for the Zip Code
- This formula ensures that all Zip Codes are displayed in a 5-digit format, adding a leading zero if necessary.