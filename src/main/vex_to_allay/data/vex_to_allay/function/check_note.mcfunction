# Detect note block use near Vex
execute as @e[tag=vex_to_allay] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1

# Increment progress (example assumes any note triggers progress)
scoreboard players add @s vexNotes 1

# Check if the player has played the correct note 5 times
execute as @s if score @s vexNotes matches 5 run function vex_to_allay:convert