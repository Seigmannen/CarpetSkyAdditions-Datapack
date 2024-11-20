# Replace llamas with a camel if the wandering trader spawns in a desert
execute as @e[type=wandering_trader,tag=!processed] at @s if predicate wandering_camel:is_desert run function wandering_camel:replace_llamas
execute as @e[type=wandering_trader,tag=!processed] run tag @s add processed
