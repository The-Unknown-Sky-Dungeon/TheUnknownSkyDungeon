#> mob:spawner/get_from_selector/49-56
#
# 
#
# @within function mob:spawner/get_from_selector/49-64

#二分探索
    execute if score $SpawnRange _1 matches ..52 run function mob:spawner/get_from_selector/49-52
    execute unless score $SpawnRange _1 matches ..52 run function mob:spawner/get_from_selector/53-56