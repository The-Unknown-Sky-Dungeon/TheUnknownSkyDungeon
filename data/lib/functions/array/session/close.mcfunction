#> lib:array/session/close
#
#
#
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:false} run tellraw @a [{"text":"lib:array/のセッションは既に閉じられています。","color":"white"}]
# リセット
    data remove storage tusd_lib: Cache
    data remove storage tusd_lib: Array
    data remove storage tusd_lib: ArrayA
    data remove storage tusd_lib: ArrayB
    data remove storage tusd_lib: Elements
    data remove storage tusd_lib: Package
    data remove storage tusd_lib: CompareResult
    data remove storage tusd_lib: SumResult
    data remove storage tusd_lib: MergeResult
    data remove storage tusd_lib: Mul
    data remove storage tusd_lib: AddResult
    data remove storage tusd_lib: MulResult
    data remove storage tusd_lib: SubResult
    data remove storage tusd_lib: SqrResult
# セッションフラグを消す
    data modify storage tusd_lib: ArrayLibSessionOpened set value false