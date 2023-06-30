#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add wearing_air_helmet
execute if entity @s[scores={dorcupi.sneak_check_4=1..59}] run title @s actionbar ["",{"text":"Air Push - ","color":"white"},{"score":{"name":"@s","objective":"dorcupi.sneak_check_4"},"color":"white"},{"text":"t","color":"white"}]
execute if entity @s[scores={dorcupi.sneak_check_4=60..}] run function dorcupi:__generated__/block/8