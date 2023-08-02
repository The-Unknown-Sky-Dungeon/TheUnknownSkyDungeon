#> lib:parabolic_motion/core/
#
# ParabolicMotionに関するメイン処理を行います
#
# @within function lib:parabolic_motion/

#> private
# @private
    #declare score_holder $Tick
    #declare score_holder $Gravity
    #declare score_holder $XYZ
    #declare score_holder $MotionXYZ

# Oh_my_datを開く（後で元に戻す）
    function oh_my_dat:please

# 毎Tick処理を行うためNativeFlagを立てる
    execute unless entity @s[scores={NativeFlag=-2147483648..2147483647}] run scoreboard players set @s NativeFlag 0
    scoreboard players add @s NativeFlag 1
    tag @s add Parabolic
    data modify entity @s OnGround set value 0b

# 0-0-0-0-0を実行者の座標に召喚する
# 0-0-0-0-1を実行位置に召喚する
    execute at @s run function calc:geometory/0-0-0-0-0
    function calc:geometory/0-0-0-0-1

# 数値をスコアに代入する
    execute store result score $Tick _1 run data get storage tusd_lib: Argument.MotionTick
    execute store result score $Gravity _1 run data get storage tusd_lib: Argument.MotionGravity 500

# Motionを計算する
    function lib:parabolic_motion/core/calc

# Motion適用・保存する
    function lib:parabolic_motion/core/fetch

# リセット
    scoreboard players reset $Tick
    scoreboard players reset $Gravity
    scoreboard players reset $XYZ
    scoreboard players reset $MotionXYZ
    execute as 0-0-0-0-0 run function calc:geometory/return
    execute as 0-0-0-0-1 run function calc:geometory/return
    function api:oh_my_dat_cache/load