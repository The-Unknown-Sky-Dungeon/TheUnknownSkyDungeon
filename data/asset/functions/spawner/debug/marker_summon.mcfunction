#> asset:spawner/debug/marker_summon
#
# マーカースポナー召喚機構
#
# @within function asset:spawner/debug/marker_setting

# マーカーにストレージ情報をぶち込む
    execute store result score @s SpawnerHP run data get storage tusd_: Spawner.HP
    execute store result score @s SpawnerDelay run data get storage tusd_: Spawner.Delay
    data modify entity @s data set from storage tusd_: Spawner

# 見た目のItemDisplayを召喚して、そこにマーカーを騎乗させる
    summon item_display ~ ~ ~ {Tags:["Initialized","SpawnerDirection"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:spawner",Count:1b}}
    ride @s mount @e[distance=..0.01,type=item_display,tag=SpawnerDirection,limit=1]

# リセット
    data remove storage tusd_: Spawner