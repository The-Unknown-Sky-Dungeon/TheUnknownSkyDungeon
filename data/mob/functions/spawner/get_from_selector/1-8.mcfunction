#> mob:spawner/get_from_selector/1-8
#
# 
#
# @within function mob:spawner/get_from_selector/1-16

#二分探索
    execute if score $SpawnRange _1 matches ..4 run function mob:spawner/get_from_selector/1-4
    execute unless score $SpawnRange _1 matches ..4 run function mob:spawner/get_from_selector/5-8