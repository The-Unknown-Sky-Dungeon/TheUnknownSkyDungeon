#> lib:operate_rotation/core/random
#
# OperateRotation/Randomに関するメイン処理を行います
#
# @within function lib:operate_rotation/random

#> private
# @private
    #declare score_holder $Rotation

# 0-0-0-0-0を召喚して配置する
    execute in core:system positioned 0.0 0.0 0.0 run function calc:geometory/0-0-0-0-0

# 0 ~ 36000 でランダムな値を算出して 0-0-0-0-0 の水平向きに代入する
    scoreboard players set _ Lib 36000
    execute store result score $Rotation _1 run function calc:random
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run scoreboard players operation $Rotation _1 %= _ Lib

# 0 ~ 18000 でランダムな値を算出して 0-0-0-0-0 の垂直向きに代入する
    scoreboard players set _ Lib 18000
    execute store result score $Rotation _1 run function calc:random
    scoreboard players operation $Rotation _1 %= _ Lib
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run scoreboard players remove $Rotation _1 9000

# 0-0-0-0-0の向き合わせてtpさせる
    execute at @s rotated as 0-0-0-0-0 run tp @s ~ ~ ~ ~ ~

# リセット
    execute as 0-0-0-0-0 run function calc:geometory/return
    scoreboard players reset $Rotation

