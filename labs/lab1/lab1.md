# Lab 1: Testing PowerShell Functions with Pester

## Introduction

In this lab, we will learn how to test PowerShell functions using Pester. Pester is a testing framework for PowerShell, and it is used to write and run tests for PowerShell scripts and modules.

## Prerequisites

1. Ensure you have PowerShell installed. 🖥️
2. Ensure you have the `Pester` module installed. You can install it using the following command:
    ```powershell
    Install-Module -Name Pester 
    ```

## Function to Test

We have a simple function `Add-Numbers` that adds two numbers and returns the result. The function is defined in `Add-Numbers.ps1`.

## Writing Tests

We will write tests for the `Add-Numbers` function in a separate file named `Add-Numbers.tests.ps1`.

## Running Tests

To run the tests, we will use the `Invoke-Pester` cmdlet. Follow the steps below to run the tests:

1. Open a PowerShell terminal.
2. Navigate to the directory containing the test file `Add-Numbers.tests.ps1`.
3. Run the following command:

```powershell
Invoke-Pester -Script .\Add-Numbers.tests.ps1
```

This command will execute the tests defined in the `Add-Numbers.tests.ps1` file and display the results.

## Conclusion

By following this lab, you have learned how to write and run tests for PowerShell functions using Pester. Testing is an important part of software development, and Pester makes it easy to test your PowerShell scripts and modules.
