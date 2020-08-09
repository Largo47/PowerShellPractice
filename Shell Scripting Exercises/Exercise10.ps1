$foo = $args
#write-host "There are a total of $($foo.count) arguments"
for ( $i = 0; $i -lt $foo.count; $i++ ) {
$location = $foo[$i]
if($location -eq $null){Write-Output "Missing argument: Please enter the path to file as an argument";exit 4}
else{
if(!(Test-Path $location)){Write-Output "$location No such file";exit 3}
elseif(Test-Path -Path $location -PathType Leaf){$location = Resolve-Path -Path $location; Write-Output $location" is a file"; exit 1}
elseif(Test-Path -Path $location -PathType Container){$location = Resolve-Path -Path $location; Write-Output $location" is a folder"; exit 1}
else{$location = Resolve-Path -Path $location; Write-Output  $location": unknown filetype"; exit 2}
}}
Write-Output "EOP"