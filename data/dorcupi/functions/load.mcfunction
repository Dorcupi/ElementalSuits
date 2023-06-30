#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard objectives add dorcupi.loaded_reloads dummy
scoreboard players set loaded_reloads dorcupi.loaded_reloads 5
scoreboard players set supposed_reloads dorcupi.loaded_reloads 2
scoreboard objectives add dorcupi.sneak_check_1 minecraft.custom:minecraft.sneak_time
scoreboard objectives add dorcupi.sneak_check_2 minecraft.custom:minecraft.sneak_time
scoreboard objectives add dorcupi.sneak_check_3 minecraft.custom:minecraft.sneak_time
scoreboard objectives add dorcupi.sneak_check_4 minecraft.custom:minecraft.sneak_time
scoreboard objectives add dorcupi.sneak_check_5 minecraft.custom:minecraft.sneak_time
scoreboard objectives add dorcupi.jump_check_1 minecraft.custom:minecraft.jump
scoreboard objectives add dorcupi.give_recipes trigger
scoreboard objectives add dorcupi.crafted_pieces dummy
scoreboard players set @a dorcupi.crafted_pieces 0