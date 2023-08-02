#> lib:ai/change_turn/core/random
#
# ChangeTurnに関するRandom処理を行います
#
# @within function lib:ai/change_turn/core/

#> private
# @private
    #declare score_holder $Turn

# 現在のTurnを除くランダムなTurnに変える
    execute store result score $Turn _1 run function calc:random
    execute store result score $Turn _2 if data storage tusd_: AI.Turn[]
    scoreboard players remove $Turn _2 1
    scoreboard players operation $Turn _1 %= $Turn _2
    execute store result storage tusd_: AI.Exit.Loop int 1 run scoreboard players add $Turn _1 1

# リセット
    scoreboard players reset $Turn