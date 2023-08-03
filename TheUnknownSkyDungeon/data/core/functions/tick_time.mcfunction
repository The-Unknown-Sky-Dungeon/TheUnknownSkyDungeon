#> core:tick_time
#
# 2TIck,4Tick,10Tick,20Tickの計測
#
# @within function core:tick

# リセット
    scoreboard players reset $Global 2Tick
    scoreboard players reset $Global 4Tick
    scoreboard players reset $Global 10Tick
    scoreboard players reset $Global 20Tick

# 追加でGame時間をストレージに保存しておく
    execute store result storage tusd_api: GameTime int 1 store result score _ _1 run time query gametime
    execute store success score $Global 2Tick if score _ _1 = _ 2Tick run scoreboard players add _ 2Tick 2
    execute store success score $Global 4Tick if score _ _1 = _ 4Tick run scoreboard players add _ 4Tick 4
    execute store success score $Global 10Tick if score _ _1 = _ 10Tick run scoreboard players add _ 10Tick 10
    execute store success score $Global 20Tick if score _ _1 = _ 20Tick run scoreboard players add _ 20Tick 20