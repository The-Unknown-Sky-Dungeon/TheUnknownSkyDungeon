#> lib:more_directions/aec
#
# AECを召喚して、そのAECに設定したFunction群を、一時的に常時実行させる
# (パーティクル等で演出したい時におすすめ)
#
# @input
#   as entity
#   storage tusd_lib:
#       Argument.ID: int
#       Argument.Prepend?: boolean
#       Argument.Rotation: float[2]
# @api

# AECを召喚してRotationを合わせる
    summon area_effect_cloud ^ ^ ^ {Particle:"block air",NoGravity:1b,Radius:0.001f,Duration:600,Tags:["Mob","InitAEC","Initialized","DirectionAEC"]}
    data modify entity @e[distance=..0.01,tag=InitAEC,limit=1] Rotation set from storage tusd_lib: Argument.Rotation

# 本処理に移行
    execute as @e[distance=..0.01,tag=InitAEC,limit=1] run function lib:more_directions/

# リセット
    tag @e[distance=..0.01,type=area_effect_cloud] remove InitAEC
