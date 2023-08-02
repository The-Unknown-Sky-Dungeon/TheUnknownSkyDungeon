#> mob:spawner/get_from_selector/1-32
#
# 
#
# @within function mob:spawner/get_from_selector/

#二分探索
    execute if score $SpawnRange _1 matches ..16 run function mob:spawner/get_from_selector/1-16
    execute unless score $SpawnRange _1 matches ..16 run function mob:spawner/get_from_selector/17-32