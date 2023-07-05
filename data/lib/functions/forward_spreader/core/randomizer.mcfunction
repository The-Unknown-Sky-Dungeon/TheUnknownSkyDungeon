#> lib:forward_spreader/core/randomizer
#
# ランダム座標生成処理
#
# @within function
#   lib:forward_spreader/core/
#   lib:forward_spreader/core/check_distance

execute store result score $Vec _1 run function calc:random
scoreboard players operation $Vec _1 %= $Diameter _1
scoreboard players operation $Vec _1 -= $Radius _1

execute store result score $Vec _2 run function calc:random
scoreboard players operation $Vec _2 %= $Diameter _1
scoreboard players operation $Vec _2 -= $Radius _1

execute if score $CircleRandomizerMode _1 matches 1 run function lib:forward_spreader/core/check_distance