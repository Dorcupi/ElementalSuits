#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add wearing_fire_helmet
execute if entity @s[scores={dorcupi.sneak_check_1=1..59}] run title @s actionbar ["",{"text":"Fire Lasers - ","color":"red"},{"score":{"name":"@s","objective":"dorcupi.sneak_check_1"},"color":"red"},{"text":"t","color":"red"}]
execute if entity @s[scores={dorcupi.sneak_check_1=60..}] run function dorcupi:__generated__/block/4