#> mob:spawner/required_range
#
# プレイヤーがRequiredPlayerRangeより近くにいるか判定する
#
# @within function mob:spawner/

#> Temp
#@private
    #declare score_holder $SpawnerPos
    #declare score_holder $PlayerPos
    #declare score_holder $Distance
    #declare score_holder $RequiredPlayerRange

# プレイヤーから座標をとる
    execute as @a[predicate=player:player,distance=..64,sort=nearest,limit=1] run function lib:data_get/pos
    execute store result score $PlayerPos _1 run data get storage tusd_lib: Pos[0] 10
    execute store result score $PlayerPos _2 run data get storage tusd_lib: Pos[1] 10
    execute store result score $PlayerPos _3 run data get storage tusd_lib: Pos[2] 10

# スポナーの座標データを取得
    data modify storage tusd_lib: Pos set from entity @s Pos
    execute store result score $SpawnerPos _1 run data get storage tusd_lib: Pos[0] 10
    execute store result score $SpawnerPos _2 run data get storage tusd_lib: Pos[1] 10
    execute store result score $SpawnerPos _3 run data get storage tusd_lib: Pos[2] 10

# 距離の計算
    scoreboard players operation $PlayerPos _1 -= $SpawnerPos _1
    scoreboard players operation $PlayerPos _2 -= $SpawnerPos _2
    scoreboard players operation $PlayerPos _3 -= $SpawnerPos _3
    scoreboard players operation $PlayerPos _1 *= $PlayerPos _1
    scoreboard players operation $PlayerPos _2 *= $PlayerPos _2
    scoreboard players operation $PlayerPos _3 *= $PlayerPos _3
    scoreboard players operation $Distance _1 += $PlayerPos _1
    scoreboard players operation $Distance _1 += $PlayerPos _2
    scoreboard players operation $Distance _1 += $PlayerPos _3

# 必要半径の計算
    execute store result score $RequiredPlayerRange _1 run data get entity @s data.RequiredPlayerRange 10
    scoreboard players operation $RequiredPlayerRange _1 *= $RequiredPlayerRange _1
    execute if score $Distance _1 <= $RequiredPlayerRange _1 run tag @s add Success

# リセット
    scoreboard players reset $SpawnerPos
    scoreboard players reset $PlayerPos
    scoreboard players reset $Distance
    scoreboard players reset $RequiredPlayerRange