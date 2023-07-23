#> asset:spawner/debug/weight_sum2/
#
# スポーンID配列の計算
#
# @within function asset:spawner/debug/marker_summon

    scoreboard players set $Weight _1 0
    data modify storage tusd_ Spawner.NewSpawnPotentials set from storage tusd_: Spawner.SpawnPotentials
    function asset:spawner/debug/weight_sum2/loop
    data remove storage tusd_ Spawner.NewSpawnPotentials