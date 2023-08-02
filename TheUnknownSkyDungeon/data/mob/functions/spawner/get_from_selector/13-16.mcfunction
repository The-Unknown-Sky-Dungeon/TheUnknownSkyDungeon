#> mob:spawner/get_from_selector/13-16
#
# 
#
# @within function mob:spawner/get_from_selector/9-16

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 13 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..13]
    execute if score $SpawnRange _1 matches 14 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..14]
    execute if score $SpawnRange _1 matches 15 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..15]
    execute if score $SpawnRange _1 matches 16 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..16]