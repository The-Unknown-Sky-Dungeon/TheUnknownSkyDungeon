#> lib:forward_spreader/core/check_distance
#
# 点が中心から半径以内に存在するまで繰り返します
#
# @within function lib:forward_spreader/core/randomizer

#> _1
# @private
    #declare score_holder $Temp
    #declare score_holder $Temp2

# while ((x^2+y^2) > r^2) randomizer
    scoreboard players operation $Temp _1 = $Vec _1
    scoreboard players operation $Temp _1 *= $Vec _1

    scoreboard players operation $Temp2 _1 = $Vec _2
    scoreboard players operation $Temp2 _1 *= $Vec _2

    scoreboard players operation $Temp _1 += $Temp2 _1

    execute if score $Temp _1 > $Radius^2 _1 run function lib:forward_spreader/core/randomizer
# リセット
    scoreboard players reset $Temp _1
    scoreboard players reset $Temp2 _1