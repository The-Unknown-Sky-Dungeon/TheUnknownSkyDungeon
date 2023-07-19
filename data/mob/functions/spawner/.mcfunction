#> mob:spawner/
#
# スポナーTick処理
#
# @within function core:tick/

# プレイヤーがRequiredPlayerRangeの範囲内に居るかのチェック
    execute if entity @a[predicate=player:player,distance=..64] run function mob:spawner/required_range

# 範囲内にいる場合Delayを下げていく
    execute if entity @s[tag=Success] run scoreboard players remove @s SpawnerDelay 1
    execute if entity @s[tag=Success,scores={SpawnerDelay=..0}] run function mob:spawner/summon

# 見た目のItemDisplayをSpawnerDelayに合わせて回転させる
    execute if entity @s[tag=Success] run function mob:spawner/direction_first

# リセット
    tag @s remove Success