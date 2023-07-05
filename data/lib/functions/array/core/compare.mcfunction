#> lib:array/core/compare
# @within function
#   lib:array/**compare

# 比較/結果代入
    data modify storage tusd_lib: Array append value {_:{_:-1b}}
    execute store success score $Temp _1 run data modify storage tusd_lib: ArrayA[-1] set from storage tusd_lib: ArrayB[-1]
    execute store success storage tusd_lib: Array[-1]._._ byte 1 if score $Temp _1 matches 0
# 末尾削除
    data remove storage tusd_lib: ArrayA[-1]
    data remove storage tusd_lib: ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage tusd_lib: ArrayA[0] unless data storage tusd_lib: ArrayB[0] run tellraw @a [{"text":"リストの要素の数が異なります。 / from lib:array/compare","color":"white"}]
    execute unless data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run tellraw @a [{"text":"リストの要素の数が異なります。 / from lib:array/compare","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run function lib:array/core/compare