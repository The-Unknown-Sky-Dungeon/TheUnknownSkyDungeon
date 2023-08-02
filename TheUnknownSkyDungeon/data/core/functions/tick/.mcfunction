##############################
###毎TIck処理
##############################

##時間管理ファンクション
function core:tick_time

##スポナー処理
execute as @e[tag=Spawner] at @s run function mob:spawner/

##MOB初期化
execute as @e[tag=!Initialized] at @s run function mob:core/initial

##MOB AIの実行
execute as @e[tag=Mob,tag=CustomAI] at @s run function mob:core/ai/

##Playerダメージ表示
execute as @a[predicate=player:player,scores={Damage=-2147483648..2147483647}] at @s run function mob:core/damage/show_damage_player

##Mob tick
execute as @e[tag=Mob] at @s run function mob:core/tick

##MOB削除処理
execute as @e[tag=Garbage] run function mob:core/garbage