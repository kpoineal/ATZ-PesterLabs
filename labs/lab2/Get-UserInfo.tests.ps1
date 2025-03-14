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
            $result.Name | Should -Be "Test User"
            $result.SamAccountName | Should -Be "testuser"
            $result.EmailAddress | Should -Be "testuser@example.com"
        }
    }
}
