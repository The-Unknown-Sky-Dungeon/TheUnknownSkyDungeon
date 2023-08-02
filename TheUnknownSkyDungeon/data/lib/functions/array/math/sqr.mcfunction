#> lib:array/math/sqr
#
# 配列の各要素を、2乗した結果を返します。
#
# @input
#   storage tusd_lib: Array: [any] @ N
#   配列データ
# @output
#   storage tusd_lib: SqrResult: [double] @ N
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 移行する
    data modify storage tusd_lib: CopiedArray set from storage tusd_lib: Array
    data remove storage tusd_lib: Array

# 再帰的に動かす
    execute if data storage tusd_lib: CopiedArray[0] run function lib:array/core/math/sqr

# 結果を反転
    function lib:array/reverse
    data modify storage tusd_lib: SqrResult set from storage tusd_lib: Array

# リセット
    data remove storage tusd_lib: Array
    data remove storage tusd_lib: CopiedArray
    scoreboard players reset $Mul
    scoreboard players reset $Temp