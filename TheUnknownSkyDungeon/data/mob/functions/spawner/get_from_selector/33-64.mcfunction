#> mob:spawner/get_from_selector/33-64
#
# 
#
# @within function mob:spawner/get_from_selector/

#二分探索
    execute if score $SpawnRange _1 matches ..48 run function mob:spawner/get_from_selector/33-48
    execute unless score $SpawnRange _1 matches ..48 run function mob:spawner/get_from_selector/49-64