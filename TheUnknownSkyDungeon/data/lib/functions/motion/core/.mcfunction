#> lib:motion/core/
#
# Motionに関するメイン処理を行います
#
# @within function lib:motion/

#> private
# @private
    #declare score_holder $VectorMagnitude
    #declare score_holder $KnockbackResist

# 必要なデータ取得
    execute store result score $VectorMagnitude _1 run data get storage tusd_lib: Argument.VectorMagnitude 100

# ノックバック耐性を計算する
    execute if data storage tusd_lib: Argument{KnockbackResist:1b} store result score $KnockbackResist _1 run attribute @s generic.knockback_resistance get 25
    execute if data storage tusd_lib: Argument{KnockbackResist:1b} if score $KnockbackResist _1 matches 1.. run function lib:motion/core/knockback_resistance

# 適用
    execute unless score $VectorMagnitude _1 matches 0 run function lib:motion/core/apply

# リセット
    scoreboard players reset $KnockbackResist
    scoreboard players reset $VectorMagnitude