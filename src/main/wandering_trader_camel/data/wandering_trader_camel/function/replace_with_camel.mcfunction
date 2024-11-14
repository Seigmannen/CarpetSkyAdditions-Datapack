# Kill any llamas near the trader
execute as @e[type=minecraft:llama, distance=..5, limit=2] run kill @s

# Summon a camel with the trader riding it
execute as @e[type=minecraft:wandering_trader, tag=needs_camel] at @s run summon minecraft:camel ~ ~ ~ {Tame:1b, Passengers:[{id:"minecraft:wandering_trader"}]}

# Remove the needs_camel tag after replacement
tag @e[type=minecraft:wandering_trader, tag=needs_camel] remove needs_camel