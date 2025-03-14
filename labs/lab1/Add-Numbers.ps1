# Description: A simple function that adds two numbers and returns the result.

function Add-Numbers {
    [CmdletBinding()]
    param([double]$a, [double]$b)
    return $a + $b + 1
}
