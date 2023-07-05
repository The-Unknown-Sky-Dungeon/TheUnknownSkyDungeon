#> lib:array/core/picks
#
# 配列の要素を再帰的に抜き取る
#
# @within function
#   lib:array/picks
#   lib:array/core/picks

# 前の添字と今の添字を取得する
    execute store result score $Index _1 run data get storage tusd_lib: Picks[-1]
    execute store result score $Cur _1 run data get storage tusd_lib: Picks[-2]
# 前の添字を削除する
    data remove storage tusd_lib: Picks[-1]
# 前の添字と今の添字から動かすべき距離を算出する
    scoreboard players operation $Index _1 -= $Cur _1
    scoreboard players remove $Index _1 1
# その分だけ動かす
    execute if score $Index _1 matches 1.. run function lib:array/core/move
# 最後の要素をElementsに移す
    execute if score $Index _1 matches 0.. run data modify storage tusd_lib: Elements append from storage tusd_lib: Array[-1]
    execute if score $Index _1 matches 0.. run data remove storage tusd_lib: Array[-1]
# 添字が二つ以上残ってるなら繰り返す
    execute if data storage tusd_lib: Picks[-2] run function lib:array/core/picks