#> asset:spawner/debug/weight_sum1/
#
# スポーンID配列の計算
#
# @within function asset:spawner/debug/marker_summon

# Weightがないのでリストの数で計算
    execute store result score $Weight _1 if data storage tusd_: Spawner.SpawnPotentials[]
    data modify storage tusd_ Spawner.NewSpawnPotentials set value []
    function asset:spawner/debug/weight_sum1/list
    data modify storage tusd_: Spawner.SpawnPotentials set from storage tusd_ Spawner.NewSpawnPotentials
    data remove storage tusd_ Spawner.NewSpawnPotentials