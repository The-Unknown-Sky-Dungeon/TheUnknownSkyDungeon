#> mob:spawner/get_from_selector/61-64
#
# 
#
# @within function mob:spawner/get_from_selector/57-64

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 61 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..61]
    execute if score $SpawnRange _1 matches 62 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..62]
    execute if score $SpawnRange _1 matches 63 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..63]
    execute if score $SpawnRange _1 matches 64 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..64]