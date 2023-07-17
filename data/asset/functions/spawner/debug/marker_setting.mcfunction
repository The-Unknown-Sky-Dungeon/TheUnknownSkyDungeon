#> asset:spawner/debug/marker_setting
#
# マーカースポナー召喚機構
#
# @within function asset:spawner/debug/marker/**

# マーカー召喚
    execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Invulnerable:1b,Tags:["Initialized","Spawner","SpawnerInit"]}

# マーカーを実行者に変更
    execute as @e[distance=..0.867,type=marker,tag=SpawnerInit,limit=1] at @s run function asset:spawner/debug/marker_summon