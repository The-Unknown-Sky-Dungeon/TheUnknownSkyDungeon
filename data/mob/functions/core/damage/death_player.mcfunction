##############################
###プレイヤーがHP0以下になった際の処理
##############################

##AttackingEntityからデスログを持ってくる
execute as @e[distance=..64,tag=AttackingEntity] run function mob:core/damage/set_deathlog

##死亡メッセージを非表示にする
gamerule showDeathMessages false

##カスタム死亡メッセージを表示し、killする
tellraw @a {"storage":"tusd_:","nbt":"DeathLog","interpret":true}
kill @s

##死亡メッセージを表示に戻す
gamerule showDeathMessages true