# Transform the Vex into an Allay
execute as @e[type=minecraft:vex,tag=beacon_complete] run summon minecraft:allay ~ ~ ~

# Add visual and audio effects
execute as @e[type=minecraft:allay] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute as @e[type=minecraft:allay] run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 1

# Remove the original Vex
execute as @e[type=minecraft:vex,tag=beacon_complete] run kill @s

# Notify the player
tellraw @a {"text":"The Vex has been transformed into an Allay!"}