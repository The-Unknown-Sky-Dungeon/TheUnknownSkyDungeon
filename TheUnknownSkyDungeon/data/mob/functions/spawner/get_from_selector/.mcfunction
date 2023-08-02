#> mob:spawner/get_from_selector/
#
# 二分探索でエンティティの数を調べる
#
# @within function mob:spawner/summon

#初期化
    scoreboard players set $MaxNearbyEntities _2 0

#二分探索開始
    execute if score $SpawnRange _1 matches ..32 run function mob:spawner/get_from_selector/1-32
    execute unless score $SpawnRange _1 matches ..32 run function mob:spawner/get_from_selector/33-64