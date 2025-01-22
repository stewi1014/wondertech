# WonderTech

A modpack that combines Big Globe world generation with a number of dimension, tech and magic mods.

## Mods
These are some of the mods to give you an idea;
 - Big Globe
 - GregTechCEu Modern
 - Applied Energistics 2
 - Extreme Reactors
 - Mekanism
 - Ars Nouveau
 - The Undergarden
 - Eternal Starlight
 - Deeper and Darker 

## Requirements
This pack is more intensive than any pack I've seen before. It takes ~5 minutes from start to get into a single player game, uses 16-40GB of memory depending on settings and if you want to wait for Distant Horizons LODs, it'll take days.

## Install Server

#### Using mrpack-install
To install the server, install [mrpack-install](https://github.com/nothub/mrpack-install) and run `mrpack-install wondertech`

`mrpack-install update wondertech` doesn't currently work. But running `mrpack-install wondertech` again should work. Make sure you have a backup though.

#### Using packwiz-installer
Installing
```
curl -OJL https://maven.neoforged.net/releases/net/neoforged/neoforge/21.1.90/neoforge-21.1.90-installer.jar
java -jar neoforge-21.1.90-installer.jar --install-server
curl -OJL https://github.com/packwiz/packwiz-installer-bootstrap/releases/download/v0.0.3/packwiz-installer-bootstrap.jar
java -jar packwiz-installer-bootstrap.jar -g -s server https://git.lenqua.link/minecraft/wondertech/raw/tag/latest/pack.toml
```

Updating
```
java -jar packwiz-installer-bootstrap.jar -g -s server https://git.lenqua.link/minecraft/wondertech/raw/tag/latest/pack.toml
```
