#> asset:spawner/debug/marker_summon
#
# マーカースポナー召喚機構
#
# @within function asset:spawner/debug/marker_setting

#>Temp
# @within asset:spawner/debug/**
    #declare score_holder $Weight

# スポーンID配列より型を調べる
    execute unless data storage tusd_: Spawner.SpawnPotentials[0].Mob run function asset:spawner/debug/weight_sum1/
    execute if data storage tusd_: Spawner.SpawnPotentials[0].Mob run function asset:spawner/debug/weight_sum2/
    data modify storage tusd_: Spawner.WeightSum set value 0
    execute store result storage tusd_: Spawner.WeightSum int 1 run scoreboard players get $Weight _1

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
    scoreboard players reset $Weight