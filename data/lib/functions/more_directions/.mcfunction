#> lib:more_directions/
#
# 実行者に一時的に設定したFunction群を常時実行させる
# (パーティクル等で演出したい時におすすめ)
#
# @input
#   as entity
#   storage tusd_lib:
#       Argument.ID: int
#       Argument.Prepend?: boolean
# @api

# 本処理に移行
    function lib:more_directions/core/set

# リセット
    data remove storage tusd_lib: Argument
 