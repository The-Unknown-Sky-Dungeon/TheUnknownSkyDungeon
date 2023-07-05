#> lib:array/math/scalar_multiply
#
# 配列の各要素を、Mulで乗算した結果を返します。
#
# @input
#   storage tusd_lib: Array: [any] @ N
#   配列データ
#   storage tusd_lib: Mul: double
#   係数
# @output
#   storage tusd_lib: MulResult: [double] @ N
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# Mulを取得する
    execute store result score $Mul _1 run data get storage tusd_lib: Mul 100

# 移行する
    data modify storage tusd_lib: CopiedArray set from storage tusd_lib: Array
    data remove storage tusd_lib: Array

# 再帰的に動かす
    execute if data storage tusd_lib: CopiedArray[0] run function lib:array/core/math/scalar_multiply

# 結果を反転
    function lib:array/reverse
    data modify storage tusd_lib: MulResult set from storage tusd_lib: Array

# リセット
    data remove storage tusd_lib: Array
    data remove storage tusd_lib: CopiedArray
    data remove storage tusd_lib: Mul
    scoreboard players reset $Mul
    scoreboard players reset $Temp