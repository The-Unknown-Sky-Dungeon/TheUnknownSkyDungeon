#> lib:forward_spreader/core/calc
#
# 回転行列で実行方向へ座標を補正します
#
# @within function lib:forward_spreader/core/

#> _1
# @private
    #declare score_holder $Temp

    scoreboard players set _ _1 10000
# Y` = Y * cos(pitch) - Z * sin(pitch)
    scoreboard players operation $XYZ _2 = $Vec _2
    scoreboard players operation $XYZ _2 *= $Pitch _2
    scoreboard players operation $Temp _1 = $Vec _3
    scoreboard players operation $Temp _1 *= $Pitch _1
    scoreboard players operation $XYZ _2 -= $Temp _1
# Z` = Y * sin(pitch) + Z * cos(pitch)
    scoreboard players operation $XYZ _3 = $Vec _2
    scoreboard players operation $XYZ _3 *= $Pitch _1
    scoreboard players operation $Temp _1 = $Vec _3
    scoreboard players operation $Temp _1 *= $Pitch _2
    scoreboard players operation $XYZ _3 += $Temp _1
    scoreboard players operation $XYZ _3 /= _ _1
# X` = X * cos(yaw) + Z` * sin(yaw)
    scoreboard players operation $XYZ _1 = $Vec _1
    scoreboard players operation $XYZ _1 *= $Yaw _2
    scoreboard players operation $Temp _1 = $XYZ _3
    scoreboard players operation $Temp _1 *= $Yaw _1
    scoreboard players operation $XYZ _1 += $Temp _1
# Z` = Z` * cos(yaw) - X * sin(yaw)
    scoreboard players operation $XYZ _3 *= $Yaw _2
    scoreboard players operation $Temp _1 = $Vec _1
    scoreboard players operation $Temp _1 *= $Yaw _1
    scoreboard players operation $XYZ _3 -= $Temp _1
# 係数が乗算で膨れ上がってるので除算
    scoreboard players operation $XYZ _1 /= _ _1
    scoreboard players operation $XYZ _2 /= _ _1
    scoreboard players operation $XYZ _3 /= _ _1
# リセット
    scoreboard players reset $Temp
    scoreboard players reset $CircleRandomizerMode
    scoreboard players reset $Distance
    scoreboard players reset $Diameter
    scoreboard players reset $Yaw
    scoreboard players reset $Pitch
    scoreboard players reset $Radius
    scoreboard players reset $Radius^2
    scoreboard players reset $Vec