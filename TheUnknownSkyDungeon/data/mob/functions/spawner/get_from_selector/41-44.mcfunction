#> mob:spawner/get_from_selector/41-44
#
# 
#
# @within function mob:spawner/get_from_selector/41-48

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 41 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..41]
    execute if score $SpawnRange _1 matches 42 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..42]
    execute if score $SpawnRange _1 matches 43 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..43]
    execute if score $SpawnRange _1 matches 44 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..44]