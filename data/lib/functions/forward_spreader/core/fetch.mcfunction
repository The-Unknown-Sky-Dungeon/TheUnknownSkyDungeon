#> lib:forward_spreader/core/fetch
#
# 汎用entityのPosに計算済みの拡散座標を代入します
#
# @within function lib:forward_spreader/core/

#> _1
# @private
    #declare score_holder $Pos

# 汎用EntityのPosを取得
    data modify storage tusd_lib: Pos set from entity @s Pos
    execute store result score $Pos _1 run data get storage tusd_lib: Pos[0] 10000
    execute store result score $Pos _2 run data get storage tusd_lib: Pos[1] 10000
    execute store result score $Pos _3 run data get storage tusd_lib: Pos[2] 10000
# ベクトルを加算
    scoreboard players operation $Pos _1 += $XYZ _1
    scoreboard players operation $Pos _2 += $XYZ _2
    scoreboard players operation $Pos _3 += $XYZ _3
# 戻す
    execute store result storage tusd_lib: Pos[0] double 0.0001 run scoreboard players get $Pos _1
    execute store result storage tusd_lib: Pos[1] double 0.0001 run scoreboard players get $Pos _2
    execute store result storage tusd_lib: Pos[2] double 0.0001 run scoreboard players get $Pos _3
    data modify entity @s Pos set from storage tusd_lib: Pos
# リセット
    scoreboard players reset $Pos
    data remove storage tusd_lib: Pos