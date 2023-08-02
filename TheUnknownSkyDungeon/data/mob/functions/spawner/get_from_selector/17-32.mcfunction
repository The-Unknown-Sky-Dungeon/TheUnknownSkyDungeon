#> mob:spawner/get_from_selector/17-32
#
# 
#
# @within function mob:spawner/get_from_selector/1-32

#二分探索
    execute if score $SpawnRange _1 matches ..24 run function mob:spawner/get_from_selector/17-24
    execute unless score $SpawnRange _1 matches ..24 run function mob:spawner/get_from_selector/25-32