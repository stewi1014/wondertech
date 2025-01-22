#!/bin/bash

datapacks=(
    "bigglobe_ae2"
    "bigglobe_ambientsounds"
    "bigglobe_dnt"
    "bigglobe_extremereactors"
    "bigglobe_farmersdelight"
    "bigglobe_gregtechmodern"
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
mkdir -p wondertech/config/paxi/datapacks
mkdir -p wondertech/config/paxi/resourcepacks

for datapack in "${datapacks[@]}"
do
    cd "$datapack" || continue
    zip -qroX "../build/datapacks/$datapack.zip" ./*
    cp "../build/datapacks/$datapack.zip" "../wondertech/config/paxi/datapacks/$datapack.zip"
    cd ..
done

for resourcepack in "${resourcepacks[@]}"
do
    cd "$resourcepack" || continue
    zip -qroX "../build/resourcepacks/$resourcepack.zip" ./*
    cp "../build/datapacks/$resourcepack.zip" "../wondertech/config/paxi/resourcepacks/$resourcepack.zip"
    cd ..
done

cd build/modpacks || exit
packwiz mr export --pack-file=../../wondertech/pack.toml
packwiz cf export --pack-file=../../wondertech/pack.toml
cd ../..

for datapack in "${datapacks[@]}"
do
    rm "wondertech/config/paxi/datapacks/$datapack.zip"
done

for resourcepack in "${resourcepacks[@]}"
do
    rm "wondertech/config/paxi/resourcepacks/$resourcepack.zip"
done
