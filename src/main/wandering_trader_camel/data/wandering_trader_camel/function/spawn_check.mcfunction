# Check if the wandering trader is in a desert biome and replace llamas if true
execute as @e[type=minecraft:wandering_trader, tag=!camel_checked] at @s if biome minecraft:desert run function wandering_trader_camel:replace_with_camel
execute as @e[type=minecraft:wandering_trader, tag=!camel_checked] at @s if biome minecraft:desert_hills run function wandering_trader_camel:replace_with_camel
execute as @e[type=minecraft:wandering_trader, tag=!camel_checked] at @s if biome minecraft:desert_lakes run function wandering_trader_camel:replace_with_camel

# Tag the wandering trader so this function only runs once per trader
tag @s add camel_checked