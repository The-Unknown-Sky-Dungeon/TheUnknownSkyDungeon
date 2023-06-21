##############################
###MOB召喚処理
##############################

##モブID配列を持ってくる
data modify storage tusd_: SummonID set from entity @s ArmorItems[3].tag.SummonID

##MOB IDより召喚する
execute as 0-0-0-0-0 run function mob:core/summon/id_check_first

##リセット処理
tag @e[distance=..16] remove MobLeader
kill @s