#> lib:array/shuffle
#
# 配列の要素をシャッフルします
#
# @input
#   T extends any
#   storage tusd_lib: Array: [T] @ N
#   配列データ
# @output
#   storage tusd_lib: Array: [T] @ N
#   ランダムな順の配列
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 配列サイズを取得
    execute store result score $ListSize Lib if data storage tusd_lib: Array[]
# 初期化
    data modify storage tusd_lib: ArrayO set value []
# 再帰的にシャッフル
    function lib:array/core/shuffle
# シャッフル後のデータで上書きする
    data modify storage tusd_lib: Array set from storage tusd_lib: ArrayO
# リセット
    data remove storage tusd_lib: ArrayO
    scoreboard players reset $ListSize
    scoreboard players reset $Index