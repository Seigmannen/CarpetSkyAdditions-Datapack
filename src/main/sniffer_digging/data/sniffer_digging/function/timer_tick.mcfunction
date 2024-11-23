# Increment the timer
scoreboard players add global_timer dynamic_timer 1

# Check if the timer has reached the desired time (e.g., 600 ticks for 30 seconds)
execute if score global_timer dynamic_timer matches 1200.. run function sniffer_digging:attempt_dig

# Reset the timer after triggering the function
execute if score global_timer dynamic_timer matches 1200.. run scoreboard players set global_timer dynamic_timer 0
