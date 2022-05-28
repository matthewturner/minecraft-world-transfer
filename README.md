# Minecraft World Transfer

Transferring worlds between PCs in Bedrock Edition can be achieved by using Export/Import in the UI (Settings -> Export). The world is exported to a `.mcworld` file which can be later imported on the target PC.

This process can be time-consuming if you have many worlds to transfer. Fortunately, the MCWorld file format is just a zip file with the extension `.mcworld`. This repo contains two scripts:

* `Export.ps1` - exports all worlds from the `minecraftWorlds` directory++ to the specified destination directory
* `Import.ps1` - imports all worlds in the specified source directory

## Caveats

* After the world has been imported the  `.mcworld` **file will be deleted**
* There is a delay of 20 seconds between imports to allow the process to finish+++
* You should open Minecraft first before you execute the script, as this may take longer than 20 seconds

## TLDR;

++ The full location is ~\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds
+++ If you don't wait, the same world will be imported multiple times in place of the next worlds. ie Importing worlds A, B, C, D in one go will result in A, A, A, A in Minecraft.
