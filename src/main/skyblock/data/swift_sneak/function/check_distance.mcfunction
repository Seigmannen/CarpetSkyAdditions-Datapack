execute as @a[scores={near_warden=1}] run function swift_sneak:grant_swift_sneak
execute as @a[scores={near_warden=0}] run function swift_sneak:remove_swift_sneak
schedule function swift_sneak:check_distance 1t