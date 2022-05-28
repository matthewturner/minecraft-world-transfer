$destinationDirectory = Read-Host -Prompt "Enter destination directory"

$worldDirectory = "~\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds"

$worlds = @(Get-ChildItem $worldDirectory\*)

foreach ($world in $worlds)
{
    #Write-Output $world.Parent.FullName
    $sourcePath = $world.Parent.FullName + "\" + $world.Name + "\*"
    #Write-Output $sourcePath
    $destinationPath = $destinationDirectory + "\" + $world.Name + ".mcworld"
    Write-Output $destinationPath
    Compress-Archive -Path $sourcePath -DestinationPath $destinationPath
}
