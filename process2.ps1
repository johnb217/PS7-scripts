
$base_path = 'C:\Users\John\Test'

$target = $base_path + '\target'

$divisions = @('city1', 'city2', 'city3', 'city4')

#$list = Get-ChildItem -LiteralPath $base_path -Recurse -File -Filter *.txt

$log = "My Log Is`n"

foreach ($div in $divisions) {
    
    $city_path = $base_path + '\' + $div 
    # find files for city
    $list = Get-ChildItem -LiteralPath $city_path -File -Filter *.txt

    if ($list -eq $null ) {
        $msg = "No files for: " + $div
        $log = $log + $msg + "`n"
        Write-Host $msg
        continue 
    }
    foreach ($i in $list) {
        $msg = "Processing: " + $div + ": " + $i.FullName  
        $log = $log + $msg + "`n"
        Write-Host $msg
    }
}

Write-Host $log


#foreach ($i in $list) {
#   Write-Host   $i.FullName
#   }

#Move-Item -Destination $target

#Move-Item -Path C:\Users\john\Test\target\test.txt -Destination

# on Windows 10 PS 7: Install-Module WinSCP
# Then use Import-Module WinSCP to load
# 