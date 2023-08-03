#> mob:core/uuid/set_uuid
#
# UUIDを設定する
#
# @within function mob:core/initial

# グローバルUUIDを増加させて割り当てる
    scoreboard players add $Global UUID 1
    scoreboard players operation @s UUID = $Global UUID

# 新規ストレージを割り当てる
    data modify storage tusd_mob: UUIDStorage append value {}

# Mobの場合はFlagをセットする
    execute if entity @s[tag=Mob] run function mob:core/uuid/set_flag