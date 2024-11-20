execute as @e[type=sniffer] at @s if predicate sniffer_digging:is_desert_pyramid_or_warm_ocean_ruin run function sniffer_digging:transform_to_suspicious_sand
execute as @e[type=sniffer] at @s if predicate sniffer_digging:is_trail_ruin_or_cold_ocean_ruin run function sniffer_digging:transform_to_suspicious_gravel
