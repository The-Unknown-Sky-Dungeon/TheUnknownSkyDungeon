#> lib:array/move
#
# 配列をキャッシュへ移動します。
#
# @input
#   T extends any
#   storage tusd_lib: Array: [T] @ N
#   操作する配列データ
#   score $Argument.Index Lib
#   目的の要素のindex
# @output storage lib:
#   Array: [T] @ (N - Index)
#   最後の要素が目的の要素になった配列
#   Cache: [T] @ Index
#   移動されたデータ
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 動かす回数を算出する
    execute store result score $Index _1 if data storage tusd_lib: Array[]
    scoreboard players remove $Index _1 1
    scoreboard players operation $Index _1 -= $Argument.Index Lib
# 再帰的に動かす
    execute if score $Index _1 matches 1.. run function lib:array/core/move

# リセット
    scoreboard players reset $Index
    scoreboard players reset $Argument.Index