# Spawn the normal vault 10 blocks east of the spawner
execute as @a at @s if predicate breeze_spawner:structure_check run setblock ~10 ~ ~-2 minecraft:vault

# Spawn the ominous vault 10 blocks west of the spawner
execute as @a at @s if predicate breeze_spawner:structure_check run setblock ~-10 ~ ~-2 minecraft:vault[ominous=true]{id:"minecraft:vault",config:{key_item:{count:1,id:"minecraft:ominous_trial_key"},loot_table:"minecraft:chests/trial_chambers/reward_ominous"}}

# Visual particles and sound effects
execute as @a at @s if predicate breeze_spawner:structure_check run particle minecraft:flame ~ ~-1 ~-2 0.5 0.5 0.5 0.1 50 force
execute as @a at @s if predicate breeze_spawner:structure_check run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1

# Grant the advancement for spawning the trial spawner
execute as @a at @s if predicate breeze_spawner:structure_check run advancement grant @s only breeze_spawner:breeze_away

# Check if the structure exists and is in a trial chamber
execute as @a at @s if predicate breeze_spawner:structure_check positioned ~ ~ ~ run setblock ~ ~ ~-2 minecraft:trial_spawner{normal_config: {spawn_potentials: [{data: {entity: {id: "minecraft:breeze"}}, weight: 1}],total_mobs: 6.0f,simultaneous_mobs: 2.0f,ticks_between_spawn: 40,total_mobs_added_per_player: 2.0f,simultaneous_mobs_added_per_player: 1.0f,loot_tables_to_eject: [{data: "breeze_spawner:normal_vault_reward", weight: 1}]},ominous_config: {spawn_potentials: [{data: {entity: {id: "minecraft:breeze"}}, weight: 1}],total_mobs: 12.0f,simultaneous_mobs: 3.0f,ticks_between_spawn: 40,total_mobs_added_per_player: 2.0f,simultaneous_mobs_added_per_player: 1.0f,items_to_drop_when_ominous: "minecraft:spawners/trial_chamber/items_to_drop_when_ominous",loot_tables_to_eject: [{data: "breeze_spawner:ominous_vault_reward", weight: 1}]}}
