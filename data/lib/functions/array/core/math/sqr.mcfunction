#> lib:array/core/math/sqr
# @within function
#   lib:array/math/sqr
#   lib:array/core/math/sqr

# 計算/結果代入
    data modify storage tusd_lib: Array append value -1d
    execute store result score $Temp _1 run data get storage tusd_lib: CopiedArray[-1] 100
    execute store result storage tusd_lib: Array[-1] double 0.0001 run scoreboard players operation $Temp _1 *= $Temp _1

# 末尾削除
    data remove storage tusd_lib: CopiedArray[-1]
# 要素がまだあるなら再帰
    execute if data storage tusd_lib: CopiedArray[0] run function lib:array/core/math/sqr