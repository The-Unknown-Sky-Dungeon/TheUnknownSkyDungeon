##############################
###対象のRotationを0-0-0-0-0から取得する
##############################

function calc:geometory/0-0-0-0-0
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Rotation.Data set from entity 0-0-0-0-0 Rotation
execute as 0-0-0-0-0 run function calc:geometory/return