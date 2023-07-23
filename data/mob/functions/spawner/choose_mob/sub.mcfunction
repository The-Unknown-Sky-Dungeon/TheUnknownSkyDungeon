#> mob:spawner/choose_mob/sub
#
# どのMOBを召喚するかをランダムで決める(減算処理)
#
# @within function mob:spawner/choose_mob/

# Weightを取得して_ Randomを減算
    execute store result score $WeightSum _2 run data get storage tusd_: Spawner.CopySpawnPotentials[-1].Weight
    scoreboard players operation _ Random -= $WeightSum _2
# リセット
    scoreboard players reset $WeightSum _2
# _ Randomが0以上なら再帰
    execute if score _ Random matches 0.. run data remove storage tusd_: Spawner.CopySpawnPotentials[-1]
    execute if score _ Random matches 0.. if data storage tusd_: Spawner.CopySpawnPotentials[-1] run function mob:spawner/choose_mob/sub