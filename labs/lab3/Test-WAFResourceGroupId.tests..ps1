. $PSScriptRoot/Test-WAFResourceGroupId.ps1

Describe 'Test-WAFResourceGroupId' {
    Context 'When given a valid resource group id' {
        It 'Should return true with a valid resource group id' {
            $resourceGroupId = "/subscriptions/$((new-guid).guid)/resourceGroups/RG-01"
            $result = Test-WAFResourceGroupId $resourceGroupId
            $result | Should -Be $true
        }

        It 'Should return true when the resource group id contains a trailing slash' {
            $resourceGroupId = "/subscriptions/$((new-guid).guid)/resourceGroups/RG-01/"
            $result = Test-WAFResourceGroupId $resourceGroupId
            $result | Should -Be $true
        }
    }

    Context 'When given an invalid resource group id' {
        It 'Should throw the exception with a bad GUID' {
            $resourceGroupId = "/subscriptions/$((new-guid).guid[1..-1])/resourceGroups/RG-01/"
            { Test-WAFResourceGroupId $resourceGroupId } | Should -Throw
        }

        It 'Should throw the exception with a bad resourceGroups typo - missing s' {
            $resourceGroupId = "/subscriptions/$((new-guid).guid)/resourceGroup/RG-01/"
            { Test-WAFResourceGroupId $resourceGroupId } | Should -Throw
        }

        It 'Should throw the exception with a bad subscription typo - missing s' {
            $resourceGroupId = "/subscription/$((new-guid).guid)/resourceGroups/RG-01/"
            { Test-WAFResourceGroupId $resourceGroupId } | Should -Throw
        }

        It 'Should throw the exception when missing the leading slash' {
            $resourceGroupId = "subscriptions/$((new-guid).guid)/resourceGroups/RG-01"
            { Test-WAFResourceGroupId $resourceGroupId } | Should -Throw
        }
    }
}