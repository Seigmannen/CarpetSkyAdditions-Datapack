# convert_sand_gravel.mcfunction

# Check for Sand in a Desert Pyramid or Warm Ocean Ruin, with 10% chance to transform to Suspicious Sand
execute if block ~ ~-1 ~ minecraft:sand unless block ~ ~-1 ~ minecraft:suspicious_sand if predicate sniffer_digging:is_desert_pyramid_or_warm_ocean_ruin if random < 0.1 run function sniffer_digging:transform_to_suspicious_sand

# Check for Gravel in a Trail Ruin or Cold Ocean Ruin, with 10% chance to transform to Suspicious Gravel
execute if block ~ ~-1 ~ minecraft:gravel unless block ~ ~-1 ~ minecraft:suspicious_gravel if predicate sniffer_digging:is_trail_ruin_or_cold_ocean_ruin if random < 0.1 run function sniffer_digging:transform_to_suspicious_gravel