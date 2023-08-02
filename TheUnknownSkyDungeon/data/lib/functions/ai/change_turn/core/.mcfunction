#> lib:ai/change_turn/core/
#
# ChangeTurnに関するメイン処理を行います
#
# @within function lib:ai/change_turn/

# Turnを進めるフラグを追加する
    data modify storage tusd_: AI.Turn[0].Exit.Loop set value 1b

#AI.ChangeTurnにターンを進める回数を保存する
    execute if data storage tusd_lib: Argument.Loop run data modify storage tusd_: AI.Exit.Loop set from storage tusd_lib: Argument.Loop
    execute if data storage tusd_lib: Argument.Set run function lib:ai/change_turn/core/set
    execute if data storage tusd_lib: Argument.Random run function lib:ai/change_turn/core/random

#データを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage tusd_: AI

# バグ回避のためのフラグ外し
    execute unless data storage tusd_lib: Argument.Loop unless data storage tusd_lib: Argument.Set unless data storage tusd_lib: Argument.Random run data remove storage tusd_: AI.Turn[0].Exit.Loop
