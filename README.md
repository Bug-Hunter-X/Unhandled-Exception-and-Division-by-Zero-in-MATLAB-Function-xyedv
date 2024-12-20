# Unhandled Exception and Division by Zero in MATLAB Function

This repository demonstrates a common MATLAB coding error involving unhandled exceptions and division by zero. The `myFunction` attempts to perform a calculation that might fail, and lacks robust error handling.

## Bug Report
The original `myFunction` is prone to errors:

1.  **Negative Input:** If the input is negative, it throws an error, but there is no graceful error handling. 
2.  **Division by Zero:** The `someCalculation` function performs a division that can lead to a division by zero error if the input is 5.

## Solution
The provided solution implements improved error handling to address these issues. It checks for negative input, handles potential `DivideByZero` errors, and provides informative error messages.