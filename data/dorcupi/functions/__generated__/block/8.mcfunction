#built using mc-build (https://github.com/mc-build/mc-build)

effect give @s glowing 1 255 true
particle minecraft:explosion ~ ~ ~ 0 0 0 1 2 normal
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s facing entity @p[scores={dorcupi.sneak_check_4=60..}] feet run tp ^ ^ ^-10
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:slowness 10 5 true
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run damage @s 2 minecraft:indirect_magic by @p[scores={dorcupi.sneak_check_4=60..}]
scoreboard players set @s dorcupi.sneak_check_4 0