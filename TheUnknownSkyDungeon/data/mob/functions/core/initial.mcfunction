#> mob:core/initial
#
# MOB初期化処理
#
# @within function core:tick

# 自然スポーンは全て倒す！
    execute if entity @s[type=#lib:living,tag=] run tag @s add Garbage

# MOBタグ付きもしくはPlayerには個人ストレージを提供
    execute unless score @s UUID matches -2147483648..2147483647 unless entity @s[tag=!Mob,type=!player] run function mob:core/uuid/set_uuid

# モブ召喚
    execute if entity @s[tag=Spawn] run function mob:core/summon/summon_id

# ゾンビ増援制御
    attribute @s[type=zombie] zombie.spawn_reinforcements base set 0.0
    data remove entity @s[type=zombie] Attributes[{Name:"minecraft:zombie.spawn_reinforcements"}].Modifiers

# NativeFlag初期化
    execute unless entity @s[scores={NativeFlag=-2147483648..2147483647}] run scoreboard players set @s NativeFlag 0

# 召喚タグの削除
    tag @s remove MobSetting

    tag @s add Initialized