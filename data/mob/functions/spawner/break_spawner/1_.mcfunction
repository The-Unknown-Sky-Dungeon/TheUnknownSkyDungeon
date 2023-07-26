#> mob:spawner/break_spawner/1_
#
# スポナー再設置などの処理
#
# @within function mob:spawner/break_spawner/mined

# 減らした後のHPを表示
    scoreboard players operation _ SpawnerHP = @s SpawnerHP
    summon text_display ~ ~1 ~ {billboard:"center",shadow:1b,see_through:0b,Tags:["Mob","DamageDisplay","SpawnerHP"],brightness:{sky:15,block:10},text:'{"score":{"name":"_","objective":"SpawnerHP"},"font":"yellow_num"}',background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}

# スポナーのグレードに応じて設置
    execute if data storage tusd_: Spawner{Grade:"Normal"} run setblock ~ ~ ~ magenta_glazed_terracotta[facing=east] replace

# 破壊された時の音
    playsound minecraft:block.lodestone.break master @a[distance=..32] ~ ~ ~ 1 1 0.1
    playsound minecraft:block.end_portal_frame.fill master @a[distance=..32] ~ ~ ~ 0.5 0.5 0.01