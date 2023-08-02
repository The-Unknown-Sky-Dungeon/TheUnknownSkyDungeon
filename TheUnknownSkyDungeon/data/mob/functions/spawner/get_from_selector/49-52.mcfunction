#> mob:spawner/get_from_selector/49-52
#
# 
#
# @within function mob:spawner/get_from_selector/49-56

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 49 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..49]
    execute if score $SpawnRange _1 matches 50 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..50]
    execute if score $SpawnRange _1 matches 51 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..51]
    execute if score $SpawnRange _1 matches 52 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..52]