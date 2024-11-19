# Grant an enchanted book with a random Swift Sneak level
execute as @a[tag=near_enchanting_table] if score @s random_level matches 1 run clear @s minecraft:book 1
execute as @a[tag=near_enchanting_table] if score @s random_level matches 1 run give @s minecraft:enchanted_book[enchantments={levels:{swift_sneak:1}}]

execute as @a[tag=near_enchanting_table] if score @s random_level matches 2 run clear @s minecraft:book 1
execute as @a[tag=near_enchanting_table] if score @s random_level matches 2 run give @s minecraft:enchanted_book[enchantments={levels:{swift_sneak:2}}]

execute as @a[tag=near_enchanting_table] if score @s random_level matches 3 run clear @s minecraft:book 1
execute as @a[tag=near_enchanting_table] if score @s random_level matches 3 run give @s minecraft:enchanted_book[enchantments={levels:{swift_sneak:3}}]

# Remove the tag to prevent multiple enchantments
tag @a[tag=near_enchanting_table] remove near_enchanting_table
advancement revoke @s only swift_sneak:enchanting_table_interaction
