#> mob:core/uuid/allocate_macro
#
# ストレージを割り当てつつ、UUIDを提供する
#
# @within function mob:core/uuid/set_uuid

$data modify storage tusd_mob: UUIDStorage.$(UUID).UUID set from storage tusd_: Temp.UUID