#> lib:array/revert
#
# 配列をキャッシュを元に復元します。
#
# @input
#   T extends any
#   storage tusd_lib: Array: [T] @ N
#   move後の配列
#   storage tusd_lib: Cache: [T] @ M
#   move時に生成される配列
# @output
#   storage tusd_lib: Array: [T] @ N + M
#   move前の配列構造
# @api


# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# Cacheを復元
    execute if data storage tusd_lib: Cache[0] run function lib:array/core/revert