
$base_path = 'C:\Users\John\Test'

$target = $base_path + '\target'

$city1 = $base_path + '\city1'

$city2 = $base_path + '\city2'

$city3 = $base_path + '\city3'

Move-Item -Path C:\Users\john\Test\target\test.txt -Destination $city1

Move-Item -Path C:\Users\john\Test\target\test2.txt -Destination $city2 

Move-Item -Path C:\Users\john\Test\target\test3.txt -Destination $city3

#Get-ChildItem "C:\Users\john\test\city2" -Filter *.txt | 
#Foreach-Object {
    #$content = Get-Content $_.FullName

    #filter and save content to the original file
    #$content | Where-Object {$_ -match 'step[49]'} | Set-Content $_.FullName

    #filter and save content to a new file 
    #$content | Where-Object {$_ -match 'step[49]'} | Set-Content ($_.BaseName + '_out.log')
    #Move-Item $_ C:\Users\John\test\target
 #   Write-Host $_.FullName
#}
