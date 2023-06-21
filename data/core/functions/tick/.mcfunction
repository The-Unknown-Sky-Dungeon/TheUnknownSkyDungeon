##############################
###毎TIck処理
##############################

##時間管理ファンクション
function core:tick_time

##MOB初期化
execute as @e[tag=!Initialized] at @s run function mob:core/initial

##MOB削除処理
execute as @e[tag=Garbage] run function mob:core/garbage