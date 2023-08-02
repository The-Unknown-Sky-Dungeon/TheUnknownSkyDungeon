#> lib:parabolic_motion/core/fetch
#
# ParabolicMotionに関するMotion適用処理を行います
#
# @within function lib:parabolic_motion/core/

# Motion適用
    execute store result entity @s Motion[0] double 0.001 run scoreboard players get $MotionXYZ _1
    execute store result entity @s Motion[1] double 0.001 run scoreboard players get $MotionXYZ _2
    execute store result entity @s Motion[2] double 0.001 run scoreboard players get $MotionXYZ _3

tellraw @a {"nbt":"Motion","entity":"@s"}

# Oh_my_datにMotion,Tick,Gravityを保存する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion set value {Motion:[0d,0d,0d],Tick:0,Gravity:0d}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[0] double 0.001 run scoreboard players get $MotionXYZ _1
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[1] double 0.001 run scoreboard players get $MotionXYZ _2
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[2] double 0.001 run scoreboard players get $MotionXYZ _3
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Tick set from storage tusd_lib: Argument.MotionTick
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Gravity set from storage tusd_lib: Argument.MotionGravity