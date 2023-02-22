

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






### SOURCES

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string?view=powershell-7.3&viewFallbackFrom=powershell-7.1
# https://lazyadmin.nl/powershell/output-to-file/#:~:text=There%20are%20a%20couple%20of,Content%20and%20Add%2DContent%20cmdlet.
# https://linuxhint.com/create-file-using-powershell/#:~:text=To%20create%20a%20file%20in,created%20file%20will%20be%20placed.

