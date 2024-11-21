execute as @a positioned ~ ~ ~ run say "Testing blocks"
execute as @a if block ~ ~ ~ minecraft:copper_block run say "Standing on copper block!"
execute as @a if block ~-1 ~ ~-1 minecraft:chiseled_tuff run say "Chiseled tuff detected NW corner!"
execute as @a if block ~1 ~ ~-1 minecraft:chiseled_tuff run say "Chiseled tuff detected NE corner!"
