#> asset:spawner/debug/weight_sum1/list
#
# 正規List化する
#
# @within function asset:spawner/debug/weight_sum1/

# Weightは1で正規化する
    data modify storage tusd_ Spawner.NewSpawnPotentials append value {Weight:1}
    data modify storage tusd_ Spawner.NewSpawnPotentials[-1].Mob set from storage tusd_: Spawner.SpawnPotentials[-1]
# 要素がまだあったら再帰する
    data remove storage tusd_: Spawner.SpawnPotentials[-1]
    execute if data storage tusd_: Spawner.SpawnPotentials[-1] run function asset:spawner/debug/weight_sum1/list