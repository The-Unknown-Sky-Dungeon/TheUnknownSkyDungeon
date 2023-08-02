##############################
###0000/template
##############################
## 敵モブ作成部　ここで基本設定を行う
# 敵モブのIDや名前などをここで設定する。
# このFunctionを実行することで召喚できる。

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",Tags:["Mob","Enemy","MobInit","CustomAI","DeathAI"],CanPickUpLoot:0b}
# 敵モブのID (int)
    data modify storage tusd_: Mob.ID set value 0
# 敵モブの危険度 (string)
    data modify storage tusd_: Mob.Danger set value "LUNATIC"
# 敵モブの名前 (TextComponentString) (オプション)
    data modify storage tusd_: Mob.Name set value '{"translate":"ダミーゾンビ","color":"white"}'
# 敵モブの見た目 (オプション)
    # メインハンド (Compound(Item))
        data modify storage tusd_: Mob.Mainhand set value {}
    # オフハンド (Compound(Item))
        data modify storage tusd_: Mob.Offhand set value {}
    # 頭 (Compound(Item))
        data modify storage tusd_: Mob.Head set value {id:"minecraft:white_stained_glass",Count:1b,tag:{Unbreakable:1b}}
    # 胴体 (Compound(Item))
        data modify storage tusd_: Mob.Chest set value {}
    # 脚 (Compound(Item))
        data modify storage tusd_: Mob.Legs set value {}
    # 足 (Compound(Item))
        data modify storage tusd_: Mob.Feet set value {}
# 敵モブの装備ドロップ率 (オプション)
    # ハンドドロップ率[メイン,オフ] (float[2])
        data modify storage tusd_: Mob.HandDropChances set value [0f,0f]
    # 防具ドロップ率  [ブーツ,レギンス,チェスト,ヘッド] (float[4]])
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

# デスログ (TextComponentString) (オプション)
   data modify storage tusd_: Mob.DeathLog set value '[{"translate":"%1$sは%2$sによってダミーにされてしまった","with":[{"selector":"@s"},{"storage":"tusd_:","nbt":"MobName","interpret":true}]}]'

# 敵モブのAIストレージ
    data modify storage tusd_: AI set value {Death:[{ID:[0,2]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:60,Current:30},Loop:{Max:1,Current:1},Call:[{ID:[0,1]}]}]},{Index:2,Skill:[{Interval:{Min:10,Max:30,Current:15},Loop:{Max:1,Current:1},Call:[{ID:[0,2]}]}]}]}


# 以下の処理で敵モブを設定する
    execute as @e[distance=..0.01,tag=MobInit,sort=nearest,limit=1] run function mob:core/summon/
    execute if entity @s[tag=TargetEntity] run ride @e[distance=..16,tag=MobInit,sort=nearest,limit=1] mount @s
    tag @e[distance=..16,tag=MobSetting] remove MobInit