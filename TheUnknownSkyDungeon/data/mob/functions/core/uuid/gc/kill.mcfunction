#> mob:core/uuid/gc/kill
#
# Kill時のガベージコレクタ
#
# @within function mob:core/garbage

# ストレージ削除マクロを動かす
    execute store result storage tusd_api: Argument.UUID int 1 run scoreboard players get @s UUID
    function mob:core/uuid/gc/macro with storage tusd_api: Argument

# 削除IDストレージにIDを受け渡す
    data modify storage tusd_: DeletedUUID append from storage tusd_api: Argument.UUID

# リセット
    data remove storage tusd_api: Argument