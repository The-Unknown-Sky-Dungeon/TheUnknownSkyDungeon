#> mob:core/uuid/check_max_uuid
#
# この世に存在する全てのEntityのUUIDをチェックしてガベージコレクタを行う
#
# @within function core:tick

#> Temp
# @within function mob:core/uuid/**
    #declare score_holder $Temp

# グローバルスコアを退避させつつ、最大値のスコアを確かめる
    scoreboard players set $Temp _1 0
    scoreboard players operation $Temp _2 = $Global UUID
    scoreboard players reset $Global UUID
    scoreboard players operation $Temp _1 > * UUID
# ガベージコレクタを行う
    execute if score $Temp _1 < $Temp _2 run function mob:core/uuid/gc/first
    scoreboard players operation $Global UUID = $Temp _1
# リセット
    scoreboard players reset $Temp
    data remove storage tusd_api: Argument