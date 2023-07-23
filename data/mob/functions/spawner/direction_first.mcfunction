#> mob:spawner/direction_first
#
# 見た目のItemDisplayを回転させる
#
# @within function mob:spawner/

#>Temp
#@private
    #declare score_holder $Radius

# スコアを取ってくる
    execute store result score $Radius _1 run data get entity @s data.Radius
# SpawnerDelayの値によってRadiusの変更値を変える
    execute if score @s SpawnerDelay matches 601.. run scoreboard players add $Radius _1 2
    execute if score @s SpawnerDelay matches 401..600 run scoreboard players add $Radius _1 4
    execute if score @s SpawnerDelay matches 201..400 run scoreboard players add $Radius _1 8
    execute if score @s SpawnerDelay matches 101..200 run scoreboard players add $Radius _1 16
    execute if score @s SpawnerDelay matches ..100 run scoreboard players add $Radius _1 32
    execute if score $Radius _1 matches 360.. run scoreboard players remove $Radius _1 360
# 汎用Entityを原点にTPして、SinとCosを計算する
    execute in core:system positioned 0.0 0.0 0.0 rotated 0.0 0.0 run function calc:geometory/0-0-0-0-0
    execute store result entity 0-0-0-0-0 Rotation[0] float 1 run scoreboard players get $Radius _1
    execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^1 ~ ~
# ストレージを用意してそこに一旦代入する
    data modify storage tusd_: Spawner.Pos set value [0f,0f,0f]
    execute store result storage tusd_: Spawner.Pos[0] float 0.0001 run data get entity 0-0-0-0-0 Pos[0] 10000
    execute store result storage tusd_: Spawner.Pos[2] float 0.0001 run data get entity 0-0-0-0-0 Pos[2] 10000
# ItemDisplayのNBTに代入する
    execute on vehicle run data modify entity @s transformation.translation set from storage tusd_: Spawner.Pos
    execute on vehicle run data merge entity @s {start_interpolation:-1,interpolation_duration:2}
# data.Radiusにいまの値を保存する
    execute store result entity @s data.Radius float 1 run scoreboard players get $Radius _1
# リセット
    execute as 0-0-0-0-0 run function calc:geometory/return
    data remove storage tusd_: Spawner
    scoreboard players reset $Radius

