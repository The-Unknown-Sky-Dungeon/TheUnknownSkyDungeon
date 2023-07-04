##############################
###コマンドでプレイヤーにダメージを与える
##############################
#
# Value : double 
# BypassArmor : boolean
#
#必ず対象となるプレイヤーを実行者とすること

##ストレージ検証
execute unless data storage tusd_api: Damage.Value run tellraw @a [{"text":"引数が足りません"},{"text":" Damage.Value","color":"red"}]

##HP取得
#ただし、ScoreToHealthにすでに値が入っている場合、そこから取る。
execute if entity @s[scores={ScoreToHealth=-2147483648..2147483647}] run scoreboard players operation _ HP = @s ScoreToHealth
execute unless entity @s[scores={ScoreToHealth=-2147483648..2147483647}] store result score _ HP run data get entity @s Health 100

##初期化とダメージの代入
scoreboard players reset _ Damage
execute store result score _ Damage run data get storage tusd_api: Damage.Value 10

##自身の防御力取得
scoreboard players set @s DEF 0
execute unless data storage tusd_api: Damage{BypassArmor:1b} store result score @s DEF run function api:player/armor_calc

##ダメージ計算
function mob:core/damage/calc

##ダメージ演出
function api:player/damage/makeup

##リセット
data remove storage tusd_api: Damage