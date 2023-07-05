#> lib:motion/core/apply
#
#
#
# @within function lib:motion/core/

#> Val
# @private
    #declare score_holder $Vector

# 初期化として視点を自分にあわせる & ^ ^ ^1を取得
    execute in core:system positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function calc:geometory/0-0-0-0-0

# 演算処理
    data modify storage tusd_lib: Pos set from entity 0-0-0-0-0 Pos
    execute store result score $Vector _1 run data get storage tusd_lib: Pos[0] 1000
    execute store result score $Vector _2 run data get storage tusd_lib: Pos[1] 1000
    execute store result score $Vector _3 run data get storage tusd_lib: Pos[2] 1000

    scoreboard players operation $Vector _1 *= $VectorMagnitude _1
    scoreboard players operation $Vector _2 *= $VectorMagnitude _1
    scoreboard players operation $Vector _3 *= $VectorMagnitude _1

# 適用
    execute store result storage tusd_lib: Pos[0] double 0.00001 run scoreboard players get $Vector _1
    execute store result storage tusd_lib: Pos[1] double 0.00001 run scoreboard players get $Vector _2
    execute store result storage tusd_lib: Pos[2] double 0.00001 run scoreboard players get $Vector _3
    data modify entity @s Motion set from storage tusd_lib: Pos

# リセット
    execute as 0-0-0-0-0 run function calc:geometory/return
    scoreboard players reset $Vector
    data remove storage tusd_lib: Pos