# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.

Get-Process | Sort-Object -Descending CPU | Format-Table Name, ID, CPU 





# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.

Get-Process | Sort-Object -Descending Id | Format-Table Name, Id 




# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

Get-Process | Sort-Object -Descending WS | Select-Object -First 5 



## Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.

# "iexplore" and "iexplore.exe" not found when running Get-Process// Changed to "msedge"
# Can replace URL with any link

Start-Process "msedge" "https://owasp.org/www-project-top-ten/"



## Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.



for ($i=1; $i -le 10; $i++) { Start-Process "msedge" "https://owasp.org/www-project-top-ten/"}



## Close all Internet Explorer windows

# Will close multiple windows open.


Stop-Process -Name "msedge"



# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.


Get-Process | Format-Table ID, Name, CPU
Stop-Process -Id <PID>

# replace <PID> with actual PID number



