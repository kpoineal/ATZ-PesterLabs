# Import the module containing the Get-UserInfo function
. $PSScriptRoot\Get-UserInfo.ps1

BeforeAll {
    Mock Get-ADUser {
        return @{
            Name = "Test User"
            SamAccountName = "testuser"
            EmailAddress = "testuser@example.com"
        }
    }
}

Describe "Get-UserInfo" {
    Context "When Get-ADUser is mocked" {
        It "Should return the mocked user information" {
            $result = Get-UserInfo -Identity "testuser"
            $result.Name | Should -Be # TODO: Add the expected name
            $result.SamAccountName | Should -Be # TODO: Add the expected SamAccountName
            $result.EmailAddress | Should -Be # TODO: Add the expected email address
        }
        It "Should return an object" {
            $result = Get-UserInfo -Identity "testuser"
            $result | Should -BeOfType # TODO: Add the expected object type. In PowerShell, this is the type name in square brackets, e.g. [string]
        }
        It "Should only accept one parameter" {
            # Note: There is something wrong with the function definition. It should only accept one parameter, but it doesn't enforce this.
            # Note: In this test, we are testing that the function throws an error when more than one parameter is provided.
            # Note: The test should pass when the function is fixed to only accept one parameter.
            # **Hint**: The function in Add-Numbers.ps1 only accepts two parameters. You can use that as a reference.
            { Get-UserInfo -Identity "testuser" -Name "Test User" } | Should -Throw
        }
    }
}
