#> asset:spawner/debug/kill_near_spawner
#
# デバッグ専用 Spawner削除コマンド
#
# @private

kill @e[distance=..10,tag=Spawner,sort=nearest,limit=1]
kill @e[distance=..10,tag=SpawnerDirection,sort=nearest,limit=1]