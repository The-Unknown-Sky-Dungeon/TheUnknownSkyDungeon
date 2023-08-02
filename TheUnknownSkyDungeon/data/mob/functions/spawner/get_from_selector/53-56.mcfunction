#> mob:spawner/get_from_selector/53-56
#
# 
#
# @within function mob:spawner/get_from_selector/49-56

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 53 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..53]
    execute if score $SpawnRange _1 matches 54 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..54]
    execute if score $SpawnRange _1 matches 55 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..55]
    execute if score $SpawnRange _1 matches 56 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..56]