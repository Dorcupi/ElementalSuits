#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players enable @s dorcupi.give_recipes
execute as @s[scores={dorcupi.give_recipes=1..}] run function dorcupi:__generated__/block/0
function dorcupi:sneak_reset
execute as @s[nbt=!{Inventory:[{Slot:102b}]}] run function dorcupi:__generated__/block/1
execute as @s[nbt=!{Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:4}}]}] run function dorcupi:__generated__/block/2
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:0}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:0}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:0}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:0}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:1}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:1}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:1}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:1}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:2}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:2}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:2}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:2}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:3}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:3}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:3}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:3}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:4}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:4}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:4}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:4}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:5}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:5}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:5}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:5}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:6}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:6}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:6}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:6}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:7}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:7}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:7}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:7}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:8}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:8}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:8}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:8}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:9}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:9}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:9}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:9}}]}] run function dorcupi:wearing_elemental_boots
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:10}}]}] run function dorcupi:wearing_elemental_helmet
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:10}}]}] run function dorcupi:wearing_elemental_chest
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:10}}]}] run function dorcupi:wearing_elemental_legs
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{elementalArmor:10}}]}] run function dorcupi:wearing_elemental_boots
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:0}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:0}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:0}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:1}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:1}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:1}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:2}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:2}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:2}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:3}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:3}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:3}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:4}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:4}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:4}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:5}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:5}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:5}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:6}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:6}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:6}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:7}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:7}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:7}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:8}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:8}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:8}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:9}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:9}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:9}}]}] run function dorcupi:leggings_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{elementalArmor:10}}]}] run function dorcupi:helmet_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{elementalArmor:10}}]}] run function dorcupi:chest_reset
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{elementalArmor:10}}]}] run function dorcupi:leggings_reset