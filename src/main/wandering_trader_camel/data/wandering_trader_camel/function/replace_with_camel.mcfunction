# Kill any llamas that are close to the trader (those that spawn with the trader)
execute as @e[type=minecraft:llama, distance=..5, limit=2] run kill @s

# Summon a camel with the trader riding it
execute as @e[type=minecraft:wandering_trader] run summon minecraft:camel ~ ~ ~ {Tame:1b, Passengers:[{id:"minecraft:wandering_trader"}]}