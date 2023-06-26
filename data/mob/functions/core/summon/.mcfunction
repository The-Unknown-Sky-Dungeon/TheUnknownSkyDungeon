##############################
###モブ敵の召喚
##############################
#
# ID : int 
# Danger : sring
# Name : TextComponentString（オプション）
# Health : float
# Speed : float
# Attack : int
# Defense : int
# FollowRange : float（オプション）
# KBResist : float（オプション）
#

##ストレージ検証
    execute unless entity @s run tellraw @a {"text":"データを適用するEntityが存在しません\nasを利用して対象のEntityを実行者にしてください"}
    execute unless data storage tusd_: Mob.ID run tellraw @a [{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage tusd_: Mob.Danger run tellraw @a [{"text":"引数が足りません"},{"text":" Danger","color":"red"}]
    execute unless data storage tusd_: Mob.Speed run tellraw @a [{"text":"引数が足りません"},{"text":" Health","color":"red"}]
    execute unless data storage tusd_: Mob.Attack run tellraw @a [{"text":"引数が足りません"},{"text":" Attack","color":"red"}]
    execute unless data storage tusd_: Mob.Defense run tellraw @a [{"text":"引数が足りません"},{"text":" Defense","color":"red"}]

##見た目
    data modify storage tusd_: MobCreate.HandItems set value []
    data modify storage tusd_: MobCreate.HandItems append from storage tusd_: Mob.Mainhand
    data modify storage tusd_: MobCreate.HandItems append from storage tusd_: Mob.Offhand
    data modify storage tusd_: MobCreate.ArmorItems set value []
    data modify storage tusd_: MobCreate.ArmorItems append from storage tusd_: Mob.Feet
    data modify storage tusd_: MobCreate.ArmorItems append from storage tusd_: Mob.Legs
    data modify storage tusd_: MobCreate.ArmorItems append from storage tusd_: Mob.Chest
    data modify storage tusd_: MobCreate.ArmorItems append from storage tusd_: Mob.Head
    data modify entity @s HandItems set from storage tusd_: MobCreate.HandItems
    data modify entity @s ArmorItems set from storage tusd_: MobCreate.ArmorItems
    execute unless data storage tusd_: Mob.HandDropChances run data modify entity @s HandDropChances set value [0f,0f]
    execute if data storage tusd_: Mob.HandDropChances run data modify entity @s HandDropChances set from storage tusd_: Mob.HandDropChances
    execute unless data storage tusd_: Mob.ArmorDropChances run data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]
    execute if data storage tusd_: Mob.ArmorDropChances run data modify entity @s ArmorDropChances set from storage tusd_: Mob.ArmorDropChances

##Attribute
    data modify storage tusd_: Attributes[{Name:"generic.max_health"}].Base set value 1024d
    data modify entity @s Health set value 0.01f
    data modify entity @s AbsorptionAmount set value 1000000f
    data modify storage tusd_: Attributes[{Name:"generic.attack_damage"}].Base set value 0.00001d
    data modify storage tusd_: Attributes[{Name:"generic.movement_speed"}].Base set from storage tusd_: Mob.Speed
    execute unless data storage tusd_: Mob.FollowRange run data modify storage tusd_: Attributes[{Name:"generic.follow_range"}].Base set value 32d
    execute if data storage tusd_: Mob.FollowRange run data modify storage tusd_: Attributes[{Name:"generic.follow_range"}].Base set from storage tusd_: Mob.FollowRange
    execute unless data storage tusd_: Mob.KBResist run data modify storage tusd_: Attributes[{Name:"generic.attack_knockback"}].Base set value 0.0d
    execute if data storage tusd_: Mob.KBResist run data modify storage tusd_: Attributes[{Name:"generic.attack_knockback"}].Base set from storage tusd_: Mob.KBResist
#ノックバックに関しては自分で設定すること
    data modify entity @s Attributes set from storage tusd_: Attributes
    execute if data storage tusd_: Mob.Name run data modify entity @s CustomName set from storage tusd_: Mob.Name

##スコア適用
    execute store result score @s HPMax run data get storage tusd_: Mob.Health 10
    scoreboard players operation @s HP = @s HPMax
    execute store result score @s ATK run data get storage tusd_: Mob.Attack
    execute store result score @s DEF run data get storage tusd_: Mob.Defense
    execute store result score @s MobID run data get storage tusd_: Mob.ID
    scoreboard players set @s Invincible 0

##チーム加入
    execute if entity @s[tag=Enemy] run team join Enemy
    execute if entity @s[tag=Friend] run team join Friend

##防具値と防具強度が0になるように設定
    attribute @s generic.armor modifier add 0-0-0-0-1 "防具値0" -1.0 multiply
    attribute @s generic.armor_toughness modifier add 0-0-0-0-2 "防具強度0" -1.0 multiply

##MOBUUIDを提供
    function mob:core/summon/set_uuid

##頭の上にDangerのテキストディスプレイを呼ぶ
    summon text_display ~ ~ ~ {billboard:"center",shadow:1b,see_through:0b,Tags:["Mob","DangerDisplay"],brightness:{sky:15,block:10},text:'{"text":""}',background:0}
    execute if data storage tusd_: Mob{Danger:"EASY"} run data merge entity @e[distance=..0.01,tag=DangerDisplay,limit=1] {text:'{"text":"EASY","color":"green","bold":true}',transformation:{translation:[0f,1f,0f],scale:[1f,1f,1f]}}
    execute if data storage tusd_: Mob{Danger:"NORMAL"} run data merge entity @e[distance=..0.01,tag=DangerDisplay,limit=1] {text:'{"text":"NORMAL","color":"blue","bold":true}',transformation:{translation:[0f,1f,0f],scale:[1f,1f,1f]}}
    execute if data storage tusd_: Mob{Danger:"HARD"} run data merge entity @e[distance=..0.01,tag=DangerDisplay,limit=1] {text:'{"text":"HARD","color":"red","bold":true}',transformation:{translation:[0f,1f,0f],scale:[1f,1f,1f]}}
    execute if data storage tusd_: Mob{Danger:"LUNATIC"} run data merge entity @e[distance=..0.01,tag=DangerDisplay,limit=1] {text:'[{"text":"T","color":"#AA3BFF","bold":true,"obfuscated":true},{"text":"LUNATIC","color":"#AA3BFF","bold":true,"obfuscated":false},{"text":"T","color":"#AA3BFF","bold":true,"obfuscated":true}]',transformation:{translation:[0f,1f,0f],scale:[1f,1f,1f]}}
    execute if data storage tusd_: Mob{Danger:"CHAOS"} run data merge entity @e[distance=..0.01,tag=DangerDisplay,limit=1] {text:'[{"text":"T","color":"#5D337D","bold":true,"obfuscated":true},{"text":"T","color":"#5D337D","bold":true,"obfuscated":true},{"text":"CHAOS","color":"#5D337D","bold":true,"obfuscated":false},{"text":"T","color":"#5D337D","bold":true,"obfuscated":true},{"text":"T","color":"#5D337D","bold":true,"obfuscated":true}]',transformation:{translation:[0f,1f,0f],scale:[1f,1f,1f]}}
    ride @e[distance=..0.01,tag=DangerDisplay,limit=1] mount @s

##Oh_my_datを渡す
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob set from storage tusd_: Mob
    execute if data storage tusd_: AI run tag @s add CustomAI
    execute if data storage tusd_: AI.Attack run tag @s add Call_Attack
    execute if data storage tusd_: AI.Death run tag @s add Call_Death
    execute if data storage tusd_: AI.Damage run tag @s add Call_Damage
    execute if data storage tusd_: AI run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage tusd_: AI

##一個タグを残す
    tag @s add MobSetting

##リセット
    data remove storage tusd_: Mob
    data remove storage tusd_: MobCreate
    data remove storage tusd_: AI