

## Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

Get-EventLog -LogName System -After '2/15/2023' | Out-File "$env:USERPROFILE\Desktop\Last_24.txt"











 
## Output all “error” type events from the System event log to a file on your desktop named errors.txt.

Get-EventLog -LogName System -EntryType Error | Out-File "$env:USERPROFILE\Desktop\Errors.txt"









## Print to the screen all events with ID of 16 from the System event log.


# Get-EventLog -LogName System -FilterHashtable @{Logname='System'; ID=16} | Format-List     "Doesn't work"

Get-EventLog -LogName System -InstanceId 16

# -or-

Get-WinEvent -FilterHashtable @{Logname='System'; ID=16} |  Format-List

# "-FilterHashtable" filters the events based on their ID, log name, and source
# The "Get-WinEvent" cmdlet gets events from event logs, including classic logs, such as the System and Application logs.
# The "Format-List" cmdlet formats the output of a command as a list of properties in which each property is displayed on a separate line.









## Print to the screen the most recent 20 entries from the System event log.’

Get-EventLog -LogName System -Newest 20






## Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).


# Get-EventLog -LogName System -Newest 500 | Format-Table Index, Time, EntryType, Source, InstanceID, Message   "NOT WHAT I WANTED"


# Get-EventLog -LogName System -Newest 500 | Select-Object -ExpandProperty Source           "NOPE"


Get-EventLog -LogName System -Newest 500 | Format-List -Property *








SOURCES***


# https://learn.microsoft.com/en-us/powershell/scripting/samples/using-format-commands-to-change-output-view?view=powershell-7.3

# https://www.sans.org/blog/working-with-event-log-part-1/

# https://adamtheautomator.com/get-eventlog/#:~:text=Filtering%20with%20Get%2DEventLog&text=In%20that%20case%2C%20we%20need%20to%20filter%20for%20particular%20events,message%2C%20source%2C%20and%20username.

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-list?view=powershell-7.3

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-7.3

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_redirection?view=powershell-7.3

