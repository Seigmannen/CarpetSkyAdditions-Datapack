execute as @a[tag=near_warden,nbt={SelectedItem:{id:"minecraft:book"}}] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:enchanting_table run tag @s add ready_to_enchant
