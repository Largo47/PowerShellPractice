$foo = $args
write-host "There are a total of $($foo.count) arguments"
for ( $i = 0; $i -lt $foo.count; $i++ ) {
$location = $foo[$i]
if($location -eq $null){Write-Output "Missing argument: Please enter the path to file as an argument"}
else{
if(!(Test-Path $location)){Write-Output "$location No such file"}
elseif(Test-Path -Path $location -PathType Leaf){$location = Resolve-Path -Path $location; Write-Output $location" is a file"}
elseif(Test-Path -Path $location -PathType Container){$location = Resolve-Path -Path $location; Write-Output $location" is a folder"}
else{$location = Resolve-Path -Path $location; Write-Output  $location": unknown filetype"}
}}
Write-Output "EOP"