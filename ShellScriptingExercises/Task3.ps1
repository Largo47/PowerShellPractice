$Hostname = (Get-ComputerInfo).csname;
echo "This computer's name is $Hostname"
#alternative, easier way
echo "This computer's name is $env:COMPUTERNAME"