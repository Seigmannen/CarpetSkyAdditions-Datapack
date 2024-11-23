# Reduce the cooldown timer for Sniffers
execute as @e[type=sniffer] if score @s snifferCooldown matches 1.. run scoreboard players remove @s snifferCooldown 1

# If cooldown is 0, attempt a dig
execute as @e[type=sniffer] if score @s snifferCooldown matches 0 if block ~ ~-1 ~ #sniffer_digging:sniffer_diggable run function sniffer_digging:attempt_dig

# Debugging: Notify when the timer ticks
execute as @e[type=sniffer] if score @s snifferCooldown matches 1.. run tellraw @a ["Sniffer cooldown ticking: ", {"score":{"name":"@s","objective":"snifferCooldown"}}]

# Debugging: Notify when the cooldown ends
execute as @e[type=sniffer] if score @s snifferCooldown matches 0 run tellraw @a ["Sniffer cooldown ended, attempting to dig."]
