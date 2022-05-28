$destinationDirectory = Read-Host -Prompt "Enter source directory"

$worlds = @(Get-ChildItem $destinationDirectory -Filter *.mcworld)

foreach ($world in $worlds)
{
    Write-Output $world.FullName
    Invoke-Expression $world.FullName
    Start-Sleep -Seconds 20
    Remove-Item $world.FullName
}
