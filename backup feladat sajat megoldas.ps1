#tests and creates the backup path

$test = Test-Path -Path C:/backup   
    if($test -eq $false)
    {

          new-item -ItemType Directory -Path C:/backup
    } 
#looks for doc,jpg and pdf items in C:, then saves all of them in the backup path
Get-ChildItem -path "C:/" -Include *.jpg, *.pdf, *.doc -Recurse -force | Copy-Item -Destination C:\backup
 
#new directories
new-item -Path C:\backup\docs -ItemType directory
new-item -Path C:\backup\pdfs -ItemType Directory
new-item -Path C:\backup\jpgs -ItemType directory

#looks for doc,jpg and pdf items in C:, then saves all of them in the backup path
Get-ChildItem -path "C:/" -Include *.jpg, *.pdf, *.doc -Recurse -force | Copy-Item -Destination C:\backup

#checks the filetypes, then separates them 
#jpg
Get-ChildItem -path C:\backup |  Where-Object -property name -like *.jpg | copy-Item -destination C:\backup\jpgs
Get-ChildItem -path C:\backup |  Where-Object -property name -like *.jpg | Remove-Item
#pdf
Get-ChildItem -path C:\backup |  Where-Object -property name -like *.pdf | copy-Item -destination C:\backup\pdfs
Get-ChildItem -path C:\backup |  Where-Object -property name -like *.pdf | Remove-Item  
#doc
Get-ChildItem -path C:\backup |  Where-Object -property name -like *.doc | copy-Item -destination C:\backup\docs
Get-ChildItem -path C:\backup |  Where-Object -property name -like *.doc | Remove-Item        