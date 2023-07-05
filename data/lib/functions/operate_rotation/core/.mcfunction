#> lib:operate_rotation/core/
#
# OperateRotationに関するメイン処理を行います
#
# @within function lib:operate_rotation/

#> private
# @private
    #declare score_holder $MinRotation

# 0-0-0-0-0を召喚して配置する
    execute in core:lobby positioned 0.0 0.0 0.0 rotated as @s run function calc:geometory/0-0-0-0-0

# 絶対向き処理を行っておく
    execute if data storage tusd_lib: Argument.Absolute{Horizontal:1b} run tp 0-0-0-0-0 ~ ~ ~ 0 ~
    execute if data storage tusd_lib: Argument.Absolute{Vertical:1b} run tp 0-0-0-0-0 ~ ~ ~ ~ 0

# (Min ~ Max)で向きを設定する
    function lib:operate_rotation/core/range

# 水平合わせ
    execute store result score _ Lib run data get entity 0-0-0-0-0 Rotation[0] 100
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run scoreboard players operation _ Lib += $MinRotation _1

# 垂直合わせ
    execute store result score _ Lib run data get entity 0-0-0-0-0 Rotation[1] 100
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run scoreboard players operation _ Lib += $MinRotation _2

# 0-0-0-0-0の元にtpさせる
    execute at @s rotated as 0-0-0-0-0 run tp @s ~ ~ ~ ~ ~

# リセット
    execute as 0-0-0-0-0 run function calc:geometory/return
    scoreboard players reset $MinRotation