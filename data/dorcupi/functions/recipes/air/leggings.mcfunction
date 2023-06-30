#built using mc-build (https://github.com/mc-build/mc-build)

clear @s knowledge_book
give @s leather_leggings{display:{Name:'{"text":"Air Leggings","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1
advancement grant @s only dorcupi:craftair
give @s glass
advancement revoke @s only dorcupi:air/leggings
recipe take @s dorcupi:air/leggings
execute if entity @s[scores={dorcupi.crafted_pieces=0}] run function dorcupi:recipes/air/__generated__/block/31