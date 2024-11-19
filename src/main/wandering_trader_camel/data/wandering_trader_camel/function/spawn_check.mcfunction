# Check if the wandering trader spawns in a desert biome and add tag if true
execute as @e[type=minecraft:wandering_trader, tag=!camel_checked] at @s if biome ~ ~ ~ minecraft:desert run tag @s add needs_camel

# Mark all checked traders so they aren’t re-checked
tag @e[type=minecraft:wandering_trader, tag=!camel_checked] add camel_checked

# Run camel replacement function for traders tagged with needs_camel
execute as @e[type=minecraft:wandering_trader, tag=needs_camel] run function wandering_trader_camel:replace_with_camel