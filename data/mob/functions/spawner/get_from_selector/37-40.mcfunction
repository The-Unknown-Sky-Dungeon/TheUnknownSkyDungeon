#> mob:spawner/get_from_selector/37-40
#
# 
#
# @within function mob:spawner/get_from_selector/33-40

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 37 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..37]
    execute if score $SpawnRange _1 matches 38 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..38]
    execute if score $SpawnRange _1 matches 39 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..39]
    execute if score $SpawnRange _1 matches 40 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..40]