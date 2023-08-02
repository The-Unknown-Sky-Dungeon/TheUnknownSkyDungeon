#> mob:spawner/get_from_selector/33-48
#
# 
#
# @within function mob:spawner/get_from_selector/33-64

#二分探索
    execute if score $SpawnRange _1 matches ..40 run function mob:spawner/get_from_selector/33-40
    execute unless score $SpawnRange _1 matches ..40 run function mob:spawner/get_from_selector/41-48