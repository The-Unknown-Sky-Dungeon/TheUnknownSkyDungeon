#> lib:spread_entity/core/player/
#
#
#
# @within function lib:spread_entity/

#> for moving player
# @private
#declare tag SubstituteMarker

# Pos取得
    function lib:data_get/pos
# 身代わりのmarkerを召喚する
    function calc:geometory/0-0-0-0-0
# ./as_substitute_markerで対象プレイヤーを特定できるようにtag付与
    tag @s add TargetPlayer
# 飛んだ先が読み込まれてなくても大丈夫なようにSubstituteMarkerをCommandSourceStackレベルで持つ
    execute as 0-0-0-0-0 run function lib:spread_entity/core/player/as_substitute_marker
# リセット
    tag @s remove TargetPlayer