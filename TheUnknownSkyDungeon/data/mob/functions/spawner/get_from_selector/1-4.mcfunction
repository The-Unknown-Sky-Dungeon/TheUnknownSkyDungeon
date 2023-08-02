#> mob:spawner/get_from_selector/1-4
#
# 
#
# @within function mob:spawner/get_from_selector/1-8

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 1 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..1]
    execute if score $SpawnRange _1 matches 2 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..2]
    execute if score $SpawnRange _1 matches 3 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..3]
    execute if score $SpawnRange _1 matches 4 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..4]