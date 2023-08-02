#> asset:spawner/debug/weight_sum2/loop
#
# 加算Loop処理
#
# @within function asset:spawner/debug/weight_sum2/

# Weightを取得して加算
    execute store result score $Weight _2 run data get storage tusd_ Spawner.NewSpawnPotentials[-1].Weight
    scoreboard players operation $Weight _1 += $Weight _2
# リセット
    scoreboard players reset $Weight _2
# 要素がまだあったら再帰する
    data remove storage tusd_ Spawner.NewSpawnPotentials[-1]
    execute if data storage tusd_ Spawner.NewSpawnPotentials[-1] run function asset:spawner/debug/weight_sum2/loop