#> mob:spawner/get_from_selector/5-8
#
# 
#
# @within function mob:spawner/get_from_selector/1-8

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 5 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..5]
    execute if score $SpawnRange _1 matches 6 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..6]
    execute if score $SpawnRange _1 matches 7 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..7]
    execute if score $SpawnRange _1 matches 8 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..8]