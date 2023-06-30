#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add wearing_water_leggings
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:bucket",Count:1b}}] unless block ~ ~ ~ water run fill ~-1 ~-1 ~-1 ~1 ~ ~1 packed_ice replace water[level=0]
execute if entity @s[scores={dorcupi.sneak_check_3=1..}] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 water replace packed_ice
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bucket",Count:1b}}] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 water replace packed_ice
execute if block ~ ~ ~ water run fill ~-1 ~-1 ~-1 ~1 ~ ~1 water replace packed_ice
execute if entity @s[scores={dorcupi.sneak_check_3=1..}] run scoreboard players set @s dorcupi.sneak_check_3 0