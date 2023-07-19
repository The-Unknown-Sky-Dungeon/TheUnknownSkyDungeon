#> asset:spawner/debug/marker_summon
#
# マーカースポナー召喚機構
#
# @within function asset:spawner/debug/marker_setting

# マーカーにストレージ情報をぶち込む
    execute store result score @s SpawnerHP run data get storage tusd_: Spawner.HP
    execute store result score @s SpawnerDelay run data get storage tusd_: Spawner.Delay
    data modify entity @s data set from storage tusd_: Spawner
    data modify entity @s data.Radius set value 0f

# ItemDisplayを召喚して、そこにマーカーを騎乗させる
    execute if data storage tusd_: Spawner{Grade:"Normal"} run summon item_display ~ ~ ~ {Tags:["Initialized","SpawnerDirection"],transformation:{left_rotation:[0.4247f,0.3398f,0.1759f,0.8205f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,1f],scale:[1.5f,1.5f,1.5f]},brightness:{sky:0,block:15},item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:99999,Explosion:{Type:0,Colors:[I;8058357]}}}}
    ride @s mount @e[distance=..0.01,type=item_display,tag=SpawnerDirection,limit=1]

# ブロックを設置する
    execute if data storage tusd_: Spawner{Grade:"Normal"} run setblock ~ ~ ~ magenta_glazed_terracotta[facing=east] replace

# リセット
    data remove storage tusd_: Spawner