# Give the reward only if the player doesn't have the stopped_sneaking tag
execute as @a[scores={sneak_timer=200..},tag=near_warden_sneak] if score @s random_level matches 1 run clear @s minecraft:book 1
execute as @a[scores={sneak_timer=200..},tag=near_warden_sneak] if score @s random_level matches 1 run give @s minecraft:enchanted_book[enchantments={levels:{swift_sneak:1}}]

execute as @a[scores={sneak_timer=200..},tag=near_warden_sneak] if score @s random_level matches 2 run clear @s minecraft:book 1
execute as @a[scores={sneak_timer=200..},tag=near_warden_sneak] if score @s random_level matches 2 run give @s minecraft:enchanted_book[enchantments={levels:{swift_sneak:2}}]

execute as @a[scores={sneak_timer=200..},tag=near_warden_sneak] if score @s random_level matches 3 run clear @s minecraft:book 1
execute as @a[scores={sneak_timer=200..},tag=near_warden_sneak] if score @s random_level matches 3 run give @s minecraft:enchanted_book[enchantments={levels:{swift_sneak:3}}]

scoreboard players set @a[scores={sneak_timer=200..},tag=near_warden_sneak] sneak_timer 0
tag @a[scores={sneak_timer=200..},tag=near_warden_sneak] remove near_warden_sneak
tag @a[scores={sneak_timer=200..},tag=near_warden_sneak] add stopped_sneaking
