##############################
###緩衝体力より受けるダメージを計算する
##############################

##受けたダメージを取得
execute store result score _ Damage run data get entity @s AbsorptionAmount -10
scoreboard players add _ Damage 10000000

##ダメージ計算
function mob:core/damage/calc

##緩衝体力をもとに戻す
data modify entity @s AbsorptionAmount set value 1000000f