#> mob:spawner/get_from_selector/17-24
#
# 
#
# @within function mob:spawner/get_from_selector/17-32

#二分探索
    execute if score $SpawnRange _1 matches ..20 run function mob:spawner/get_from_selector/17-20
    execute unless score $SpawnRange _1 matches ..20 run function mob:spawner/get_from_selector/21-24