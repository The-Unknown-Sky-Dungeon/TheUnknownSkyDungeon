#> player:uuid/set_uuid
#
# UUIDを設定する
#
# @within function mob:core/initial

# グローバルPlayerUUIDを割り当てる
    scoreboard players add $Global PlayerUUID 1
    execute store result storage tusd_api: Argument.UUIDScore int 1 run scoreboard players operation @s PlayerUUID = $Global PlayerUUID

# UUID取得
    function mob:core/uuid/get_uuid

# ストレージの割り当て
    function player:uuid/allocate_macro with storage tusd_api: Argument

# リセット
    data remove storage tusd_api: Argument