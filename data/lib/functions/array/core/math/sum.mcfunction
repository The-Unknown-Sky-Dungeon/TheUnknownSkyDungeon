#> lib:array/core/math/sum
# @within function lib:array/**sum

# 取得/計算
    execute store success score $isNumeric _1 store result score $Temp _1 run data get storage tusd_lib: Array[-1] 100
    execute if score $isNumeric _1 matches 0 store result score $Temp _1 run data get storage tusd_lib: Array[-1]
    scoreboard players operation $Sum _1 += $Temp _1
# 末尾削除
    data remove storage tusd_lib: Array[-1]
# 要素がまだあるなら再帰
    execute if data storage tusd_lib: Array[0] run function lib:array/core/math/sum