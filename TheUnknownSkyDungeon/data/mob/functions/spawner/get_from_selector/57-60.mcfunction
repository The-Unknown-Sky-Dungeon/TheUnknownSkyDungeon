#> mob:spawner/get_from_selector/57-60
#
# 
#
# @within function mob:spawner/get_from_selector/57-64

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 57 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..57]
    execute if score $SpawnRange _1 matches 58 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..58]
    execute if score $SpawnRange _1 matches 59 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..59]
    execute if score $SpawnRange _1 matches 60 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..60]