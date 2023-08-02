##############################
###リストの総積を計算する
##############################
#結果は100倍で返ってくるため注意が必要

##初期化
execute store result score _ Ret run data get storage calc: List[-1] 100
scoreboard players add _ Ret 100
data remove storage calc: List[-1]
##再帰
execute if data storage calc: List[-1] run function calc:list/product/loop
##結果を100倍で返す
scoreboard players get _ Ret
