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
            # TODO: Assert that the result is $true
        }
        It 'Should return true when given an array of valid resource group ids' {
            # TODO: Create an array of valid resource group ids
            # TODO: Call Test-WAFResourceGroupId with the array of valid resource group ids
            # TODO: Assert that the result is $true
        }
    }

    Context 'When given an invalid resource group id' {
        It 'Should throw the exception with a bad GUID' {
            $resourceGroupId = "/subscriptions/$((new-guid).guid[1..-1])/resourceGroups/RG-01/"
            { Test-WAFResourceGroupId $resourceGroupId } | Should -Throw
        }

        It 'Should throw the exception with a bad resourceGroups typo - missing s' {
            # TODO: Create a resource group id with a bad resourceGroups typo - missing s
            # TODO: Call Test-WAFResourceGroupId with the resource group id with the bad resourceGroups typo
            # TODO: Assert that the result is a thrown exception
        }

        It 'Should throw the exception with a bad subscription typo - missing s' {
            # TODO: Create a resource group id with a bad subscription typo - missing s
            # TODO: Call Test-WAFResourceGroupId with the resource group id with the bad subscription typo
            # TODO: Assert that the result is a thrown exception
        }

        It 'Should throw the exception when missing the leading slash' {
            # TODO: Create a resource group id with a missing leading slash
            # TODO: Call Test-WAFResourceGroupId with the resource group id with the missing leading slash
            # TODO: Assert that the result is a thrown exception
        }

        It 'Should throw the exception when missing the trailing slash' {
            # TODO: Create a resource group id with a missing trailing slash
            # TODO: Call Test-WAFResourceGroupId with the resource group id with the missing trailing slash
            # TODO: Assert that the result is a thrown exception
        }

        It 'Should throw the exception when missing the resource group name' {
            # TODO: Create a resource group id with a missing resource group name
            # TODO: Call Test-WAFResourceGroupId with the resource group id with the missing resource group name
            # TODO: Assert that the result is a thrown exception
        }

        It 'Should throw the exception when one of the resource group ids is invalid' {
            # TODO: Create an array of resource group ids with one invalid resource group id
            # TODO: Call Test-WAFResourceGroupId with the array of resource group ids
            # TODO: Assert that the result is a thrown exception
        }
    }
}