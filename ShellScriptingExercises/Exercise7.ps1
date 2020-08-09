$location = Resolve-Path -LiteralPath $args[0]
if($location -eq $null){Write-Output "Missing argmuent: Please enter the path to file as an argument"}
elseif(!(Test-Path $location)){Write-Output $location": No such file"}
elseif(Test-Path -Path $location -PathType Leaf){Write-Output $location" is a file"}
elseif(Test-Path -Path $location -PathType Container){Write-Output $location" is a folder"}
else{Write-Output  $location": unknown filetype"}
Write-Output "EOP"