#> lib:ai/change_turn/core/set
#
# ChangeTurnに関するSet処理を行います
#
# @within function lib:ai/change_turn/core/

#> private
# @private
    #declare score_holder $Turn

# 指定したTurnに変更する
    execute store result score $Turn _1 run data get storage tusd_lib: Argument.Set
    execute store result score $Turn _2 run data get storage tusd_: AI.Turn[0].Index
    scoreboard players operation $Turn _1 -= $Turn _2
    execute if score $Turn _1 matches ..-1 store result score $Turn _2 run data get storage mob_data: AI.TurnCount
    execute if score $Turn _1 matches ..-1 run scoreboard players operation $Turn _1 += $Turn _2
    execute unless score $Turn _1 matches 0 store result storage tusd_: AI.Exit.Loop int 1 run scoreboard players get $Turn _1
    execute if score $Turn _1 matches 0 run data remove storage tusd_: AI.Turn[0].Exit.Loop

# リセット
    scoreboard players reset $Turn