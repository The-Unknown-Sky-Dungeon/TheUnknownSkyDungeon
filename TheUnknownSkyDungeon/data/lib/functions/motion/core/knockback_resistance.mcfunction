#> lib:motion/core/knockback_resistance
#
#
#
# @within function lib:motion/core/

#> private
# @private
#declare score_holder $Calc

# 100からノックバック耐性を引いた値を出す
    scoreboard players set $Calc _1 100
    scoreboard players operation $Calc _1 -= $KnockbackResist _1
    scoreboard players operation $Calc _1 >< $KnockbackResist _1
# $VectorMagnitudeの数値ととノックバック耐性をかける
    scoreboard players operation $VectorMagnitude _1 *= $KnockbackResist _1
# 100で割る
    scoreboard players set _ _1 100
    scoreboard players operation $VectorMagnitude _1 /= _ _1

# 計算用スコアホルダーをリセット
    scoreboard players reset $Calc