#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add wearing_water_helmet
execute if entity @s[scores={dorcupi.sneak_check_2=1..59}] run title @s actionbar ["",{"text":"Ice Freeze - ","color":"blue"},{"score":{"name":"@s","objective":"dorcupi.sneak_check_2"},"color":"blue"},{"text":"t","color":"blue"}]
execute if entity @s[scores={dorcupi.sneak_check_2=60..}] run function dorcupi:__generated__/block/6