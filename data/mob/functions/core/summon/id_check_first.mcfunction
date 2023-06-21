##############################
###MOB IDより召喚する（検索ループ1）
##############################

##リセット処理
tag @s remove MobLeader

##一段階分を取り出してID検索を行う
data modify storage tusd_: SummonIDLayer set from storage tusd_: SummonID[0]
execute if data storage tusd_: SummonIDLayer[-1] run function mob:core/summon/id_check_second
data remove storage tusd_: SummonID[0]
tag @e[distance=..16,tag=MobSetting] remove MobSetting

##IDがまだ残っていたらMobLeaderのタグを持つモブにループ実行させる。
execute if data storage tusd_: SummonID[0] as @e[distance=..16,tag=MobLeader,limit=1] run function mob:core/summon/id_check_first