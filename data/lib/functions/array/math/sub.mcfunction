#> lib:array/math/sub
#
# 2つの配列の各要素について、値を減算した結果を返します。
#
# ArrayA, ArrayBの要素の数は同一である必要があります。
#
# @input
#   T extends any
#   storage tusd_lib: ArrayA: [Numeric] @ N
#   減算元(左)配列
#   storage tusd_lib: ArrayB: [Numeric] @ N
#   減算(右)配列
# @output
#   storage tusd_lib: SubResult: [double] @ N
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage tusd_lib: Array

# 再帰的に動かす
    execute if data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run function lib:array/core/math/sub

# 結果を反転
    function lib:array/reverse
    data modify storage tusd_lib: SubResult set from storage tusd_lib: Array

# リセット
    data remove storage tusd_lib: Array
    scoreboard players reset $Temp
    scoreboard players reset $Temp2