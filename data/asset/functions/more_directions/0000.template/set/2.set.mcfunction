#> asset:more_directions/0000.template/set/2.set
#
# MoreDirectionsを設定時に呼び出されるFunciton
# ※ここで登録処理を行います
#
#

# 実行回数を設定する
    data modify storage tusd_lib: MoreDirections.Count set value 15

# 何Tickごとに実行するかを設定する
    data modify storage tusd_lib: MoreDirections.NextAct set value 1