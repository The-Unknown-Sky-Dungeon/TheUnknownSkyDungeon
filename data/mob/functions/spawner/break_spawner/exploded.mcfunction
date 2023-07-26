#> mob:spawner/break_spawner/exploded
#
# 爆発破壊時の処理
#
# @within function mob:spawner/break_spawner/

# ItemをGarbage行き
    execute as @e[distance=..1,type=item,nbt={Item:{tag:{ExplodedSpawner:1b}}}] run tag @s add Garbage

# スポナーのグレードに応じて設置
    execute if data storage tusd_: Spawner{Grade:"Normal"} run setblock ~ ~ ~ magenta_glazed_terracotta[facing=east] replace