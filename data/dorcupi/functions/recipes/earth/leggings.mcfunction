#built using mc-build (https://github.com/mc-build/mc-build)

clear @s knowledge_book
give @s leather_leggings{display:{Name:'{"text":"Earth Leggings","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1
advancement grant @s only dorcupi:craftearth
advancement revoke @s only dorcupi:earth/leggings
recipe take @s dorcupi:earth/leggings
execute if entity @s[scores={dorcupi.crafted_pieces=0}] run function dorcupi:recipes/earth/__generated__/block/27