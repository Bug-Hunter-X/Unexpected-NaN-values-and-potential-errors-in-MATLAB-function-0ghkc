# MATLAB Function Bug: Unexpected NaN Values and Error Handling

This repository demonstrates a common error in MATLAB functions where unexpected NaN values are returned without clear error handling and a helper function may throw an error. The `bug.m` file contains the buggy code. The `bugSolution.m` file provides a corrected version with improved error handling.

## Bug Description

The `myFunction` function calculates some values and could produce NaN values without informing the user about this occurrence. Also the `someCalculation` might fail if the input value is zero.

## Solution

The `bugSolution.m` file demonstrates how to fix the issues by:

1.  Adding explicit error checking and handling (using `try-catch` block). 
2.  Providing informative error messages when an error occurs.
3.  Using `assert` for checking preconditions and input validation.