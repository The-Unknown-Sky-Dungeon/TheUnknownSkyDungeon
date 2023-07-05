#> lib:array/core/math/sub
# @within function
#   lib:array/math/sub
#   lib:array/core/math/sub

# 加算
    data modify storage tusd_lib: Array append value -1d
    execute store result score $Temp _1 run data get storage tusd_lib: ArrayA[-1] 1000
    execute store result score $Temp2 _1 run data get storage tusd_lib: ArrayB[-1] 1000
    execute store result storage tusd_lib: Array[-1] double 0.001 run scoreboard players operation $Temp _1 -= $Temp2 _1
# 末尾削除
    data remove storage tusd_lib: ArrayA[-1]
    data remove storage tusd_lib: ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage tusd_lib: ArrayA[0] unless data storage tusd_lib: ArrayB[0] run tellraw @a [{"text":"リストの要素の数が異なります。 / from lib:array/math/sub","color":"white"}]
    execute unless data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run tellraw @a [{"text":"リストの要素の数が異なります。 / from lib:array/math/sub","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage tusd_lib: ArrayA[0] if data storage tusd_lib: ArrayB[0] run function lib:array/core/math/sub