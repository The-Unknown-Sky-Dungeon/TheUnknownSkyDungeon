##############################
###2TIck,4Tick,10Tick,20Tickの計測
##############################
##リセット
scoreboard players reset # 2Tick
scoreboard players reset # 4Tick
scoreboard players reset # 10Tick
scoreboard players reset # 20Tick

##処理
execute store result score _ _1 run time query gametime
execute store success score # 2Tick if score _ _1 = _ 2Tick run scoreboard players add _ 2Tick 2
execute store success score # 4Tick if score _ _1 = _ 4Tick run scoreboard players add _ 4Tick 4
execute store success score # 10Tick if score _ _1 = _ 10Tick run scoreboard players add _ 10Tick 10
execute store success score # 20Tick if score _ _1 = _ 20Tick run scoreboard players add _ 20Tick 20