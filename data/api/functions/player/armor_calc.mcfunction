##############################
###装備の防具値を計算する
##############################
#必ず対象となるプレイヤーを実行者とすること

##装備取得
function api:player/save_equipments

##Add
data modify storage calc: List set value []
data modify storage calc: List append from storage tusd_api: Equipments[0].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:0,Slot:"mainhand"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[1].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:0,Slot:"offhand"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[2].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:0,Slot:"feet"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[3].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:0,Slot:"legs"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[4].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:0,Slot:"chest"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[5].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:0,Slot:"head"}].Amount
execute store result score $Def _1 run function calc:list/sum/

##Muitiply_Base
data modify storage calc: List set value []
data modify storage calc: List append from storage tusd_api: Equipments[0].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:1,Slot:"mainhand"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[1].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:1,Slot:"offhand"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[2].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:1,Slot:"feet"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[3].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:1,Slot:"legs"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[4].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:1,Slot:"chest"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[5].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:1,Slot:"head"}].Amount
execute store result score $Def _2 run function calc:list/sum/
scoreboard players add $Def _2 100

##Muitiply
data modify storage calc: List set value []
data modify storage calc: List append from storage tusd_api: Equipments[0].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:2,Slot:"mainhand"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[1].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:2,Slot:"offhand"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[2].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:2,Slot:"feet"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[3].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:2,Slot:"legs"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[4].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:2,Slot:"chest"}].Amount
data modify storage calc: List append from storage tusd_api: Equipments[5].tag.AttributeModifiers[{AttributeName:"generic.armor",Operation:2,Slot:"head"}].Amount
execute store result score $Def _3 run function calc:list/product/

##合算
scoreboard players operation $Def _1 *= $Def _2
scoreboard players set $Def _2 100
scoreboard players operation $Def _1 /= $Def _2
scoreboard players operation $Def _1 /= $Def _2
scoreboard players operation $Def _1 *= $Def _3
scoreboard players operation $Def _1 /= $Def _2

##パッシブ込みの計算
execute store result score $Def _2 run function api:player/armor_modifier_calc
scoreboard players operation $Def _1 *= $Def _2

##四捨五入処理
scoreboard players set $Def _3 100
scoreboard players operation $Def _2 = $Def _1
scoreboard players operation $Def _2 %= $Def _3
execute if score $Def _2 matches 50.. run scoreboard players add $Def _1 100
scoreboard players operation $Def _1 /= $Def _3
scoreboard players operation $API Ret = $Def _1

##先にリセット
data remove storage calc: List
data remove storage tusd_api: Equipments
scoreboard players reset $Def

##戻り値
scoreboard players get $API Ret