# Convert regular sand and gravel to suspicious versions based on specific conditions

# Detect sand in a specific range and convert to suspicious_sand
execute as @e[type=minecraft:sniffer] at @s run execute if block ~ ~-1 ~ minecraft:sand run setblock ~ ~-1 ~ minecraft:suspicious_sand

# Detect gravel in a specific range and convert to suspicious_gravel
execute as @e[type=minecraft:sniffer] at @s run execute if block ~ ~-1 ~ minecraft:gravel run setblock ~ ~-1 ~ minecraft:suspicious_gravel