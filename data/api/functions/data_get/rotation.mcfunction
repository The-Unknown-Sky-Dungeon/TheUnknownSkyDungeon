##############################
###対象のRotationをstorageに取得する
##############################
# Return
#   tusd_api: Rotation
#

##Oh_my_datを呼び出して最新かどうかのチェックをする
function oh_my_dat:please
execute store result score $NotLatestData _1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Rotation.Time set from storage tusd_api: GameTime
execute if score $NotLatestData _1 matches 1 run function api:data_get/rotation_fetch

##戻りストレージ
data modify storage tusd_api: Rotation set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Rotation.Data

##リセット
scoreboard players reset $NotLatestData
function api:oh_my_dat_cache/load