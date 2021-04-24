$number=1
$uniqueid=Get-Random
$date=Get-Date -uformat %Y%m%d
Get-ChildItem -Exclude *.ps1 | Sort-Object -Property LastWriteTime | % {Rename-Item -path $_ -newname ('{0}_{1}_{2}{3}' -f $date, $uniqueid, $number, ($_.Extension));$number++}