#> mob:spawner/break_spawner/0
#
# スポナー完全破壊時の処理
#
# @within function mob:spawner/break_spawner/mined

# スポナーKill
    tag @s add Garbage
    execute on vehicle run tag @s add Garbage

# 破壊時の音
    playsound minecraft:block.lodestone.break master @a[distance=..32] ~ ~ ~ 1 1 0.1
    playsound minecraft:block.end_portal_frame.fill master @a[distance=..32] ~ ~ ~ 0.5 0.5 0.01
    playsound minecraft:block.beacon.deactivate master @a[distance=..32] ~ ~ ~ 1 1 0.1
    playsound minecraft:block.beacon.deactivate master @a[distance=..32] ~ ~ ~ 1 0.975 0.1

# 破壊時のパーティクル
    particle end_rod ~-0.0 ~0.0 ~0.25 ~-4.97 ~0.0 ~1000000000.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~0.12 ~0.0 ~0.22 ~500000000.0 ~0.0 ~866025408.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~0.22 ~0.0 ~0.12 ~866025408.0 ~0.0 ~500000000.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~0.25 ~0.0 ~0.0 ~1000000000.0 ~0.0 ~4.97 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~0.22 ~0.0 ~-0.12 ~866025408.0 ~0.0 ~-500000000.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~0.12 ~0.0 ~-0.22 ~500000000.0 ~0.0 ~-866025408.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~-0.0 ~0.0 ~-0.25 ~-4.97 ~0.0 ~-1000000000.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~-0.12 ~0.0 ~-0.22 ~-500000000.0 ~0.0 ~-866025408.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~-0.22 ~0.0 ~-0.12 ~-866025408.0 ~0.0 ~-500000000.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~-0.25 ~0.0 ~0.0 ~-1000000000.0 ~0.0 ~4.97 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~-0.22 ~0.0 ~0.12 ~-866025408.0 ~0.0 ~500000000.0 0.00000000015 0 force @a[distance=..32]
    particle end_rod ~-0.12 ~0.0 ~0.22 ~-500000000.0 ~0.0 ~866025408.0 0.00000000015 0 force @a[distance=..32]
