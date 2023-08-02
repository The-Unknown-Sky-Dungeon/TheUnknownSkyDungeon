#> lib:parabolic_motion/core/tick
#
# ParabolicMotionに関するTickメイン処理を行います
#
# @within function lib:parabolic_motion/tick

#> private
# @private
    #declare score_holder $Gravity
    #declare score_holder $MotionXYZ

# Y_Motionの計算
    execute store result score $MotionXYZ _2 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[1] 1000
    execute store result score $Gravity _1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Gravity 1000
    scoreboard players operation $MotionXYZ _2 -= $Gravity _1
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[1] double 0.001 run scoreboard players get $MotionXYZ _2

# Motion適用
    data modify entity @s Motion set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion

# 初期フラグ外し
    tag @s remove ParabolicStart

# リセット
    scoreboard players reset $Gravity
    scoreboard players reset $MotionXYZ