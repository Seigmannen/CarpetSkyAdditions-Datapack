# Check if the structure exists and is in a trial chamber
execute if predicate breeze_spawner:structure_check positioned ~ ~ ~ run setblock ~ ~1 ~ minecraft:trial_spawner{normal_config: {spawn_potentials: [{data: {entity: {id: "minecraft:breeze"}}, weight: 1}],total_mobs: 6.0f,simultaneous_mobs: 2.0f,ticks_between_spawn: 40,total_mobs_added_per_player: 2.0f,simultaneous_mobs_added_per_player: 1.0f,loot_tables_to_eject: [{data: "breeze_spawner:normal_vault_reward", weight: 1}]},ominous_config: {spawn_potentials: [{data: {entity: {id: "minecraft:breeze"}}, weight: 1}],total_mobs: 12.0f,simultaneous_mobs: 3.0f,ticks_between_spawn: 40,total_mobs_added_per_player: 2.0f,simultaneous_mobs_added_per_player: 1.0f,loot_tables_to_eject: [{data: "breeze_spawner:ominous_vault_reward", weight: 1}]}}

# Optional: Prevent re-triggering by removing the central block
execute if predicate breeze_spawner:structure_check run setblock ~ ~ ~ minecraft:air
