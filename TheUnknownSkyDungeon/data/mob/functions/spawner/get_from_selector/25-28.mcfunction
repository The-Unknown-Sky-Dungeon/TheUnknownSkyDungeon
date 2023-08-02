#> mob:spawner/get_from_selector/25-28
#
# 
#
# @within function mob:spawner/get_from_selector/25-32

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 25 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..25]
    execute if score $SpawnRange _1 matches 26 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..26]
    execute if score $SpawnRange _1 matches 27 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..27]
    execute if score $SpawnRange _1 matches 28 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..28]