#> mob:spawner/get_from_selector/33-40
#
# 
#
# @within function mob:spawner/get_from_selector/33-48

#二分探索
    execute if score $SpawnRange _1 matches ..36 run function mob:spawner/get_from_selector/33-36
    execute unless score $SpawnRange _1 matches ..36 run function mob:spawner/get_from_selector/37-40