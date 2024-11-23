# Generate a random number
function sniffer_digging:rng

# Set cooldown to 1200 ticks (1 minute)
scoreboard players set @s snifferCooldown 1200

# Check if the random number is within the 10% range and call detect_dig
execute if score out rng matches 1..10 run function sniffer_digging:detect_dig
