##############################
###0000/template
##############################
## 敵モブ作成部　ここで基本設定を行う
# 敵モブのIDや名前などをここで設定する。
# このFunctionを実行することで召喚できる。

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",Tags:["Mob","Enemy","MobInit"],CanPickUpLoot:0b}
# 敵モブのID (int)
    data modify storage tusd_: Mob.ID set value 0
# 敵モブの危険度 (string)
    data modify storage tusd_: Mob.Danger set value "EASY"
# 敵モブの名前 (TextComponentString) (オプション)
    data modify storage tusd_: Mob.Name set value '{"translate":"ダミーゾンビ","color":"white"}'
# 敵モブの見た目
    # メインハンド　(Compound(Item)
        data modify storage tusd_: Mob.Mainhand set value {}
    # オフハンド　　(Compound(Item)
        data modify storage tusd_: Mob.Offhand set value {}
    # 頭
        data modify storage tusd_: Mob.Head set value {id:"minecraft:white_stained_glass",Count:1b,tag:{Unbreakable:1b}}
    # 胴体
        data modify storage tusd_: Mob.Chest set value {}
    # 脚
        data modify storage tusd_: Mob.Legs set value {}
    # 足
        data modify storage tusd_: Mob.Feet set value {}
# 敵モブの装備ドロップ率 (オプション)
    # ハンドドロップ率[メイン,オフ] ([float,float])
        data modify storage tusd_: Mob.HandDropChances set value [0f,0f]
    # 防具ドロップ率 [ブーツ,レギンス,チェスト,ヘッド] ([float,float])
        data modify storage tusd_: Mob.ArmorDropChances set value [0f,0f,0f,0f]
# 敵モブの体力 (double)
    data modify storage tusd_: Mob.Health set value 50.0d
# 敵モブの速度 (double)
    data modify storage tusd_: Mob.Speed set value 0.2d
# 敵モブの基礎攻撃力 (int)
    data modify storage tusd_: Mob.Attack set value 2
# 敵モブの防具値 (int)
    data modify storage tusd_: Mob.Defense set value 3
# 索敵範囲 (double) (オプション)
    data modify storage tusd_: Mob.FollowRange set value 25d
# ノックバック耐性 (double) (オプション)
    data modify storage tusd_: Mob.KBResist set value 0.0d

# 敵モブのAIストレージ
    data modify storage tusd_: AI set value {}


# 以下のFunctionで敵モブを設定する
    execute as @e[distance=..0.01,tag=MobInit,sort=nearest,limit=1] run function mob:core/summon/
    execute unless entity @s[nbt={UUID:[I;0,0,0,0]}] run ride @e[distance=..16,tag=MobInit,sort=nearest,limit=1] mount @s
    tag @e[distance=..16,tag=MobSetting] remove MobInit