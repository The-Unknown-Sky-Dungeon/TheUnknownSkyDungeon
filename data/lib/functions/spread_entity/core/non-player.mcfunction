#> lib:spread_entity/core/non-player
#
#
#
# @within function lib:spread_entity/

#> for moving player
# @private
#declare tag SubstituteMarker

# 実行座標を取得する
    function calc:geometory/0-0-0-0-0
    data modify storage tusd_lib: Pos set from entity 0-0-0-0-0 Pos
    execute as 0-0-0-0-0 run function calc:geometory/return
# 実行者をTP
    function lib:spread_entity/core/teleport