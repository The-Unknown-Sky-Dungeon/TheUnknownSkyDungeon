##############################
###対象のPosをstorageに取得する
##############################
# Return
#   tusd_lib: Pos
#

##Oh_my_datを呼び出して最新かどうかのチェックをする
function oh_my_dat:please
execute store result score $NotLatestData _1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Time set from storage tusd_api: GameTime
execute if score $NotLatestData _1 matches 1 run function lib:data_get/pos_fetch

##戻りストレージ
data modify storage tusd_lib: Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Data

##リセット
scoreboard players reset $NotLatestData
function api:oh_my_dat_cache/load