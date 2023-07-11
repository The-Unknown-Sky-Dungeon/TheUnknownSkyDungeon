#> lib:more_directions/core/set
#
# MoreDirectionsに関するセット処理をする
#
# @within function lib:more_directions/

# 初期化処理
    scoreboard players set _ Lib -1
    function oh_my_dat:please

# 毎Tick処理を行うためNativeFlagを立てる
    execute unless entity @s[scores={NativeFlag=-2147483648..2147483647}] run scoreboard players set @s NativeFlag 0
    scoreboard players add @s NativeFlag 1
    tag @s add MoreDirect

# IDをスコアに代入して気合検索
# (後ほどスコアが1以上だった場合に変更する予定)
    execute store result score _ Lib run data get storage tusd_lib: Argument.ID
    function #asset:more_directions/set

# IDとタイマーもストレージに入れておく
    data modify storage tusd_lib: MoreDirections.ID set from storage tusd_lib: Argument.ID
    data modify storage tusd_lib: MoreDirections.Timer set from storage tusd_lib: MoreDirections.NextAct

# Oh_my_datのMoreDirectionsに追加する
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MoreDirections run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MoreDirections set value []
    execute if data storage tusd_lib: Argument{Prepend:1b} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MoreDirections prepend from storage tusd_lib: MoreDirections
    execute unless data storage tusd_lib: Argument{Prepend:1b} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MoreDirections append from storage tusd_lib: MoreDirections

# リセット
    data remove storage tusd_lib: MoreDirections
    function api:oh_my_dat_cache/load