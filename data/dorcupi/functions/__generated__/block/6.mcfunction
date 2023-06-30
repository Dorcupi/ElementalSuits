#built using mc-build (https://github.com/mc-build/mc-build)

effect give @s glowing 1 255 true
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 ice hollow
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:slowness 10 255 true
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:mining_fatigue 10 255 true
scoreboard players set @s dorcupi.sneak_check_2 0