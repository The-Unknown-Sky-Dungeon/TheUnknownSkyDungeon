#> mob:spawner/choose_mob/
#
# どのMOBを召喚するかをランダムで決める
#
# @within function mob:spawner/summon_loop

# 配列を壊す操作なのでClone
    data modify storage tusd_: Spawner.CopySpawnPotentials set from storage tusd_: Spawner.SpawnPotentials
# Weightの総和よりも小さい乱数を生成
    execute store result score _ Random run function calc:random
    scoreboard players operation _ Random %= $WeightSum _1
# _ Randomのスコアが負の値になるまで減算しつつ要素を消す
    function mob:spawner/choose_mob/sub
# 召喚するMobのSummonIDを取得
    data modify storage tusd_: SummonID set from storage tusd_: Spawner.CopySpawnPotentials[-1].Mob
# リセット
    data remove storage tusd_: Spawner.CopySpawnPotentials