#> mob:core/uuid/gc/first
#
# Tickの最初で行われるガベージコレクタ
#
# @within function mob:core/uuid/check_max_uuid

# データを設定してマクロを動かす
    execute store result storage tusd_api: Argument.UUID int 1 run scoreboard players get $Temp _2
    function mob:core/uuid/gc/macro with storage tusd_api: Argument

# スコアを減らして同じでなかったらループ
    scoreboard players remove $Temp _2 1
    execute if score $Temp _1 < $Temp _2 run function mob:core/uuid/gc/first