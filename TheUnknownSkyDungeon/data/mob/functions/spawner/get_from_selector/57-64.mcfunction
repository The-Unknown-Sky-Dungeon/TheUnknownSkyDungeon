#> mob:spawner/get_from_selector/57-64
#
# 
#
# @within function mob:spawner/get_from_selector/49-64

#二分探索
    execute if score $SpawnRange _1 matches ..60 run function mob:spawner/get_from_selector/57-60
    execute unless score $SpawnRange _1 matches ..60 run function mob:spawner/get_from_selector/61-64