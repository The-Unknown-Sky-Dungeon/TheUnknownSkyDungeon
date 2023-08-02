#> mob:spawner/get_from_selector/9-12
#
# 
#
# @within function mob:spawner/get_from_selector/9-16

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 9 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..9]
    execute if score $SpawnRange _1 matches 10 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..10]
    execute if score $SpawnRange _1 matches 11 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..11]
    execute if score $SpawnRange _1 matches 12 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..12]