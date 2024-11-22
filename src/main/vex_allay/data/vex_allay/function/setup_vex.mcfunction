# Assign a random target note (1 to 12) for Vexes in Minecarts
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]}] run scoreboard players set @s target_note 1
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]}] run scoreboard players add @s target_note 11

# Emit redstone signal corresponding to the target_note
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]}] at @s run setblock ~ ~-1 ~ redstone_block
