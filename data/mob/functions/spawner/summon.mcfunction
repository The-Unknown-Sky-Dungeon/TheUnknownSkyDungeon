#> mob:spawner/summon
#
# スポナーからMOBを召喚する
#
# @within function mob:spawner/

#>Temp
# @within function mob:spawner/**
    #declare score_holder $SpawnRange
    #declare score_holder $MaxNearbyEntities
    #declare score_holder $WeightSum
    #declare score_holder $SpawnDelay

# dataに保存してある情報を取り出す
    data modify storage tusd_: Spawner set from entity @s data

# 周囲のカスタムモブの数をカウントする
    execute store result score $SpawnRange _1 run data get storage tusd_: Spawner.SpawnRange
    execute store result score $MaxNearbyEntities _1 run data get storage tusd_: Spawner.MaxNearbyEntities
    function mob:spawner/get_from_selector/

# カウントした結果、数が少なければモブ召喚
    execute store result score $WeightSum _1 run data get storage tusd_: Spawner.WeightSum
    execute if score $MaxNearbyEntities _1 > $MaxNearbyEntities _2 run function mob:spawner/summon_loop

# 召喚クールダウンを設定する
    execute store result score $SpawnDelay _1 run data get storage tusd_: Spawner.MinDelay
    execute store result score $SpawnDelay _2 run data get storage tusd_: Spawner.MaxDelay
    scoreboard players operation $SpawnDelay _3 = $SpawnDelay _2
    scoreboard players operation $SpawnDelay _2 -= $SpawnDelay _1
    execute unless score $SpawnDelay _3 matches 0 store result score _ Random run function calc:random
    execute unless score $SpawnDelay _3 matches 0 run scoreboard players operation _ Random %= $SpawnDelay _3
    execute if score $SpawnDelay _3 matches 0 run scoreboard players set _ Random 0
    scoreboard players operation _ Random += $SpawnDelay _1
    scoreboard players operation @s SpawnerDelay = _ Random


# リセット
    execute as 0-0-0-0-1 run function calc:geometory/return
    data remove storage tusd_: Spawner
    scoreboard players reset $SpawnRange
    scoreboard players reset $MaxNearbyEntities
    scoreboard players reset $WeightSum
    scoreboard players reset $SpawnDelay