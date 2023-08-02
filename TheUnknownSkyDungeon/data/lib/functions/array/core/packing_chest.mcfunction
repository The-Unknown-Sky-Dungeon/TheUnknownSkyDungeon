#> lib:array/core/packing_chest
#
#
#
# @within function
#   lib:array/core/packing_chest
#   lib:array/packing_chest

# 個人ストレージからの移行
    data modify storage tusd_lib: Package append from storage tusd_lib: Array[-1]
    data remove storage tusd_lib: Array[-1]
# Slotの設定
    execute store result storage tusd_lib: Package[-1].Slot byte 1 run scoreboard players get $Index _1
# ループ処理
    scoreboard players set _ _1 27
    scoreboard players add $Index _1 1
    execute if score $Index _1 < _ _1 if data storage tusd_lib: Array[0] run function lib:array/core/packing_chest