function FileCount {
    param (
        $Directory
    )
    if(Test-Path $Directory){$Directory;(Get-ChildItem $Directory | Measure-Object).Count}
    else {Write-Output "$Directory does not exist" }    
}
# Checking 3 random windows directories since 
$drive = Get-PSDrive | Where-Object { $_.Free -ge 1 } | Get-Random | ForEach-Object {$_.root}
FileCount "$($drive)Windows\"
FileCount "$($drive)Users\"
FileCount (Get-ChildItem -Path $drive -Directory | Get-Random ).Fullname #picking a random directory on viable drive