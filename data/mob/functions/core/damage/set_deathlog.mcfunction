##############################
###デスログの設定
##############################

##名前を設定
data modify storage tusd_: MobName set from entity @s CustomName

##デスログを持ってくる（ない場合は設定する）
function oh_my_dat:please
data modify storage tusd_: DeathLog set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.DeathLog
execute unless data storage tusd_: DeathLog run data modify storage tusd_: DeathLog set value '[{"translate":"%1$sは%2$sによって殺されてしまった","with":[{"selector":"@s"},{"storage":"tusd_:","nbt":"MobName","interpret":true}]}]'