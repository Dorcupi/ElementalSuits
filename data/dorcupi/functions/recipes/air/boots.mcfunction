#built using mc-build (https://github.com/mc-build/mc-build)

clear @s knowledge_book
give @s leather_boots{display:{Name:'{"text":"Air Boots","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1
advancement grant @s only dorcupi:craftair
give @s glass
advancement revoke @s only dorcupi:air/boots
recipe take @s dorcupi:air/boots
execute if entity @s[scores={dorcupi.crafted_pieces=0}] run function dorcupi:recipes/air/__generated__/block/32