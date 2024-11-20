# Sand to suspicious sand only in desert pyramids and warm ocean ruins
execute as @e[type=sniffer] at @s if predicate sniffer_digging:is_desert_pyramid_or_warm_ocean_ruin if block ~ ~-1 ~ minecraft:sand run function sniffer_digging:transform_to_suspicious_sand

# Gravel to suspicious gravel only in trail ruins and cold ocean ruins
execute as @e[type=sniffer] at @s if predicate sniffer_digging:is_trail_ruin_or_cold_ocean_ruin if block ~ ~-1 ~ minecraft:gravel run function sniffer_digging:transform_to_suspicious_gravel
