#> lib:operate_rotation/core/range
#
# OperateRotationに関する向き設定処理を行います
#
# @within function lib:operate_rotation/core/

#> private
# @private
    #declare score_holder $MinRotation
    #declare score_holder $MaxRotation
    #declare score_holder $RangeRotation

# Min と Max を取得する
    execute store result score $MinRotation _1 run data get storage tusd_lib: Argument.RotateDirection.Min[0] 100
    execute store result score $MinRotation _2 run data get storage tusd_lib: Argument.RotateDirection.Min[1] 100
    execute store result score $MaxRotation _1 run data get storage tusd_lib: Argument.RotateDirection.Max[0] 100
    execute store result score $MaxRotation _2 run data get storage tusd_lib: Argument.RotateDirection.Max[1] 100

# Min ~ Max の幅を計算してランダム化処理
    scoreboard players operation $MaxRotation _1 -= $MinRotation _1
    scoreboard players operation $MaxRotation _2 -= $MinRotation _2
    execute store result score $RangeRotation _1 run function calc:random
    execute store result score $RangeRotation _2 run function calc:random
    scoreboard players operation $RangeRotation _1 %= $MaxRotation _1
    scoreboard players operation $RangeRotation _2 %= $MaxRotation _2
    scoreboard players operation $MinRotation _1 += $RangeRotation _1
    scoreboard players operation $MinRotation _2 += $RangeRotation _2

# リセット
    scoreboard players reset $MaxRotation
    scoreboard players reset $RangeRotation
