#> lib:array/core/move
# @within function lib:array/**

scoreboard players remove $Index _1 1
data modify storage tusd_lib: Cache append from storage tusd_lib: Array[-1]
data remove storage tusd_lib: Array[-1]
execute if score $Index _1 matches 1.. run function lib:array/core/move