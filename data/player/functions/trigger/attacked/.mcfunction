##############################
###ダメージを与えてきたMOBの気合検索
##############################

## tag付け
tag @s add NowTarget
## 気合検索
execute as @e[distance=..64,team=Enemy] run function player:trigger/attacked/search/1
## tag外し
tag @s remove NowTarget

##ダメージを与える
#function player:trigger/attacked/damage

## 検索tag外し
tag @e[distance=..64,tag=AttagkingEntity] remove AttackingEntity

##リセット
advancement revoke @s only player:hurt_player