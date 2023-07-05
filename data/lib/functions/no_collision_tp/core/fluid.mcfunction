#> lib:no_collision_tp/core/fluid
#
# NoCollisionTPに関するメイン処理を行います(With Fluid)
#
# @within function lib:no_collision_tp/

# ブロックの中に埋もれていたらTP
    execute if block ^ ^ ^ #lib:no_collision run tp @s ^ ^ ^
    execute unless block ^ ^ ^ #lib:no_collision positioned ^ ^ ^0.5 run function lib:no_collision_tp/core/fluid