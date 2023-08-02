#> lib:array/merge
#
# 配列の各要素同士を結合します。
#
# ArrayA, ArrayBの要素の数は同一である必要があります。
#
# @input
#   T extends object
#   storage tusd_lib: ArrayA: [T] @ N
#   配列A
#   storage tusd_lib: ArrayB: [T] @ N
#   配列B
# @output
#   storage tusd_lib: MergeResult: [T] @ N
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage tusd_lib: Array

# 再帰的に動かす
    execute if data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run function lib:array/core/merge

# 結果を反転
    function lib:array/reverse
    data modify storage tusd_lib: MergeResult set from storage tusd_lib: Array

# リセット
    data remove storage tusd_lib: Array