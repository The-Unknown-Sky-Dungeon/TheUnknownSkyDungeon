#> lib:array/mask_inverted
#
# 対象配列の要素iについてマスク配列の要素iが**falseである場合**はMaskElementに置換した配列を返します。
#
# Array, Masksの要素の数は同一である必要があります。
#
# @input
#   T extends any
#   storage tusd_lib: Array: [T] @ N
#   対象配列
#   storage tusd_lib: Masks: [boolean | { _: { _: boolean } }] @ N
#   マスク配列
#   storage tusd_lib: MaskElement: T | null
#   マスク後の要素 / 未指定の場合、マスクされた要素は削除されます。
# @output
#   storage tusd_lib: Array: [T] @ ..N
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 移行する
    data modify storage tusd_lib: CopiedArray set from storage tusd_lib: Array
    data modify storage tusd_lib: Array set value []

# 再帰的に動かす
    execute if data storage tusd_lib: CopiedArray[0] if data storage tusd_lib: Masks[0] run function lib:array/core/mask_inverted

# 結果を反転
    function lib:array/reverse

# リセット
    data remove storage tusd_lib: Mask
    data remove storage tusd_lib: Masks
    data remove storage tusd_lib: MaskElement
    data remove storage tusd_lib: CopiedArray