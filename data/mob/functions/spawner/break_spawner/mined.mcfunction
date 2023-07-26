#> mob:spawner/break_spawner/mined
#
# スポナー採掘時の処理
#
# @within function mob:spawner/break_spawner/

# HPを減らす
    scoreboard players remove @s SpawnerHP 1
# HPが0の時と1以上の時で処理を分ける
    execute if score @s SpawnerHP matches 1.. run function mob:spawner/break_spawner/1_
    execute unless score @s SpawnerHP matches 1.. run function mob:spawner/break_spawner/0
