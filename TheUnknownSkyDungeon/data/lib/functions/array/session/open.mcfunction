#> lib:array/session/open
#
#
#
# @api

# セッションチェック
    execute if data storage tusd_lib: {ArrayLibSessionOpened:true} run tellraw @a [{"text":"lib:array/のセッションが正常に閉じられていません。","color":"white"}]
# 初期化
    data modify storage tusd_lib: Array set value []
    data modify storage tusd_lib: ArrayA set value []
    data modify storage tusd_lib: ArrayB set value []
    data modify storage tusd_lib: Cache set value []
    data modify storage tusd_lib: Elements set value []
    data modify storage tusd_lib: Package set value []
    data modify storage tusd_lib: CompareResult set value []
    data modify storage tusd_lib: SumResult set value 0
    data modify storage tusd_lib: MergeResult set value []
    data modify storage tusd_lib: Mul set value 1
    data modify storage tusd_lib: AddResult set value []
    data modify storage tusd_lib: MulResult set value []
    data modify storage tusd_lib: SubResult set value []
    data modify storage tusd_lib: SqrResult set value []
# セッションフラグを立てる
    data modify storage tusd_lib: ArrayLibSessionOpened set value true