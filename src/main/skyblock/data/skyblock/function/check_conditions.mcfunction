# Check if it's raining by testing for clear skies and applying a score if it’s not clear
execute as @a at @s unless entity @s[nbt={OnGround:1b}] run scoreboard players set @s isRaining 1
execute as @a at @s if entity @s[nbt={OnGround:1b}] run scoreboard players set @s isRaining 0

# Check if the player has conduit power effect
execute as @s if entity @s[nbt={active_effects:[{id:"minecraft:conduit_power"}]}] run tag @s add has_conduit_power

# Combine checks
execute as @s if score @s isRaining matches 1 if entity @s[tag=has_conduit_power] run function skyblock:advancement_rewards/flow_armor_trim_smithing_template

# Clean up tags and scores
scoreboard players reset @s isRaining
tag @s remove has_conduit_power