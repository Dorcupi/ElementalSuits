
function load{

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

}

function tick{

	execute if score loaded_reloads dorcupi.loaded_reloads < supposed_reloads dorcupi.loaded_reloads run reload

	execute as @a at @s run function dorcupi:as_players

	LOOP(11,i){

		kill @e[type=item,nbt={Item:{tag:{element_sword:<%i%>}}}]

	}

}

function as_players{

	scoreboard players enable @s dorcupi.give_recipes

	execute as @s[scores={dorcupi.give_recipes=1..}] run block{

		give @s written_book{display:{Name:'{"text":"Fire Suit - Recipes","italic":false}'},title:"Fire Suit - Recipes",author:"The Element Master",generation:0,pages:['[{"text":"Fire Suit - Recipes","bold":true},{"text":"\\n\\nPattern:","bold":false},{"text":"\\n\\n#-#\\n0a0\\n#0#","bold":false},{"text":"\\n\\nMeanings:\\n\\n#: Fire Charge\\n-: Blaze Rod\\n0: Ender Pearl\\na: Iron Armor Piece","bold":false}]']} 1

		give @s written_book{display:{Name:'{"text":"Water Suit - Recipes","italic":false}'},title:"Water Suit - Recipes",author:"The Element Master",generation:0,pages:['[{"text":"Water Suit - Recipes","bold":true},{"text":"\\n\\nPattern:","bold":false},{"text":"\\n\\n#-#\\n0a0\\n#0#","bold":false},{"text":"\\n\\nMeanings:\\n#: Water Bucket\\n-: Blaze Rod\\n0: Ender Pearl\\na: Iron Armor Piece","bold":false}]']} 1

		give @s written_book{display:{Name:'{"text":"Air Suit - Recipes","italic":false}'},title:"Air Suit - Recipes",author:"The Element Master",generation:0,pages:['[{"text":"Air Suit - Recipes","bold":true},{"text":"\\n\\nPattern:","bold":false},{"text":"\\n\\n#-#\\n0a0\\n#0#","bold":false},{"text":"\\n\\nMeanings:\\n\\n#: Glass Bottle\\n-: Blaze Rod\\n0: Ender Pearl\\na: Iron Armor Piece","bold":false}]']} 1

		give @s written_book{display:{Name:'{"text":"Earth Suit - Recipes","italic":false}'},title:"Earth Suit - Recipes",author:"The Element Master",generation:0,pages:['[{"text":"Earth Suit - Recipes","bold":true},{"text":"\\n\\nPattern:","bold":false},{"text":"\\n\\n#-#\\n0a0\\n#0#","bold":false},{"text":"\\n\\nMeanings:\\n#: Dirt\\n-: Blaze Rod\\n0: Ender Pearl\\na: Iron Armor Piece","bold":false}]']} 1

		scoreboard players reset @s dorcupi.give_recipes

	}
	
	function dorcupi:sneak_reset

	execute as @s[nbt=!{Inventory:[{Slot:102b}]}] run block{

		item replace entity @s hotbar.8 with gunpowder{display:{Name:'{"text":"Trash Slot","italic":false}',Lore:['{"text":"This slot is where the special weapon","italic":false}','{"text":"from your chestplate goes into.","italic":false}','{"text":"Putting anything into this slot","italic":false}','{"text":"will delete it.","italic":false}']}} 1

		attribute @s minecraft:generic.armor base set 0.5

	}

	execute as @s[nbt=!{Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:4}}]}] run block{

		attribute @s minecraft:generic.knockback_resistance base set 0

	}

	LOOP(11,i){

		execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:<%i%>}}]}] run function dorcupi:wearing_elemental_helmet

		execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:<%i%>}}]}] run function dorcupi:wearing_elemental_chest

		execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:<%i%>}}]}] run function dorcupi:wearing_elemental_legs

		execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:<%i%>}}]}] run function dorcupi:wearing_elemental_boots

	}

	LOOP(11,i){

		execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:<%i%>}}]}] run function dorcupi:helmet_reset

		execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:<%i%>}}]}] run function dorcupi:chest_reset

		execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:<%i%>}}]}] run function dorcupi:leggings_reset

	}

}

function give_armor{

	# Fire
	
	give @s leather_helmet{display:{Name:'{"text":"Fire Helmet","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1
	
	give @s leather_chestplate{display:{Name:'{"text":"Fire Chestplate","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1

	give @s leather_leggings{display:{Name:'{"text":"Fire Leggings","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1

	give @s leather_boots{display:{Name:'{"text":"Fire Boots","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1

	# Water

	give @s leather_helmet{display:{Name:'{"text":"Water Helmet","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1

	give @s leather_chestplate{display:{Name:'{"text":"Water Chestplate","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1

	give @s leather_leggings{display:{Name:'{"text":"Water Leggings","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1

	give @s leather_boots{display:{Name:'{"text":"Water Boots","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1

	# Air

	give @s leather_helmet{display:{Name:'{"text":"Air Helmet","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1

	give @s leather_chestplate{display:{Name:'{"text":"Air Chestplate","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1

	give @s leather_leggings{display:{Name:'{"text":"Air Leggings","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1

	give @s leather_boots{display:{Name:'{"text":"Air Boots","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1

	# Earth

	give @s leather_helmet{display:{Name:'{"text":"Earth Helmet","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1

	give @s leather_chestplate{display:{Name:'{"text":"Earth Chestplate","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1

	give @s leather_leggings{display:{Name:'{"text":"Earth Leggings","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1

	give @s leather_boots{display:{Name:'{"text":"Earth Boots","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1

}

function wearing_elemental_helmet{

	# Fire

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:1}}]}] run block{
		
		tag @s add wearing_fire_helmet

		execute if entity @s[scores={dorcupi.sneak_check_1=1..59}] run title @s actionbar ["",{"text":"Fire Lasers - ","color":"red"},{"score":{"name":"@s","objective":"dorcupi.sneak_check_1"},"color":"red"},{"text":"t","color":"red"}]

		execute if entity @s[scores={dorcupi.sneak_check_1=60..}] run block{

			effect give @s glowing 1 255 true

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run setblock ~ ~ ~ fire

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s facing entity @p[scores={dorcupi.sneak_check_1=60..}] feet run summon wither_skeleton ^ ^ ^-5

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:slowness 10 3 true

			scoreboard players set @s dorcupi.sneak_check_1 0

		}
		
	}

	# Water

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:2}}]}] run block{
		
		tag @s add wearing_water_helmet

		execute if entity @s[scores={dorcupi.sneak_check_2=1..59}] run title @s actionbar ["",{"text":"Ice Freeze - ","color":"blue"},{"score":{"name":"@s","objective":"dorcupi.sneak_check_2"},"color":"blue"},{"text":"t","color":"blue"}]

		execute if entity @s[scores={dorcupi.sneak_check_2=60..}] run block{

			effect give @s glowing 1 255 true

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 ice hollow

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:slowness 10 255 true

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:mining_fatigue 10 255 true

			scoreboard players set @s dorcupi.sneak_check_2 0

		}
		
	}

	# Air

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:3}}]}] run block{
		
		tag @s add wearing_air_helmet

		execute if entity @s[scores={dorcupi.sneak_check_4=1..59}] run title @s actionbar ["",{"text":"Air Push - ","color":"white"},{"score":{"name":"@s","objective":"dorcupi.sneak_check_4"},"color":"white"},{"text":"t","color":"white"}]

		execute if entity @s[scores={dorcupi.sneak_check_4=60..}] run block{

			effect give @s glowing 1 255 true

			particle minecraft:explosion ~ ~ ~ 0 0 0 1 2 normal

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s facing entity @p[scores={dorcupi.sneak_check_4=60..}] feet run tp ^ ^ ^-10

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:slowness 10 5 true

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run damage @s 2 minecraft:indirect_magic by @p[scores={dorcupi.sneak_check_4=60..}]

			scoreboard players set @s dorcupi.sneak_check_4 0

		}
		
	}

	# Earth

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:4}}]}] run block{
		
		tag @s add wearing_earth_helmet

		execute if entity @s[scores={dorcupi.sneak_check_5=1..59}] run title @s actionbar ["",{"text":"Ground Suffocation - ","color":"green"},{"score":{"name":"@s","objective":"dorcupi.sneak_check_5"},"color":"green"},{"text":"t","color":"green"}]

		execute if entity @s[scores={dorcupi.sneak_check_5=60..}] run block{

			effect give @s glowing 1 255 true

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run clone ~-1 ~-3 ~-1 ~1 ~-1 ~1 ~-1 ~ ~-1

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run fill ~-1 ~-3 ~-1 ~1 ~-2 ~1 air

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:slowness 10 255 true

			execute as @e[distance=1..15,type=!item,type=!armor_stand,type=!item_frame] at @s run effect give @s minecraft:mining_fatigue 5 255 true

			scoreboard players set @s dorcupi.sneak_check_5 0

		}
		
	}

}

function wearing_elemental_chest{

	# Fire

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:1}}]}] run block{
		
		tag @s add wearing_fire_chest

		item replace entity @s hotbar.8 with diamond_sword{display:{Name:'{"text":"Fire Sword","italic":false}'},HideFlags:127,Unbreakable:1b,element_sword:1,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:fire_aspect",lvl:1s}]} 1
		
		attribute @s minecraft:generic.armor base set 16

	}

	# Water

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:2}}]}] run block{
		
		tag @s add wearing_water_chest

		item replace entity @s hotbar.8 with trident{display:{Name:'{"text":"Water Trident","italic":false}'},HideFlags:127,Unbreakable:1b,element_sword:2,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:channeling",lvl:1s}]} 1
		
		attribute @s minecraft:generic.armor base set 16

	}

	# Air

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:3}}]}] run block{
		
		tag @s add wearing_air_chest

		item replace entity @s hotbar.8 with diamond_axe{display:{Name:'{"text":"Air Axe","italic":false}'},HideFlags:127,Unbreakable:1b,element_sword:3,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:5s}]} 1
		
		attribute @s minecraft:generic.armor base set 16

	}

	# Earth

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:4}}]}] run block{
		
		tag @s add wearing_earth_chest

		item replace entity @s hotbar.8 with stick{display:{Name:'{"text":"Earth Stick","italic":false}'},HideFlags:127,element_sword:4,Enchantments:[{id:"minecraft:sharpness",lvl:30s},{id:"minecraft:smite",lvl:3s},{id:"minecraft:knockback",lvl:1s}]} 1
		
		attribute @s minecraft:generic.armor base set 16

	}

}

function wearing_elemental_legs{

	# Fire

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:1}}]}] run block{
		
		tag @s add wearing_fire_leggings

		execute unless entity @s[nbt={SelectedItem:{id:"minecraft:bucket",Count:1b}}] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 obsidian replace lava[level=0]

	}

	# Water

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:2}}]}] run block{
		
		tag @s add wearing_water_leggings

		execute unless entity @s[nbt={SelectedItem:{id:"minecraft:bucket",Count:1b}}] unless block ~ ~ ~ water run fill ~-1 ~-1 ~-1 ~1 ~ ~1 packed_ice replace water[level=0]

		execute if entity @s[scores={dorcupi.sneak_check_3=1..}] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 water replace packed_ice

		execute if entity @s[nbt={SelectedItem:{id:"minecraft:bucket",Count:1b}}] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 water replace packed_ice

		execute if block ~ ~ ~ water run fill ~-1 ~-1 ~-1 ~1 ~ ~1 water replace packed_ice

		execute if entity @s[scores={dorcupi.sneak_check_3=1..}] run scoreboard players set @s dorcupi.sneak_check_3 0

	}

	# Air

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:3}}]}] run block{
		
		tag @s add wearing_air_leggings

		execute unless block ~ ~-4 ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air run effect give @s slow_falling 2 3 true

	}

	# Earth

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:4}}]}] run block{
		
		tag @s add wearing_earth_leggings

		attribute @s minecraft:generic.knockback_resistance base set 1

	}

}

function wearing_elemental_boots{

	# Fire

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:1}}]}] run block{
		
		effect give @s minecraft:fire_resistance 1 255 true

		particle dust 0.478 0.000 0.000 2 ~ ~ ~ 0 0 0 1 0 normal
		
	}

	# Water

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:2}}]}] run block{
		
		effect give @s minecraft:water_breathing 1 255 true

		particle dust 0.000 0.384 0.478 2 ~ ~ ~ 0 0 0 1 0 normal
		
	}

	# Air

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:3}}]}] run block{
		
		effect give @s minecraft:speed 1 1 true

		particle dust 0.765 0.902 0.886 2 ~ ~ ~ 0 0 0 1 0 normal
		
	}

	# Earth

	execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:4}}]}] run block{
		
		effect give @s minecraft:haste 1 1 true

		particle dust 0.024 0.180 0.027 2 ~ ~ ~ 0 0 0 1 0 normal
		
	}

}

function sneak_reset{

	execute if entity @s[scores={dorcupi.jump_check_1=1..}] run block{

		scoreboard players set @s dorcupi.sneak_check_1 0

		scoreboard players set @s dorcupi.sneak_check_2 0

		scoreboard players set @s dorcupi.sneak_check_4 0

		scoreboard players set @s dorcupi.sneak_check_5 0

		scoreboard players set @s dorcupi.jump_check_1 0

	}

	execute if block ~ ~-2 ~ air run block{

		scoreboard players set @s dorcupi.sneak_check_1 0

		scoreboard players set @s dorcupi.sneak_check_2 0

		scoreboard players set @s dorcupi.sneak_check_4 0

		scoreboard players set @s dorcupi.sneak_check_5 0

		scoreboard players set @s dorcupi.jump_check_1 0

	}

}

function helmet_reset{

	tag @s remove wearing_fire_helmet

	tag @s remove wearing_water_helmet

	tag @s remove wearing_air_helmet

	tag @s remove wearing_earth_helmet

}

function chest_reset{

	tag @s remove wearing_fire_chest

	tag @s remove wearing_water_chest

	tag @s remove wearing_air_chest

	tag @s remove wearing_earth_chest

}

function leggings_reset{

	tag @s remove wearing_fire_leggings

	tag @s remove wearing_water_leggings

	tag @s remove wearing_air_leggings

	tag @s remove wearing_earth_leggings

	scoreboard players set @s dorcupi.sneak_check_3 0

}

dir recipes{

	dir earth{

		function helmet{

			clear @s knowledge_book

			give @s leather_helmet{display:{Name:'{"text":"Earth Helmet","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1

			advancement grant @s only dorcupi:craftearth

			advancement revoke @s only dorcupi:earth/helmet

			recipe take @s dorcupi:earth/helmet

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function chestplate{

			clear @s knowledge_book

			give @s leather_chestplate{display:{Name:'{"text":"Earth Chestplate","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1

			advancement grant @s only dorcupi:craftearth

			advancement revoke @s only dorcupi:earth/chestplate

			recipe take @s dorcupi:earth/chestplate

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function leggings{

			clear @s knowledge_book

			give @s leather_leggings{display:{Name:'{"text":"Earth Leggings","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1

			advancement grant @s only dorcupi:craftearth

			advancement revoke @s only dorcupi:earth/leggings

			recipe take @s dorcupi:earth/leggings

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function boots{

			clear @s knowledge_book

			give @s leather_boots{display:{Name:'{"text":"Earth Boots","italic":false}',color:15618},HideFlags:95,Unbreakable:1b,elementalArmor:4} 1

			advancement grant @s only dorcupi:craftearth

			advancement revoke @s only dorcupi:earth/boots

			recipe take @s dorcupi:earth/boots

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

	}

	dir air{

		function helmet{

			clear @s knowledge_book

			give @s leather_helmet{display:{Name:'{"text":"Air Helmet","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1

			advancement grant @s only dorcupi:craftair

			give @s glass

			advancement revoke @s only dorcupi:air/helmet

			recipe take @s dorcupi:air/helmet

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function chestplate{

			clear @s knowledge_book

			give @s leather_chestplate{display:{Name:'{"text":"Air Chestplate","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1

			advancement grant @s only dorcupi:craftair

			give @s glass

			advancement revoke @s only dorcupi:air/chestplate

			recipe take @s dorcupi:air/chestplate

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function leggings{

			clear @s knowledge_book

			give @s leather_leggings{display:{Name:'{"text":"Air Leggings","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1

			advancement grant @s only dorcupi:craftair

			give @s glass

			advancement revoke @s only dorcupi:air/leggings

			recipe take @s dorcupi:air/leggings

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function boots{

			clear @s knowledge_book

			give @s leather_boots{display:{Name:'{"text":"Air Boots","italic":false}',color:11595263},HideFlags:95,Unbreakable:1b,elementalArmor:3} 1

			advancement grant @s only dorcupi:craftair

			give @s glass

			advancement revoke @s only dorcupi:air/boots

			recipe take @s dorcupi:air/boots

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

	}

	dir water{

		function helmet{

			clear @s knowledge_book

			give @s leather_helmet{display:{Name:'{"text":"Water Helmet","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1

			advancement grant @s only dorcupi:craftwater

			advancement revoke @s only dorcupi:water/helmet

			recipe take @s dorcupi:water/helmet

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function chestplate{

			clear @s knowledge_book

			give @s leather_chestplate{display:{Name:'{"text":"Water Chestplate","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1

			advancement grant @s only dorcupi:craftwater

			advancement revoke @s only dorcupi:water/chestplate

			recipe take @s dorcupi:water/chestplate

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function leggings{

			clear @s knowledge_book

			give @s leather_leggings{display:{Name:'{"text":"Water Leggings","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1

			advancement grant @s only dorcupi:craftwater

			advancement revoke @s only dorcupi:water/leggings

			recipe take @s dorcupi:water/leggings

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function boots{

			clear @s knowledge_book

			give @s leather_boots{display:{Name:'{"text":"Water Boots","italic":false}',color:24701},HideFlags:95,Unbreakable:1b,elementalArmor:2} 1

			advancement grant @s only dorcupi:craftwater

			advancement revoke @s only dorcupi:water/boots

			recipe take @s dorcupi:water/boots

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

	}

	dir fire{

		function helmet{

			clear @s knowledge_book

			give @s leather_helmet{display:{Name:'{"text":"Fire Helmet","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1

			advancement grant @s only dorcupi:craftfire

			advancement revoke @s only dorcupi:fire/helmet

			recipe take @s dorcupi:fire/helmet

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function chestplate{

			clear @s knowledge_book

			give @s leather_chestplate{display:{Name:'{"text":"Fire Chestplate","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1

			advancement grant @s only dorcupi:craftfire

			advancement revoke @s only dorcupi:fire/chestplate

			recipe take @s dorcupi:fire/chestplate

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function leggings{

			clear @s knowledge_book

			give @s leather_leggings{display:{Name:'{"text":"Fire Leggings","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1

			advancement grant @s only dorcupi:craftfire

			advancement revoke @s only dorcupi:fire/leggings

			recipe take @s dorcupi:fire/leggings

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

		function boots{

			clear @s knowledge_book

			give @s leather_boots{display:{Name:'{"text":"Fire Boots","italic":false}',color:8193024},HideFlags:95,Unbreakable:1b,elementalArmor:1} 1

			advancement grant @s only dorcupi:craftfire

			advancement revoke @s only dorcupi:fire/boots

			recipe take @s dorcupi:fire/boots

			execute if entity @s[scores={dorcupi.crafted_pieces=0}] run block{

				trigger dorcupi.give_recipes

				scoreboard players set @s dorcupi.crafted_pieces 1

				advancement grant @s only dorcupi:craftroot

				advancement grant @s only dorcupi:craftstart

			}

		}

	}

}