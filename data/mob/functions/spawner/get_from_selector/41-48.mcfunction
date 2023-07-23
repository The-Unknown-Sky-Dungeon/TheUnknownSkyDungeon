#> mob:spawner/get_from_selector/41-48
#
# 
#
# @within function mob:spawner/get_from_selector/33-48

#二分探索
    execute if score $SpawnRange _1 matches ..44 run function mob:spawner/get_from_selector/41-44
    execute unless score $SpawnRange _1 matches ..44 run function mob:spawner/get_from_selector/45-48