#> lib:array/core/merge
# @within function lib:array/**merge


# 結合
    data modify storage tusd_lib: Array append from storage tusd_lib: ArrayA[-1]
    data modify storage tusd_lib: Array[-1] merge from storage tusd_lib: ArrayB[-1]
# 末尾削除
    data remove storage tusd_lib: ArrayA[-1]
    data remove storage tusd_lib: ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage tusd_lib: ArrayA[0] unless data storage tusd_lib: ArrayB[0] run tellraw @a [{"text":"リストの要素の数が異なります。 / from lib:array/merge","color":"white"}]
    execute unless data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run tellraw @a [{"text":"リストの要素の数が異なります。 / from lib:array/merge","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run function lib:array/core/merge