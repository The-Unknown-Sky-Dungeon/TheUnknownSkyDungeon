#> api:player/damage/can_guard
#
# コマンドでプレイヤーに盾でガード可能なダメージを与える
#@input storage tusd_api: Damage.
#   Value : double 
#   BypassArmor : boolean
#   DeathLog : TextComponentString
#   InFront : boolean
#
# 必ず対象となるプレイヤーを実行者とすること
#@api


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
execute unless data storage tusd_api: Damage{BypassArmor:1b} store result score @s DEF run function api:player/get_armor/

##盾でガードしているかどうか
execute store result score _ UseShieldTime run time query gametime
execute if score _ UseShieldTime = @s UseShieldTime unless data storage tusd_api: Damage.InFront run scoreboard players reset _ UseShieldTime
execute if score _ UseShieldTime = @s UseShieldTime if data storage tusd_api: Damage.InFront facing entity @s feet facing ^ ^ ^-1 positioned as @s positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.415] run scoreboard players reset _ UseShieldTime

##デスログを持ってくる
data modify storage tusd_: MobName set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.Name
execute if data storage tusd_api: Damage.DeathLog run data modify storage tusd_: DeathLog set from storage tusd_api: Damage.DeathLog
execute unless data storage tusd_api: Damage.DeathLog run data modify storage tusd_: DeathLog set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.DeathLog
execute unless data storage tusd_: DeathLog run data modify storage tusd_: DeathLog set value '[{"translate":"%1$sは%2$sによって殺されてしまった","with":[{"selector":"@s"},{"storage":"tusd_:","nbt":"MobName","interpret":true}]}]'

##ダメージ計算
execute if score _ UseShieldTime matches -2147483648..2147483647 run function mob:core/damage/calc

##ダメージ演出
execute if score _ UseShieldTime matches -2147483648..2147483647 run function api:player/damage/makeup

##盾ガード演出
execute unless score _ UseShieldTime matches -2147483648..2147483647 run function api:player/damage/makeup_guard

##リセット
data remove storage tusd_api: Damage