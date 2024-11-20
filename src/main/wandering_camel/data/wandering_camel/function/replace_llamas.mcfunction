# Summon a camel at the wandering trader's location
execute as @e[type=minecraft:wandering_trader,tag=!processed] at @s run summon minecraft:camel ~ ~ ~

# Kill the llamas near the wandering trader
execute as @e[type=minecraft:wandering_trader,tag=!processed] at @s run kill @e[type=minecraft:llama,distance=..5]

# Mark the wandering trader as processed
execute as @e[type=minecraft:wandering_trader,tag=!processed] run tag @s add processed
