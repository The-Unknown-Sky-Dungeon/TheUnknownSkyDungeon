#> lib:spread_entity/
#
# 実行entityをBoundsの範囲内のランダムな座標へ移動させます。
#
# @input storage tusd_lib: 
#   Argument.Bounds: double[2][3]
#   X,Y,Zの-,+方向の最大移動範囲
# @api

# 引数チェック
    execute unless data storage tusd_lib: Argument.Bounds run tellraw @a [{"text":"引数が足りません","color":"white"},{"text":" Bounds","color":"red"}]
# 身代わりのMarkerを召喚
    execute if entity @s[type=!player] run function lib:spread_entity/core/non-player
    execute if entity @s[type=player] run function lib:spread_entity/core/player/
# リセット
    data remove storage tusd_lib: Argument