#> mob:spawner/get_from_selector/17-20
#
# 
#
# @within function mob:spawner/get_from_selector/17-24

#探索終了からのスコア代入
    execute if score $SpawnRange _1 matches 17 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..17]
    execute if score $SpawnRange _1 matches 18 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..18]
    execute if score $SpawnRange _1 matches 19 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..19]
    execute if score $SpawnRange _1 matches 20 store result score $MaxNearbyEntities _2 if entity @e[tag=Enemy,distance=..20]