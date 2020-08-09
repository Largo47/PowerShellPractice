$Date = "$("{0:D4}" -f ((Get-Date).Year))-$("{0:D2}" -f ((Get-Date).Month))-$("{0:D2}" -f ((Get-Date).Day))" 
$array = Get-ChildItem .\*.jpg
foreach($item in $array){Move-Item -Path $item.Fullname -Destination ".\$($Date)-$((Get-Item $item).BaseName).jpg"  }