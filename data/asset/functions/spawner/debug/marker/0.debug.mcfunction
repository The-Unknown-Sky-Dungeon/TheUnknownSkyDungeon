#> asset:spawner/debug/marker/0.debug
#
# デバッグ用のスポナー召喚用
#

# スポーンID配列
    data modify storage tusd_: Spawner.SpawnPotentials set value [[[{ID:0}]]]
# 体力 (int) ※このスポナーは何回破壊すれば完全に壊れるか
    data modify storage tusd_: Spawner.HP set value 5
# 一度に召喚する数 (int)
    data modify storage tusd_: Spawner.SpawnCount set value 3
# 動作範囲 (int)
    data modify storage tusd_: Spawner.SpawnRange set value 4
# 初回召喚時間 (int)
    data modify storage tusd_: Spawner.Delay set value 200
# 最低召喚間隔 (int)
    data modify storage tusd_: Spawner.MinDelay set value 100
# 最大召喚間隔 (int)
    data modify storage tusd_: Spawner.MaxDelay set value 400
# 近くのエンティティの最大数 (int) ※このスポナーの近くにどれくらいのカスタムモブがいる場合、動作を停止するか
    data modify storage tusd_: Spawner.MaxNearbyEntities set value 5
# この範囲にプレイヤーが存在するとき、Mobの召喚を開始する // distance <= 64
    data modify storage tusd_: Spawner.RequiredPlayerRange set value 16
# スポナーのグレード (string)
    data modify storage tusd_: Spawner.Grade set value "Normal"

function asset:spawner/debug/marker_setting