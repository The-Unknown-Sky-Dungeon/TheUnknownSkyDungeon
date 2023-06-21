##############################
###ダメージ計算
##############################

##ダメージ = 受けたダメージ ^ 2 / (受けたダメージ + 防具値)
#オーバーフローはしっかりと対策する
scoreboard players operation _ _1 = _ Damage
scoreboard players operation _ _1 *= _ _1
execute if score _ _1 matches ..-1 run scoreboard players set _ _1 2147483647
scoreboard players operation _ Damage += @s DEF
scoreboard players operation _ _1 /= _ Damage

##敵の場合はダメージを保存
execute if entity @s[tag=Enemy] run scoreboard players operation @s Damage += _ _1