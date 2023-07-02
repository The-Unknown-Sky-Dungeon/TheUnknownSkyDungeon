##############################
###MOB IDより召喚する（検索ループ2）
##############################

##Mob_IDとFunction_IDを取得する
execute store result score _ MobID run data get storage tusd_: SummonIDLayer[-1].ID

##ID(0以上)があれば気合検索
#後ほど軽量化処理を施すが今はこのままでOK
execute if score _ MobID matches 0.. run function #mob:mob/summon
execute unless entity @e[distance=..16,tag=MobLeader] run tag @e[distance=..16,tag=MobSetting] add MobLeader

##まだ残っていたら召喚する
data remove storage tusd_: SummonIDLayer[-1]
execute if data storage tusd_: SummonIDLayer[-1] run function mob:core/summon/id_check_second