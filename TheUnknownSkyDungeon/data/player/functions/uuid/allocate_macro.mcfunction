#> player:uuid/allocate_macro
#
# ストレージを割り当てつつ、UUIDを提供する
#
# @within function player:uuid/set_uuid

$data modify storage tusd_mob: PlayerStorage.$(UUID).UUID set from storage tusd_: Temp.UUID