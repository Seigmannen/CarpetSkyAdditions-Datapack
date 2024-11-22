# Validate the iron layer
execute if predicate vex_allay:structure_check_iron run tag @s add layer_iron_valid

# Validate the gold layer
execute if predicate vex_allay:structure_check_gold run tag @s add layer_gold_valid

# Validate the top layer
execute if predicate vex_allay:structure_check_top run tag @s add layer_top_valid

# Final structure validation
execute if entity @s[tag=layer_iron_valid,tag=layer_gold_valid,tag=layer_top_valid] run tag @s add beacon_complete

# Debug
execute if entity @s[tag=beacon_complete] run say "Beacon structure is complete!"
