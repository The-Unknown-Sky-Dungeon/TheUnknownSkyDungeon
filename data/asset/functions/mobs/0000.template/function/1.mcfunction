data modify storage tusd_api: Damage.Value set value 5.0d
data modify storage tusd_api: Damage.InFront set value 1b
execute as @a[distance=..6,predicate=player:living_player] run function api:player/damage/can_guard