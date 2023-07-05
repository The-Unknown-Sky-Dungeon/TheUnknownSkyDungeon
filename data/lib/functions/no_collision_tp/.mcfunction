#> lib:no_collision_tp/
#
# 実行者がブロックの中に埋もれていた場合、向いている方向にワープします
#
# @input
#   as entity
#   rotation
#   storage tusd_lib:
#       Argument.WithoutFluid?: boolean
# @api

# 液体込みの判定
    execute unless data storage tusd_lib: Argument{WithoutFluid:1b} run function lib:no_collision_tp/core/fluid

# 液体抜きの判定
    execute if data storage tusd_lib: Argument{WithoutFluid:1b} run function lib:no_collision_tp/core/without_fluid

# リセット
    data remove storage tusd_lib: Argument