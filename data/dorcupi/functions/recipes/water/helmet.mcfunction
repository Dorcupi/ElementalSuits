#built using mc-build (https://github.com/mc-build/mc-build)

clear @s knowledge_book
give @s leather_helmet{display:{Name:'{"text":"Water Helmet","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1
advancement grant @s only dorcupi:craftwater
advancement revoke @s only dorcupi:water/helmet
recipe take @s dorcupi:water/helmet
execute if entity @s[scores={dorcupi.crafted_pieces=0}] run function dorcupi:recipes/water/__generated__/block/33