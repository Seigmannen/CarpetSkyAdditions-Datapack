execute as @a[nbt={SelectedItem:{id:"minecraft:book"}}] at @s if entity @e[type=minecraft:warden,distance=..8] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:enchanting_table run tag @s add near_enchanting_table
