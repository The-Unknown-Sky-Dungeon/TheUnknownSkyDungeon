##############################
###対象のHurtTimeをstorageに取得する
##############################
# Return
#   tusd_lib: HurtTime
#

##Oh_my_datを呼び出して最新かどうかのチェックをする
function oh_my_dat:please
execute store result score $NotLatestData _1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.HurtTime.Time set from storage tusd_lib: GameTime
execute if score $NotLatestData _1 matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.HurtTime.Data set from entity @s HurtTime

##戻りストレージ
data modify storage tusd_lib: HurtTime set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.HurtTime.Data

##リセット
scoreboard players reset $NotLatestData
function api:oh_my_dat_cache/load