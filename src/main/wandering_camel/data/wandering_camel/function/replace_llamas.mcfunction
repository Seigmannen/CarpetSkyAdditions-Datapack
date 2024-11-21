# Summon a camel at the wandering trader's location if in a desert biome
execute as @e[type=minecraft:wandering_trader,tag=!processed] at @s if predicate wandering_camel:is_desert run summon minecraft:camel ~ ~ ~

# Find and disable drops for trader llamas near the wandering trader
execute as @e[type=minecraft:wandering_trader,tag=!processed] at @s run tag @e[type=minecraft:trader_llama,distance=..5,limit=2] add no_drops
execute as @e[type=minecraft:trader_llama,tag=no_drops] run data merge entity @s {DeathLootTable:"minecraft:empty"}

# Kill the trader llamas near the wandering trader
execute as @e[type=minecraft:wandering_trader,tag=!processed] at @s run kill @e[type=minecraft:trader_llama,tag=no_drops,distance=..5]

# Cleanup the no_drops tag
execute as @e[type=minecraft:trader_llama,tag=no_drops] run tag @s remove no_drops

# Mark the wandering trader as processed
execute as @e[type=minecraft:wandering_trader,tag=!processed] run tag @s add processed