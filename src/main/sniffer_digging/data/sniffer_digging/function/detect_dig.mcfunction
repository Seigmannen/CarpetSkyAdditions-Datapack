# Sand to suspicious sand only in desert pyramids and warm ocean ruins
execute as @e[type=sniffer] at @s if predicate sniffer_digging:is_desert_pyramid if block ~ ~-1 ~ minecraft:sand run function sniffer_digging:desert_pyramid_transform
execute as @e[type=sniffer] at @s if predicate sniffer_digging:is_warm_ocean_ruin if block ~ ~-1 ~ minecraft:sand run function sniffer_digging:warm_ocean_ruin_transform

# Gravel to suspicious gravel only in trail ruins and cold ocean ruins
execute as @e[type=sniffer] at @s if predicate sniffer_digging:is_trail_ruins if block ~ ~-1 ~ minecraft:gravel run function sniffer_digging:trail_ruins_transform
execute as @e[type=sniffer] at @s if predicate sniffer_digging:is_cold_ocean_ruin if block ~ ~-1 ~ minecraft:gravel run function sniffer_digging:cold_ocean_ruin_transform
