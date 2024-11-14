# Summon Allay at the Vex’s position
execute as @e[tag=vex_to_allay, scores={vexNotes=5}] run summon minecraft:allay ~ ~ ~

# Kill the original Vex
execute as @e[tag=vex_to_allay, scores={vexNotes=5}] run kill @s