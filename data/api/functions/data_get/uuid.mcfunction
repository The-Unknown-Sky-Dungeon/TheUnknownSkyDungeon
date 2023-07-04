##############################
###対象のUUIDをstorageに取得する
##############################
# Return
#   tusd_api: UUID
#

##Oh_my_datを呼び出して最新かどうかのチェックをする
function oh_my_dat:please
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.UUID.Data run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.UUID.Data set from entity @s UUID

##戻りストレージ
data modify storage tusd_api: UUID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.UUID.Data

##リセット
function api:oh_my_dat_cache/load