##############################
###防御力パッシブを計算する
##############################
#必ず対象となるプレイヤーを実行者とすること
#結果は100倍で返ってくるため注意が必要

##Attributes取得
data modify storage tusd_api: Attributes set from entity @s Attributes

##Muitiply_Base
data modify storage calc: List set value []
data modify storage calc: List append from storage tusd_api: Attributes[{Name:"minecraft:generic.armor"}].Modifiers[{Operation:1}].Amount
execute store result score _ _2 run function calc:list/sum/
scoreboard players add _ _2 100

##Muitiply
data modify storage calc: List set value []
data modify storage calc: List append from storage tusd_api: Attributes[{Name:"minecraft:generic.armor"}].Modifiers[{Operation:2}].Amount
execute store result score _ _3 run function calc:list/product/

##先にリセット
data remove storage calc: List
data remove storage tusd_api: Attributes

##合算
scoreboard players set _ _1 10000
scoreboard players operation _ _1 *= _ _2
scoreboard players set _ _2 100
scoreboard players operation _ _1 /= _ _2
scoreboard players operation _ _1 /= _ _2
scoreboard players operation _ _1 *= _ _3
scoreboard players operation _ _1 /= _ _2