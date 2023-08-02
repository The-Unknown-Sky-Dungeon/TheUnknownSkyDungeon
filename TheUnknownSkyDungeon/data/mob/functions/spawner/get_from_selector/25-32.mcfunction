#> mob:spawner/get_from_selector/25-32
#
# 
#
# @within function mob:spawner/get_from_selector/17-32

#二分探索
    execute if score $SpawnRange _1 matches ..28 run function mob:spawner/get_from_selector/25-28
    execute unless score $SpawnRange _1 matches ..28 run function mob:spawner/get_from_selector/29-32