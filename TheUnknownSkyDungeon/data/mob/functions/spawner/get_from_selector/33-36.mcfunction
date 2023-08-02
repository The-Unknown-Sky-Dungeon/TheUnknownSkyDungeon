#> mob:spawner/get_from_selector/33-36
#
# 
#
# @within function mob:spawner/get_from_selector/33-40

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 33 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..33]
    execute if score $SpawnRange _1 matches 34 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..34]
    execute if score $SpawnRange _1 matches 35 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..35]
    execute if score $SpawnRange _1 matches 36 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..36]