#> mob:spawner/summon_loop
#
# 再帰的にMOB召喚
#
# @within function mob:spawner/summon

# どのMOBを召喚するかをランダムで決める
    function mob:spawner/choose_mob/

# 召喚場所に0-0-0-0-1を持っていく
    tag @s add Success
    function calc:geometory/0-0-0-0-1
    function mob:spawner/search_pos/

# MOB IDより召喚する
    execute if entity @s[tag=Success] as 0-0-0-0-0 at 0-0-0-0-1 run function mob:core/summon/id_check_first

# リセット処理
    tag @e[distance=..16] remove MobLeader
    data remove storage tusd_: SummonID

# カウントを減算して1以上ならループ処理
    execute store result storage tusd_: Spawner.SpawnCount int 0.99999 run data get storage tusd_: Spawner.SpawnCount
    execute unless data storage tusd_: Spawner{SpawnCount:0} run function mob:spawner/summon_loop
