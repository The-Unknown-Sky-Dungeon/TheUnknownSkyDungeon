#> mob:spawner/break_spawner/
#
# スポナー破壊時の処理
#
# @within function mob:spawner/

# dataに保存してある情報を取り出す
    data modify storage tusd_: Spawner set from entity @s data

# 基本的にはありえないけど、採掘時のみカウントダウンが進むようにする
    execute unless entity @e[distance=..1,type=item,nbt={Item:{tag:{ExplodedSpawner:1b}}}] run function mob:spawner/break_spawner/mined
    execute if entity @e[distance=..1,type=item,nbt={Item:{tag:{ExplodedSpawner:1b}}}] run function mob:spawner/break_spawner/exploded

# リセット
    data remove storage tusd_: Spawner