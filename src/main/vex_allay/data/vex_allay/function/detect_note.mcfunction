# Detect Note Block activation and store the pitch in a scoreboard
execute as @a[distance=..16] store result score @s current_note run data get storage vex_allay:note_data pitch 1
scoreboard players operation @s current_note %= @s modulus_12

# Compare the current note with the target note
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]}] if score @s current_note = @s target_note run scoreboard players add @s correct_notes 1

# Call note matching function
function vex_allay:match_note
