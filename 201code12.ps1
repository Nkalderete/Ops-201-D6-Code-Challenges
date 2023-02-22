

# Create file 'network_report'

# New-Item C:\Users\nick\Documents\network_report.txt (testing)

# ipconfig /all | Select-String "IPv4" | Out-File C:\Users\nick\Documents\network_report.txt (testing)







$FilePath = "C:\Users\nick\Documents\network_report.txt"
New-Item $FilePath

function Get-IPv4 {
    $ipconfig = ipconfig /all 
    return $ipconfig   
    }
    
$ipv4addy = Get-IPv4
$ipv4addy | Out-File -FilePath $FilePath
Select-String -Path $FilePath -Pattern "IPv4 Address"







## Only IPv4 to file

$FilePath = "C:\Users\nick\Documents\network_report.txt"
New-Item $FilePath

function Get-IPv4 {
    $ipconfig = ipconfig /all | Select-String "IPv4"
    return $ipconfig
    
    }
    
$ipv4addy = Get-IPv4
$ipv4addy | Out-File -FilePath $FilePath
