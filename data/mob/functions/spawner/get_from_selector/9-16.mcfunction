#> mob:spawner/get_from_selector/9-16
#
# 
#
# @within function mob:spawner/get_from_selector/1-16

#二分探索
    execute if score $SpawnRange _1 matches ..12 run function mob:spawner/get_from_selector/9-12
    execute unless score $SpawnRange _1 matches ..12 run function mob:spawner/get_from_selector/13-16