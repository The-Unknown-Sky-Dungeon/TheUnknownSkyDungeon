#> mob:spawner/get_from_selector/29-32
#
# 
#
# @within function mob:spawner/get_from_selector/25-32

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 29 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..29]
    execute if score $SpawnRange _1 matches 30 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..30]
    execute if score $SpawnRange _1 matches 31 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..31]
    execute if score $SpawnRange _1 matches 32 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..32]