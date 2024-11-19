# Step 1: Tag the librarian when damaged by a Warden
execute as @e[type=villager, nbt={VillagerData:{profession:"minecraft:librarian"}}, tag=!warden_hit] at @s if entity @e[type=warden, distance=..5, limit=1, sort=nearest] run tag @s add warden_hit

# Step 2: Drop the book when the tagged librarian dies
execute as @e[type=villager, nbt={Tags:["warden_hit"], DeathTime:1s}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{enchantments:{levels:{"minecraft:swift_sneak":3}}}}}

# Step 3: Clean up the tag after death
execute as @e[type=villager, nbt={Tags:["warden_hit"], DeathTime:1s}] run tag @s remove warden_hit
