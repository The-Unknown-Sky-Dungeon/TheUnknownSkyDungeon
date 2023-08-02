#> lib:parabolic_motion/core/calc
#
# ParabolicMotionに関する計算処理を行います
#
# @within function lib:parabolic_motion/core/

# 0-0-0-0-0 と 0-0-0-0-1 のX座標差を求め、X_Motionを求める
    execute store result score $XYZ _1 run data get entity 0-0-0-0-0 Pos[0] 1000
    execute store result score $MotionXYZ _1 run data get entity 0-0-0-0-1 Pos[0] 1000
    scoreboard players operation $MotionXYZ _1 -= $XYZ _1
    scoreboard players operation $MotionXYZ _1 /= $Tick _1

# 0-0-0-0-0 と 0-0-0-0-1 のY座標差を求め、Y_Motionを求める
    execute store result score $XYZ _2 run data get entity 0-0-0-0-0 Pos[1] 1000
    execute store result score $MotionXYZ _2 run data get entity 0-0-0-0-1 Pos[1] 1000
    scoreboard players operation $MotionXYZ _2 -= $XYZ _2
    scoreboard players operation $MotionXYZ _2 /= $Tick _1

# 0-0-0-0-0 と 0-0-0-0-1 のZ座標差を求め、Z_Motionを求める
    execute store result score $XYZ _3 run data get entity 0-0-0-0-0 Pos[2] 1000
    execute store result score $MotionXYZ _3 run data get entity 0-0-0-0-1 Pos[2] 1000
    scoreboard players operation $MotionXYZ _3 -= $XYZ _3
    scoreboard players operation $MotionXYZ _3 /= $Tick _1

# 重力加速度によるY_Motionを調整を行う
    scoreboard players operation $Gravity _1 *= $Tick _1
    scoreboard players operation $MotionXYZ _2 += $Gravity _1
