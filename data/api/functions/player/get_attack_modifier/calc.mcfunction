##############################
###攻撃力パッシブを計算する
##############################
#必ず対象となるプレイヤーを実行者とすること
#結果は100倍で返ってくるため注意が必要

##Attributes取得
data modify storage tusd_api: Attributes set from entity @s Attributes

##Muitiply_Base
data modify storage calc: List set value []
data modify storage calc: List append from storage tusd_api: Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Operation:1}].Amount
execute store result score $ATKModifier _2 run function calc:list/sum/
scoreboard players add $ATKModifier _2 100

##Muitiply
data modify storage calc: List set value []
data modify storage calc: List append from storage tusd_api: Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Operation:2}].Amount
execute store result score $ATKModifier _3 run function calc:list/product/

##先にリセット
data remove storage calc: List
data remove storage tusd_api: Attributes

##合算
scoreboard players set $ATKModifier _1 10000
scoreboard players operation $ATKModifier _1 *= $ATKModifier _2
scoreboard players set $ATKModifier _2 100
scoreboard players operation $ATKModifier _1 /= $ATKModifier _2
scoreboard players operation $ATKModifier _1 /= $ATKModifier _2
scoreboard players operation $ATKModifier _1 *= $ATKModifier _3
scoreboard players operation $ATKModifier _1 /= $ATKModifier _2

##Oh_my_datに保存しておく
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.GetAttackModifier.Ret int 1 run scoreboard players operation $API Ret = $ATKModifier _1

##リセット
scoreboard players reset $ATKModifier