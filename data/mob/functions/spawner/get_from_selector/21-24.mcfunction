#> mob:spawner/get_from_selector/21-24
#
# 
#
# @within function mob:spawner/get_from_selector/17-24

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 21 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..21]
    execute if score $SpawnRange _1 matches 22 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..22]
    execute if score $SpawnRange _1 matches 23 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..23]
    execute if score $SpawnRange _1 matches 24 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..24]