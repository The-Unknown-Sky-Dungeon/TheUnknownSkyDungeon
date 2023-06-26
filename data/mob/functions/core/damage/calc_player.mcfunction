##############################
###ダメージ計算（プレイヤー）
##############################

##Damageを100倍値にしてScoreToHealthに代入する
scoreboard players set _ _2 10
scoreboard players operation _ _2 *= _ _1
execute store result score @s ScoreToHealth run scoreboard players operation _ HP -= _ _2
execute if score _ HP matches ..0 run function mob:core/damage/death_player

##デスログリセット
data remove storage tusd_: DeathLog
data remove storage tusd_: MobName