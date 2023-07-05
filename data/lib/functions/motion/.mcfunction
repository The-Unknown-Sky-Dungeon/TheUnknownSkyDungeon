#> lib:motion/
#
# 実行座標の前方にlib: Argument.VectorMagnitudeの大きさのMotionを付与します。
#
# 実行者はPlayer以外のEntityである必要があります。
#
# ※いずれかのMotionが10以上の場合Minecraftの仕様上動作しません。
#
# @input
#   as entity
#   storage tusd_lib:
#       Argument.KnockbackResist?: boolean
#       Argument.VectorMagnitude: double
# @api

# 引数を設定
    execute unless data storage tusd_lib: Argument.KnockbackResist run data modify storage tusd_lib: Argument.KnockbackResist set value 0b

# PlayerならErrorを出力
    execute if entity @s[type=player] run tellraw @s [{"text":"MotionLibの実行者はPlayer以外のEntityである必要があります"}]
# Playerじゃなければ本処理に移行
    execute unless entity @s[type=player] run function lib:motion/core/

# リセット
    data remove storage tusd_lib: Argument