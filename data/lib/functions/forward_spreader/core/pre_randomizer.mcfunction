#> lib:forward_spreader/core/pre_randomizer
#
# ランダム座標生成前に半径等のデータを求めます
#
# @within function lib:forward_spreader/core/

# 半径を求める
    scoreboard players set _ _1 2
    scoreboard players operation $Radius _1 = $Diameter _1
    scoreboard players operation $Radius _1 /= _ _1
# 半径の二乗を求める
    scoreboard players operation $Radius^2 _1 = $Radius _1
    scoreboard players operation $Radius^2 _1 *= $Radius _1