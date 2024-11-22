# Validate the beacon structure and spawn the Allay
execute as @a at @s if predicate vex_allay:structure_check_iron if predicate vex_allay:structure_check_gold if predicate vex_allay:structure_check_top as @e[type=minecraft:vex,limit=1,sort=nearest] at @s run summon minecraft:allay ~ ~ ~

# Add effects
execute as @e[type=minecraft:allay] run particle minecraft:heart ~0 ~1 ~-1 0.5 0.5 0.5 0.1 20
execute as @e[type=minecraft:allay] run playsound minecraft:block.amethyst_block.chime master @a ~0 ~1 ~-1 1 1

# Kill the original Vex
execute as @e[type=minecraft:vex] run kill @s
