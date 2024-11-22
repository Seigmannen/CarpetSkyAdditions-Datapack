# Detect a Vex on the completed structure
execute as @e[type=minecraft:vex,tag=!transformed] at @s if entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] if entity @s[tag=beacon_complete] run function vex_allay:transform_vex
