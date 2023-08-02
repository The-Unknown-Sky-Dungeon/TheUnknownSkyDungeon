#> mob:spawner/get_from_selector/1-16
#
# 
#
# @within function mob:spawner/get_from_selector/1-32

#二分探索
    execute if score $SpawnRange _1 matches ..8 run function mob:spawner/get_from_selector/1-8
    execute unless score $SpawnRange _1 matches ..8 run function mob:spawner/get_from_selector/9-16