# Lab 2: Testing Get-UserInfo with Mocks

Welcome to Lab 2! In this lab, you will learn how to test PowerShell functions using mocks. 🎉

## Steps

1. **Open PowerShell**: Open your PowerShell console. 🖥️
2. **Navigate to the lab directory**: Use the `cd` command to navigate to the lab directory.
    ```powershell
    cd c:\dev\repos\ATZ-PesterLabs\labs\lab2
    ```
3. **Run the tests**: Execute the tests using the `Invoke-Pester` command.
    ```powershell
    Invoke-Pester -Script .\Get-UserInfo.tests.ps1
    ```
4. **Review the results**: Check the output to see the results of your tests. ✅

## Explanation

In this lab, we have a function `Get-UserInfo` that retrieves user information from Active Directory. To test this function, we mock the `Get-ADUser` command using Pester. This allows us to simulate different scenarios and verify that our function behaves as expected.

Happy testing! 🚀
