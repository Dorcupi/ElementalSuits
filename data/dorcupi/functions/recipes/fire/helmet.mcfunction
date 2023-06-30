#built using mc-build (https://github.com/mc-build/mc-build)

clear @s knowledge_book
give @s leather_helmet{display:{Name:'{"text":"Fire Helmet","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1
advancement grant @s only dorcupi:craftfire
advancement revoke @s only dorcupi:fire/helmet
recipe take @s dorcupi:fire/helmet
execute if entity @s[scores={dorcupi.crafted_pieces=0}] run function dorcupi:recipes/fire/__generated__/block/37