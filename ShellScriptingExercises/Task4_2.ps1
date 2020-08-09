#This one takes the path as parameter and checks if the file exist
$File = Get-ChildItem -LiteralPath  $args[0] 
if((Test-Path $File) -or ([System.IO.File]::Exists($File))){
Write-Output "$File exist"
}
else {
Write-Output "it doesn't"    
}
