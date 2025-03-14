# Import the function to be tested
. $PSScriptRoot\Add-Numbers.ps1

Describe "Add-Numbers" {
    It "should add two positive numbers correctly" {
        $result = Add-Numbers -a 2 -b 3
        $result | Should -Be 5
    }

    It "should add a positive and a negative number correctly" {
        $result = Add-Numbers -a 5 -b -3
        $result | Should -Be 2
    }

    It "should add two negative numbers correctly" {
        $result = Add-Numbers -a -4 -b -6
        $result | Should -Be -10
    }

    It "should return the same number when adding zero" {
        $result = Add-Numbers -a 7 -b 0
        $result | Should -Be 7
    }
}
