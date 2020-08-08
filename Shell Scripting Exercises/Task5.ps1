$array = @("man", "bear", "pig", "dog", "cat");

for($i = 0; $i -lt ($array).length; $i++){
    $array[$i]
};
#ForEach-Object ($element in $array) {
#    $element
#};
$array | ForEach-Object -Begin {Write-Output "start"} -Process {echo "$_"} -End{Write-Output "end"} ; 

