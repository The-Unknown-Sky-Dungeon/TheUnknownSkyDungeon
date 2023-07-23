#> mob:spawner/search_pos/loop
#
# ライブラリを用いて敵MOBが召喚できる場所を探す(Loop処理)
#
# @within function mob:spawner/search_pos/

    data modify storage tusd_lib: Argument.Bounds set value [[-1d,-1d],[-1d,-1d],[-1d,-1d]]
    execute store result storage tusd_lib: Argument.Bounds[][] double 1 run scoreboard players get $SpawnRange _1
    data modify storage tusd_lib: Argument.Bounds[1] set value [0d,3.0d]
    execute as 0-0-0-0-1 run function lib:spread_entity/
    scoreboard players remove $LoopTemp _1 1
    execute at 0-0-0-0-1 align xz positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run scoreboard players set $LoopTemp _1 -1
    execute if score $LoopTemp _1 matches 1.. run function mob:spawner/search_pos/loop