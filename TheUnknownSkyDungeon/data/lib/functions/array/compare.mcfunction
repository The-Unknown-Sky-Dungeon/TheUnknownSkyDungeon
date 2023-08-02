#> lib:array/compare
#
# 配列と比較対象配列の各要素について同一であるかを比較し、その結果の配列を返します。
#
# ArrayA, ArrayBの要素の数は同一である必要があります。
#
# @input
#   T extends any
#   storage tusd_lib: ArrayA: [T] @ N
#   比較配列A
#   storage tusd_lib: ArrayB: [T] @ N
#   比較配列B
# @output
#   storage tusd_lib: CompareResult: [{ _: { _: boolean } }] @ N
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage tusd_lib: Array

# 再帰的に動かす
    execute if data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run function lib:array/core/compare

# 結果を反転
    function lib:array/reverse
    data modify storage tusd_lib: CompareResult set from storage tusd_lib: Array

# リセット
    data remove storage tusd_lib: Array
    scoreboard players reset $Temp