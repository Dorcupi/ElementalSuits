#built using mc-build (https://github.com/mc-build/mc-build)

effect give @s glowing 1 255 true
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run setblock ~ ~ ~ fire
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s facing entity @p[scores={dorcupi.sneak_check_1=60..}] feet run summon wither_skeleton ^ ^ ^-5
execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:slowness 10 3 true
scoreboard players set @s dorcupi.sneak_check_1 0