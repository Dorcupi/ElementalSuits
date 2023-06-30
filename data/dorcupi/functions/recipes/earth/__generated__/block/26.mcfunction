#built using mc-build (https://github.com/mc-build/mc-build)

trigger dorcupi.give_recipes
scoreboard players set @s dorcupi.crafted_pieces 1
advancement grant @s only dorcupi:craftroot
advancement grant @s only dorcupi:craftstart