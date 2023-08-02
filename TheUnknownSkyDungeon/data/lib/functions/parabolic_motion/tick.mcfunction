#> lib:parabolic_motion/tick
#
# 実行者のMotionを操作して放物運動をさせます(Tick処理)
#
#
# @within function mob:core/native_task/

# Oh_my_dat 呼び出し
    function api:oh_my_dat_cache/please

# 地面に付いていない場合、本処理に移る
    execute unless entity @s[nbt={OnGround:1b}] run function lib:parabolic_motion/core/tick

# 地面に付いている場合、リセット処理に移る
    execute if entity @s[nbt={OnGround:1b}] run function lib:parabolic_motion/core/finish
