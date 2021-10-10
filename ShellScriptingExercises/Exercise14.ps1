$Date = (Get-Date).ToShortDateString()
$array = Get-ChildItem .\*.jpg
foreach($item in $array){Move-Item -Path $item.Fullname -Destination ".\$($Date)-$((Get-Item $item).BaseName).jpg"  }