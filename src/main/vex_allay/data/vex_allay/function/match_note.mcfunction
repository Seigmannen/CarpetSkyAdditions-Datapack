# Increment the sequence on a match
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]}] if score @s current_note = @s target_note run scoreboard players add @s correct_notes 1

# Reset the sequence on a mismatch
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]}] unless score @s current_note = @s target_note run scoreboard players set @s correct_notes 0

# Check if the sequence is complete
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]},scores={correct_notes=5}] run function vex_allay:transform_allay
