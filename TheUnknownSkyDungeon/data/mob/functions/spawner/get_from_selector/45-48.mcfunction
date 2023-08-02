#> mob:spawner/get_from_selector/45-48
#
# 
#
# @within function mob:spawner/get_from_selector/41-48

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 45 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..45]
    execute if score $SpawnRange _1 matches 46 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..46]
    execute if score $SpawnRange _1 matches 47 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..47]
    execute if score $SpawnRange _1 matches 48 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..48]