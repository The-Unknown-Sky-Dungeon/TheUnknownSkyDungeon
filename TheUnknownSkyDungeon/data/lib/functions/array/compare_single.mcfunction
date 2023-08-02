#> lib:array/compare_single
#
# 配列の各要素について比較対象と同一であるかを比較し、その結果の配列を返します。
#
# @input
#   T extends any
#   storage tusd_lib: Array: [T] @ N
#   比較配列A
#   storage tusd_lib: CompareTarget: T
#   比較配列B
# @output
#   storage tusd_lib: CompareResult: [{ _: { _: boolean } }] @ N
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 移行する
    data modify storage tusd_lib: CopiedArray set from storage tusd_lib: Array
    data remove storage tusd_lib: Array

# 再帰的に動かす
    execute if data storage tusd_lib: CopiedArray[0] run function lib:array/core/compare_single

# 結果を反転
    function lib:array/reverse
    data modify storage tusd_lib: CompareResult set from storage tusd_lib: Array

# リセット
    data remove storage tusd_lib: Array
    data remove storage tusd_lib: CopiedArray
    data remove storage tusd_lib: CompareTarget
    scoreboard players reset $Temp