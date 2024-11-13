# Check if there is any player within 8 blocks of a Warden
execute as @a at @s if entity @e[type=minecraft:warden,distance=..8] run function swift_sneak:grant_swift_sneak
execute as @a at @s unless entity @e[type=minecraft:warden,distance=..8] run function swift_sneak:remove_swift_sneak

# Reschedule this function to keep it running every tick
schedule function swift_sneak:check_distance 1t