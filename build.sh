#!/bin/bash

datapacks=(
    "bigglobe_ae2"
    "bigglobe_ambientsounds"
#    "bigglobe_deeperdarker"
    "bigglobe_dnt"
    "bigglobe_extremereactors"
    "bigglobe_farmersdelight"
#    "bigglobe_gregtechmodern"
    "bigglobe_immersiveengineering"
    "bigglobe_integrateddynamics"
    "bigglobe_ironsspellsandspellbooks"
    "bigglobe_mekanism"
    "bigglobe_tidaltowns"
)

resourcepacks=(
    "bigglobe_ambientsounds"
)

[ -d build/datapacks ] && rm -rf build/datapacks/* || mkdir -p build/datapacks
[ -d build/resourcepacks ] && rm -rf build/resourcepacks/* || mkdir -p build/resourcepacks
mkdir -p build/modpacks

for datapack in "${datapacks[@]}"
do
    cd "$datapack" || continue
    zip -qrX "../build/datapacks/$datapack.zip" ./*
    cd ..
done

for resourcepack in "${resourcepacks[@]}"
do
    cd "$resourcepack" || continue
    zip -qrX "../build/resourcepacks/$resourcepack.zip" ./*
    cd ..
done

cp build/resourcepacks/* wondertech/config/paxi/resourcepacks
cp build/datapacks/* wondertech/config/paxi/datapacks

cd build/modpacks || exit
packwiz mr export --pack-file=../../wondertech/pack.toml
packwiz cf export --pack-file=../../wondertech/pack.toml
cd ..
