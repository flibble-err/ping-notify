If (
Test-Connection LOCALHOST -Count 2 -Quiet -Delay 60
) #Change the IP to whatever server you want to ping. Delay is the frequency of pings.

{
Write-Host "Connection successful at $(get-date)" -ForegroundColor Green
    $player = New-Object -TypeName System.Media.SoundPlayer
    $player.SoundLocation = "C:\Windows\Media\ring06.wav"
    $player.Load()
    $player.Play()
    $wshell = New-Object -ComObject Wscript.Shell
    $Output = $wshell.Popup("The server is now accessible!",0,"Server online",4160)
   
break
} #When ping is successful
else 
{
    "$(get-date) - Connection failed"
    Invoke-Expression -Command ($PSCommandPath) #Run the script again
} #When ping fails
