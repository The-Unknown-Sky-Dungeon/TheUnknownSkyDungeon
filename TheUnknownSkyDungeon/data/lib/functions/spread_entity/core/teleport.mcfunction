#> lib:spread_entity/core/teleport
#
#
#
# @within function lib:spread_entity/core/**

#> Pos
# @private
    #declare score_holder $BoundsX
    #declare score_holder $BoundsY
    #declare score_holder $BoundsZ
    #declare score_holder $Pos
    #declare score_holder $Sub
    #declare score_holder $Add

# Pos取得
    execute store result score $Pos _1 run data get storage tusd_lib: Pos[0] 100
    execute store result score $Pos _2 run data get storage tusd_lib: Pos[1] 100
    execute store result score $Pos _3 run data get storage tusd_lib: Pos[2] 100
# 範囲取得
    execute store result score $BoundsX _1 run data get storage tusd_lib: Argument.Bounds[0][0] 100
    execute store result score $BoundsX _2 run data get storage tusd_lib: Argument.Bounds[0][1] 100
    execute store result score $BoundsY _1 run data get storage tusd_lib: Argument.Bounds[1][0] 100
    execute store result score $BoundsY _2 run data get storage tusd_lib: Argument.Bounds[1][1] 100
    execute store result score $BoundsZ _1 run data get storage tusd_lib: Argument.Bounds[2][0] 100
    execute store result score $BoundsZ _2 run data get storage tusd_lib: Argument.Bounds[2][1] 100
# X-
    execute store result score $Sub _1 run function calc:random
    scoreboard players operation $Sub _1 %= $BoundsX _1
    execute unless score $BoundsX _1 matches 0 run scoreboard players operation $Pos _1 -= $Sub _1
# X+
    execute store result score $Add _1 run function calc:random
    scoreboard players operation $Add _1 %= $BoundsX _2
    execute unless score $BoundsX _2 matches 0 run scoreboard players operation $Pos _1 += $Add _1
# Y-
    execute store result score $Sub _2 run function calc:random
    scoreboard players operation $Sub _2 %= $BoundsY _1
    execute unless score $BoundsY _1 matches 0 run scoreboard players operation $Pos _2 -= $Sub _2
# Y+
    execute store result score $Add _2 run function calc:random
    scoreboard players operation $Add _2 %= $BoundsY _2
    execute unless score $BoundsY _2 matches 0 run scoreboard players operation $Pos _2 += $Add _2
# Z-
    execute store result score $Sub _3 run function calc:random
    scoreboard players operation $Sub _3 %= $BoundsZ _1
    execute unless score $BoundsZ _1 matches 0 run scoreboard players operation $Pos _3 -= $Sub _3
# Z+
    execute store result score $Add _3 run function calc:random
    scoreboard players operation $Add _3 %= $BoundsZ _2
    execute unless score $BoundsZ _2 matches 0 run scoreboard players operation $Pos _3 += $Add _3
# Posをセット
    data modify storage tusd_lib: Pos set value [0d,0d,0d]
    execute store result storage tusd_lib: Pos[0] double 0.01 run scoreboard players get $Pos _1
    execute store result storage tusd_lib: Pos[1] double 0.01 run scoreboard players get $Pos _2
    execute store result storage tusd_lib: Pos[2] double 0.01 run scoreboard players get $Pos _3
    data modify entity @s Pos set from storage tusd_lib: Pos
# リセット
    data remove storage tusd_lib: Pos
    data remove storage tusd_lib: Argument.Bounds
    scoreboard players reset $BoundsX
    scoreboard players reset $BoundsY
    scoreboard players reset $BoundsZ
    scoreboard players reset $Pos
    scoreboard players reset $Sub
    scoreboard players reset $Add