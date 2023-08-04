#> mob:core/uuid/set_uuid
#
# UUIDを設定する
#
# @within function mob:core/initial

# グローバルUUIDを割り当てる
# グローバルUUIDと削除IDストレージから取り出したIDを比較して小さい方を割り当てる
    execute store result score $Temp UUID run data get storage tusd_: DeletedUUID[0]
    execute if score $Temp UUID matches 0 store result score $Temp UUID run scoreboard players add $Global UUID 1
    data remove storage tusd_: DeletedUUID[0]
    execute store result storage tusd_api: Argument.UUIDScore int 1 run scoreboard players operation @s UUID = $Temp UUID

# Flagをセットする
    function mob:core/uuid/set_flag

# UUID取得
    function mob:core/uuid/get_uuid

# ストレージの割り当て
    function mob:core/uuid/allocate_macro with storage tusd_api: Argument

# リセット
    scoreboard players reset $Temp
    data remove storage tusd_: Temp
    data remove storage tusd_api: Argument