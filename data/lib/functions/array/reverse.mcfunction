#> lib:array/reverse
#
# 配列を反転します。
#
# @input
#   T extends any
#   storage tusd_lib: Array: [T] @ N
#   反転させる配列データ
# @output
#   storage tusd_lib: Array: [T] @ N
#   反転後の配列データ
# @api


# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 再帰的に反転する
    function lib:array/core/reverse