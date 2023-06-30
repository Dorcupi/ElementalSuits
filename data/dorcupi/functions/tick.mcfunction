#built using mc-build (https://github.com/mc-build/mc-build)

execute if score loaded_reloads dorcupi.loaded_reloads < supposed_reloads dorcupi.loaded_reloads run reload
execute as @a at @s run function dorcupi:as_players
kill @e[type=item,nbt={Item:{tag:{element_sword:0}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:1}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:2}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:3}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:4}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:5}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:6}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:7}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:8}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:9}}}]
kill @e[type=item,nbt={Item:{tag:{element_sword:10}}}]