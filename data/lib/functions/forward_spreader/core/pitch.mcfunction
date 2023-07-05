#> lib:forward_spreader/core/pitch
#
# 実行方向のpitchからsin/cosを取得します
#
# @within function lib:forward_spreader/core/

# 汎用Entityを原点にTP
    execute in core:system positioned 0.0 0.0 0.0 rotated 0.0 0.0 run function calc:geometory/0-0-0-0-0
# pitchを代入しベクトルをnormalize
    execute store result entity 0-0-0-0-0 Rotation[0] float 1 run data get storage tusd_lib: Rotation[1]
    execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^1 ~ ~
# pitchのsin/cosを取得
    data modify storage tusd_lib: Pos set from entity 0-0-0-0-0 Pos
    execute store result score $Pitch _1 run data get storage tusd_lib: Pos[0] -10000
    execute store result score $Pitch _2 run data get storage tusd_lib: Pos[2] 10000
# リセット
    data remove storage tusd_lib: Pos