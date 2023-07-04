##############################
###装備の防具値を計算して取得する
##############################
#必ず対象となるプレイヤーを実行者とすること

##Oh_my_datを呼び出して最新かどうかのチェックをする
function oh_my_dat:please
execute store result score $NotLatestData _1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.GetArmor.Time set from storage tusd_api: GameTime
execute if score $NotLatestData _1 matches 1 run function api:player/get_armor/calc
execute unless score $NotLatestData _1 matches 1 store result score $API Ret run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.GetArmor.Ret

##リセット
scoreboard players reset $NotLatestData
function api:oh_my_dat_cache/load

##戻り値
tellraw @a {"score":{"name": "$API", "objective": "Ret"}}
scoreboard players get $API Ret