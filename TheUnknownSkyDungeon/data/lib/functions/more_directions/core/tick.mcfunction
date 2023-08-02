#> lib:more_directions/core/tick
#
# MoreDirectionsに関するTickメイン処理をする
#
# @within function mob:core/native_task/

# 初期化処理
    function oh_my_dat:please

# Oh_my_datから取ってくる
    data modify storage tusd_lib: MoreDirections set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MoreDirections

# カウントを下げる
    execute store result storage tusd_lib: MoreDirections[0].Timer int 0.99999 run data get storage tusd_lib: MoreDirections[0].Timer

# Timerが0の時、処理を実行
    execute if data storage tusd_lib: MoreDirections[{Timer:0}] run function lib:more_directions/core/act

# Oh_my_datに戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MoreDirections set from storage tusd_lib: MoreDirections

# リセット
    data remove storage tusd_lib: MoreDirections