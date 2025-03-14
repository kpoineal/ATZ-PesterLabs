# Import the function to be tested
. $PSScriptRoot\Add-Numbers.ps1

Describe "Add-Numbers" {
    It "should add two positive numbers correctly" {
        # **Hint**: The result of the function should be 5 when adding 2 and 3. Maybe our function isn't adding the numbers correctly?
        $result = Add-Numbers -a 2 -b 3
        $result | Should -Be 5
    }

    It "should add a positive and a negative number correctly" {
        # **Hint**: The result of the function should be 2 when adding 5 and -3. Maybe our function isn't adding the numbers correctly?
        $result = Add-Numbers -a 5 -b -3
        $result | Should -Be 2
    }

    It "should add two negative numbers correctly" {
        # **Hint**: The result of the function should be -10 when adding -4 and -6. Maybe our function isn't adding the numbers correctly?
        $result = Add-Numbers -a -4 -b -6
        $result | Should -Be -10
    }

    It "should return the same number when adding zero" {
        # **Hint**: The result of the function should be 7 when adding 7 and 0. Maybe our function isn't adding the numbers correctly?
        $result = Add-Numbers -a 7 -b 0
        $result | Should -Be 7
    }

    It "should return an integer" {
        # **Hint**: The result of the function should be an integer. Maybe our function isn't returning an integer?
        $result = Add-Numbers -a 1 -b 2
        $result | Should -BeOfType [int]
    }
    
    It "Should only accept integers" {
        # **Hint**: The function should only accept integers. Maybe our function isn't enforcing this?
        { Add-Numbers -a 1.5 -b 2.5 } | Should -Throw
    }

    It "Should only accept two parameters" {
        # **Hint**: The function should only accept two parameters.
        # TODO: Add a test that verifies that the function throws an error when more than two parameters are provided.
    }
}
