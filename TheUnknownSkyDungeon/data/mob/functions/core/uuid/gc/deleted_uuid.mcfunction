#> mob:core/uuid/gc/deleted_uuid
#
# DeletedUUIDの掃除
#
# @within function mob:core/uuid/check_max_uuid

# UUIDを取り出してGlobalよりでかいものは全部削除
    execute store result score $Temp UUID run data get storage tusd_: CopyDeletedUUID[0]
    execute if score $Temp UUID < $Global UUID run data modify storage tusd_: DeletedUUID append from storage tusd_: CopyDeletedUUID[0]
    data remove storage tusd_: CopyDeletedUUID[0]
    execute if data storage tusd_: CopyDeletedUUID[0] run function mob:core/uuid/gc/deleted_uuid