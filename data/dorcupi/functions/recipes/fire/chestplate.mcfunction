#built using mc-build (https://github.com/mc-build/mc-build)

clear @s knowledge_book
give @s leather_chestplate{display:{Name:'{"text":"Fire Chestplate","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1
advancement grant @s only dorcupi:craftfire
advancement revoke @s only dorcupi:fire/chestplate
recipe take @s dorcupi:fire/chestplate
execute if entity @s[scores={dorcupi.crafted_pieces=0}] run function dorcupi:recipes/fire/__generated__/block/38