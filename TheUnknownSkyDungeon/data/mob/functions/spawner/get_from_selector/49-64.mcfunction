#> mob:spawner/get_from_selector/49-64
#
# 
#
# @within function mob:spawner/get_from_selector/33-64

#二分探索
    execute if score $SpawnRange _1 matches ..56 run function mob:spawner/get_from_selector/49-56
    execute unless score $SpawnRange _1 matches ..56 run function mob:spawner/get_from_selector/57-64