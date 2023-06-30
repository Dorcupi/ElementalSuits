#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add wearing_fire_leggings
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:bucket",Count:1b}}] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 obsidian replace lava[level=0]