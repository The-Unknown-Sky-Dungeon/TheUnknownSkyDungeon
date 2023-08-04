#> mob:core/uuid/get_uuid
#
# UUIDを取得する
#
# @within function mob:core/uuid/set_uuid

# AIUtilを使用してUUIDを取得する
    data modify storage util: in set value '{"selector":"@s"}'
    function #util:resolve

# エンティティの場合は [14, 50] をスライス
    execute if entity @s[type=!player] run return run data modify storage tusd_: Temp.UUID set string storage util: out 14 50

# プレイヤーの場合は [157 + プレイヤー名の長さ * 2 , 193 + プレイヤー名の長さ * 2] をスライス
    execute store result storage tusd_: Temp.Len int 0.5 run data get storage util: out
    execute store result score $Temp _1 run data get storage tusd_: Temp.Len
    execute store result score $Temp _2 store result score $Temp _3 run scoreboard players remove $Temp _1 113
    execute store result storage tusd_: Temp.Slice.Start int 1 run scoreboard players add $Temp _2 157
    execute store result storage tusd_: Temp.Slice.End int 1 run scoreboard players add $Temp _3 193
    function mob:core/uuid/get_uuid_macro with storage tusd_: Temp.Slice