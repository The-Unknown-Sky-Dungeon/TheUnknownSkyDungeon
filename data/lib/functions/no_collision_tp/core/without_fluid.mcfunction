#> lib:no_collision_tp/core/without_fluid
#
# NoCollisionTPに関するメイン処理を行います(Without Fluid)
#
# @within function lib:no_collision_tp/

# ブロックの中に埋もれていたらTP
    execute if block ^ ^ ^ #lib:no_collision_without_fluid run tp @s ^ ^ ^
    execute unless block ^ ^ ^ #lib:no_collision_without_fluid positioned ^ ^ ^0.5 run function lib:no_collision_tp/core/without_fluid