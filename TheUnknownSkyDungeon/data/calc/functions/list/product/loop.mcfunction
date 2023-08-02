##############################
###リストの総積を計算する
##############################
execute store result score _ Calc run data get storage calc: List[-1] 100
scoreboard players add _ Calc 100
scoreboard players operation _ Ret *= _ Calc
scoreboard players set _ Calc 100
scoreboard players operation _ Ret /= _ Calc
data remove storage calc: List[-1]
execute if data storage calc: List[-1] run function calc:list/product/loop