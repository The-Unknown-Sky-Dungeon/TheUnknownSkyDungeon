#> lib:more_directions/core/act
#
# MoreDirectionsに関する実行処理をする
#
# @within function lib:more_directions/core/tick

# 初期化処理
    scoreboard players set _ Lib -1
    scoreboard players set _ Calc -1

# IDをスコアに代入して気合検索
# (後ほどスコアが1以上だった場合に変更する予定)
    execute store result score _ Lib run data get storage tusd_lib: MoreDirections[0].ID
    execute store result score _ Calc run data get storage tusd_lib: MoreDirections[0].Count
    function #asset:more_directions/act

# カウンターを下げて、タイマーを戻す
    execute store result storage tusd_lib: MoreDirections[0].Count int 0.99999 run data get storage tusd_lib: MoreDirections[0].Count
    data modify storage tusd_lib: MoreDirections[0].Timer set from storage tusd_lib: MoreDirections[0].NextAct

# カウンターがゼロの場合、最初のリストにある処理を全て取り除く
    execute if data storage tusd_lib: MoreDirections[{Count:0}] run data remove storage tusd_lib: MoreDirections[0]

# MoreDirecitonsのストレージが空になったら、終了処理をする
    execute unless data storage tusd_lib: MoreDirections[0] run scoreboard players remove @s NativeFlag 1
    execute unless data storage tusd_lib: MoreDirections[0] run tag @s remove MoreDirect

# DirectionAECならキル
    execute unless data storage tusd_lib: MoreDirections[0] if entity @s[tag=DirectionAEC] run tag @s add Garbage