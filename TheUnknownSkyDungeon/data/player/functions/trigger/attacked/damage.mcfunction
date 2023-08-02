##############################
###プレイヤーにダメージを与える
##############################

##HP取得
#ただし、ScoreToHealthにすでに値が入っている場合、そこから取る。
execute if entity @s[scores={ScoreToHealth=-2147483648..2147483647}] run scoreboard players operation _ HP = @s ScoreToHealth
execute unless entity @s[scores={ScoreToHealth=-2147483648..2147483647}] store result score _ HP run data get entity @s Health 100

##敵の攻撃力取得
scoreboard players operation _ Damage = @e[distance=..64,tag=AttackingEntity,limit=1] ATK
scoreboard players set _ _1 10
scoreboard players operation _ Damage *= _ _1
##自身の防御力取得
execute store result score @s DEF run function api:player/get_armor/
##ダメージ計算
function mob:core/damage/calc