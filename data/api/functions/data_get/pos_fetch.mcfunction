##############################
###対象のPosを0-0-0-0-0から取得する
##############################

function calc:geometory/0-0-0-0-0
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Data set from entity 0-0-0-0-0 Pos
execute as 0-0-0-0-0 run function calc:geometory/return