# Detect recently hurt Vex
execute as @e[type=minecraft:vex,nbt={HurtTime:10s}] at @s if entity @a[distance=..2,nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] run function vex_allay:transform_vex