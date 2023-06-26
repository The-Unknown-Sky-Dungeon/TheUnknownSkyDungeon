##############################
###MOB初期化処理
##############################

##自然スポーンは全て倒す！
execute if entity @s[type=#mob:natural,tag=] run tag @s add Garbage

##モブ召喚
execute if entity @s[tag=Spawn] run function mob:core/summon/summon_id

#ゾンビ増援制御
attribute @s[type=zombie] zombie.spawn_reinforcements base set 0.0
data remove entity @s[type=zombie] Attributes[{Name:"minecraft:zombie.spawn_reinforcements"}].Modifiers

#デバッグ用コード
tag @s remove MobSetting

tag @s add Initialized