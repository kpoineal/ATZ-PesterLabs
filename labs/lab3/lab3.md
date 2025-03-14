# Lab 3: Validating Azure Resource Group IDs with Pester

## Objective
In this lab, you will learn how to validate Azure resource group IDs using a PowerShell function and Pester tests. The goal is to ensure that the resource group IDs follow the correct format and handle both valid and invalid inputs appropriately.

## Instructions

1. **Understand the Function:**
   - Open the `Test-WAFResourceGroupId.ps1` file.
   - This script contains the `Test-WAFResourceGroupId` function, which validates an array of resource group IDs against a specific pattern.

2. **Review the Function Code:**
   - The function uses a regular expression pattern to match the correct format of Azure resource group IDs.
   - If any ID does not match the pattern, the function throws an error.
   - It's possible that the function may not handle all edge cases or invalid inputs correctly. **You may need to update the function to improve its behavior.**

3. **Understand the Pester Tests:**
   - Open the `Test-WAFResourceGroupId.tests.ps1` file.
   - This script contains Pester tests that validate the behavior of the `Test-WAFResourceGroupId` function.

4. **Review the Pester Tests:**
   - The tests are organized into two contexts: valid and invalid resource group IDs.
   - For valid IDs, the tests check that the function returns `true`.
   - For invalid IDs, the tests check that the function throws an appropriate exception.
   - The tests use the `Should` and `ShouldThrow` assertions to validate the function's behavior.
   - The tests also include a test that verifies the function's behavior when no IDs are provided.
   - The tests should also include a test that verifies the function's behavior when an array of resource group IDs is provided.

5. **Run the Tests:**
   - Use the `Invoke-Pester` command to run the tests and verify that the function behaves as expected.

6. 5. **Fix the test** 
   - Make the necessary adjustments to the PowerShell or the Pester test to make it correct! ✅

## Value of Pester Tests
Pester tests are valuable for validating inputs because they:
- Ensure that your function correctly handles both valid and invalid inputs.
- Help catch errors early in the development process.
- Provide a safety net for future changes, ensuring that new code does not break existing functionality.

By completing this lab, you will gain hands-on experience with writing and running Pester tests to validate input data, which is a crucial skill for maintaining robust and reliable PowerShell scripts.
