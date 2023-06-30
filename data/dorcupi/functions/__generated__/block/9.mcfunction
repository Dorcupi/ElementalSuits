#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add wearing_earth_helmet
execute if entity @s[scores={dorcupi.sneak_check_5=1..59}] run title @s actionbar ["",{"text":"Ground Suffocation - ","color":"green"},{"score":{"name":"@s","objective":"dorcupi.sneak_check_5"},"color":"green"},{"text":"t","color":"green"}]
execute if entity @s[scores={dorcupi.sneak_check_5=60..}] run function dorcupi:__generated__/block/10