# Description: This script gets the information of a user from Active Directory.
# Usage: Get-UserInfo -Identity <UserIdentity>
# Output: User information from Active Directory.
function Get-UserInfo {
    param (
        [string]$Identity
    )
    return Get-ADUser -Identity $Identity
}

# Placeholder implementation of Get-ADUser since we need to mock it in the tests
function Get-ADUser {
    param (
        [string]$Identity
    )
    # Placeholder implementation
}
