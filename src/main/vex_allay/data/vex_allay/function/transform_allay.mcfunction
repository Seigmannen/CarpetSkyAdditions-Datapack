# Transform the Vex into an Allay
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]},scores={correct_notes=5}] run summon minecraft:allay ~ ~ ~

# Play particle and sound effects
execute as @e[type=minecraft:allay] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute as @e[type=minecraft:allay] run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 1

# Kill the original Vex
execute as @e[type=minecraft:vex,nbt={Passengers:[{id:"minecraft:minecart"}]},scores={correct_notes=5}] run kill @s
