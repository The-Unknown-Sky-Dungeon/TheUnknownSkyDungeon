#> lib:array/core/compare_single
# @within function
#   lib:array/**compare_single

# 比較/結果代入
    data modify storage tusd_lib: Array append value {_:{_:-1b}}
    execute store success score $Temp _1 run data modify storage tusd_lib: CopiedArray[-1] set from storage tusd_lib: CompareTarget
    execute store success storage tusd_lib: Array[-1]._._ byte 1 if score $Temp _1 matches 0
# 末尾削除
    data remove storage tusd_lib: CopiedArray[-1]
# 要素がまだあるなら再帰
    execute if data storage tusd_lib: CopiedArray[0] run function lib:array/core/compare_single