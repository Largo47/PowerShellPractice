$File = Get-ChildItem -LiteralPath  "./Task3.ps1" 
if(Test-Path $File){
Write-Output "$File exist"
}
else {
Write-Output "it doesn't"    
}
