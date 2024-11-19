execute as @a[nbt={Inventory:[{id:"minecraft:book"}]}] at @s if entity @e[type=minecraft:warden,distance=..8] run tag @s add near_warden
