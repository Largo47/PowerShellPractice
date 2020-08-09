$location = Read-Host -prompt "enter the path to the object"

if(!(Test-Path $location)){Write-Output $location": No such file"}
elseif(Test-Path -Path $location -PathType Leaf){Write-Output "$location is a file"}
elseif(Test-Path -Path $location -PathType Container){Write-Output "$location is a folder"}
else{Write-Output $location": unknown filetype"}
Write-Output "end of program"