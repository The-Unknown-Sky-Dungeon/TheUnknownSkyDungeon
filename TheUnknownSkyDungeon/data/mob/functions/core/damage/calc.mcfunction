##############################
###ダメージ計算
##############################

##ダメージ = 受けたダメージ ^ 2 / (受けたダメージ + 防具値)
#オーバーフローはしっかりと対策する
scoreboard players operation _ _1 = _ Damage
scoreboard players operation _ _1 *= _ _1
execute if score _ _1 matches ..-1 run scoreboard players set _ _1 2147483647
scoreboard players set _ _2 10
scoreboard players operation _ _2 *= @s DEF
scoreboard players operation _ Damage += _ _2
scoreboard players operation _ _1 /= _ Damage

##敵の場合はDamageスコアに加算
execute unless entity @s[type=!player,tag=!Enemy] if score @s ResistRate matches -2147483648..2147483647 run function mob:core/damage/resist/enemy_resist
execute unless entity @s[type=!player,tag=!Enemy] run scoreboard players operation @s Damage += _ _1

##プレイヤーの場合はScoreToHealthを変更
execute if entity @s[predicate=player:player] run function mob:core/damage/calc_player