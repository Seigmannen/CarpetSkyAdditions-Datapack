# Set the initial score to 1 for all players with the near_warden_sneak tag
execute as @a[tag=near_warden_sneak] run scoreboard players set @s random_level 1

# Increment by 1 with a 50% chance to get level 2
execute as @a[tag=near_warden_sneak] if score @s random_level matches 1 run scoreboard players add @s random_level 1

# Increment by 1 again with a 33% chance to get level 3
execute as @a[tag=near_warden_sneak] if score @s random_level matches 2 run scoreboard players add @s random_level 1
